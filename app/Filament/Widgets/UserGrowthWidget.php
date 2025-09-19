<?php

namespace App\Filament\Widgets;

use App\Models\User;
use Filament\Widgets\ChartWidget;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class UserGrowthWidget extends ChartWidget
{
    protected static ?int $sort = 4;
    protected int | string | array $columnSpan = 'full';

    protected function getData(): array
    {
        $user = Auth::user();

        // Only Super Admin and Admin can see user growth data
        if (!$user->hasRole(['super_admin', 'admin'])) {
            return [
                'datasets' => [],
                'labels' => [],
            ];
        }

        $data = $this->getUserGrowthData();

        return [
            'datasets' => [
                [
                    'label' => 'New Users',
                    'data' => $data['users'],
                    'backgroundColor' => 'rgba(59, 130, 246, 0.1)',
                    'borderColor' => 'rgb(59, 130, 246)',
                    'fill' => true,
                ],
            ],
            'labels' => $data['labels'],
        ];
    }

    protected function getType(): string
    {
        return 'line';
    }

    protected function getOptions(): array
    {
        return [
            'responsive' => true,
            'maintainAspectRatio' => false,
            'scales' => [
                'y' => [
                    'beginAtZero' => true,
                ],
            ],
            'plugins' => [
                'legend' => [
                    'display' => true,
                ],
            ],
        ];
    }

    private function getUserGrowthData(): array
    {
        // Get user growth for the last 30 days
        $users = User::select(
                DB::raw('DATE(created_at) as date'),
                DB::raw('COUNT(*) as count')
            )
            ->where('created_at', '>=', now()->subDays(30))
            ->groupBy('date')
            ->orderBy('date')
            ->get();

        $labels = [];
        $userCounts = [];

        // Fill in missing dates with 0
        for ($i = 29; $i >= 0; $i--) {
            $date = now()->subDays($i)->format('M j');
            $labels[] = $date;

            $userData = $users->firstWhere('date', now()->subDays($i)->format('Y-m-d'));
            $userCounts[] = $userData ? $userData->count : 0;
        }

        return [
            'labels' => $labels,
            'users' => $userCounts,
        ];
    }
}

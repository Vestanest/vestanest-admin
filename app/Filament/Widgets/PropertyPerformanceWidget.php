<?php

namespace App\Filament\Widgets;

use App\Models\Property;
use App\Models\PropertyView;
use App\Models\Inquiry;
use Filament\Widgets\ChartWidget;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class PropertyPerformanceWidget extends ChartWidget
{
    protected static ?int $sort = 3;
    protected int | string | array $columnSpan = 'full';

    protected function getData(): array
    {
        $user = Auth::user();

        // Get property performance data based on user role
        if ($user->hasRole(['super_admin', 'admin'])) {
            $data = $this->getSystemPropertyData();
        } elseif ($user->hasRole('agent')) {
            $data = $this->getAgentPropertyData($user);
        } else {
            $data = $this->getBasicPropertyData();
        }

        return [
            'datasets' => [
                [
                    'label' => 'Property Views',
                    'data' => $data['views'],
                    'backgroundColor' => 'rgba(59, 130, 246, 0.5)',
                    'borderColor' => 'rgb(59, 130, 246)',
                ],
                [
                    'label' => 'Inquiries',
                    'data' => $data['inquiries'],
                    'backgroundColor' => 'rgba(16, 185, 129, 0.5)',
                    'borderColor' => 'rgb(16, 185, 129)',
                ],
            ],
            'labels' => $data['labels'],
        ];
    }

    protected function getType(): string
    {
        return 'bar';
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
        ];
    }

    private function getSystemPropertyData(): array
    {
        $properties = Property::withCount(['views', 'inquiries'])
            ->orderBy('views_count', 'desc')
            ->limit(10)
            ->get();

        return [
            'labels' => $properties->pluck('title')->toArray(),
            'views' => $properties->pluck('views_count')->toArray(),
            'inquiries' => $properties->pluck('inquiries_count')->toArray(),
        ];
    }

    private function getAgentPropertyData($user): array
    {
        $properties = Property::where('agent_id', $user->id)
            ->withCount(['views', 'inquiries'])
            ->orderBy('views_count', 'desc')
            ->limit(10)
            ->get();

        return [
            'labels' => $properties->pluck('title')->toArray(),
            'views' => $properties->pluck('views_count')->toArray(),
            'inquiries' => $properties->pluck('inquiries_count')->toArray(),
        ];
    }

    private function getBasicPropertyData(): array
    {
        $properties = Property::withCount(['views', 'inquiries'])
            ->orderBy('views_count', 'desc')
            ->limit(5)
            ->get();

        return [
            'labels' => $properties->pluck('title')->toArray(),
            'views' => $properties->pluck('views_count')->toArray(),
            'inquiries' => $properties->pluck('inquiries_count')->toArray(),
        ];
    }
}

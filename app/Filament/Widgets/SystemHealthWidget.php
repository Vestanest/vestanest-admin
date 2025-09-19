<?php

namespace App\Filament\Widgets;

use App\Models\User;
use App\Models\Property;
use App\Models\Inquiry;
use App\Models\ActivityLog;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Illuminate\Support\Facades\DB;

class SystemHealthWidget extends BaseWidget
{
    protected static ?int $sort = 1;
    protected int | string | array $columnSpan = 'full';

    protected function getStats(): array
    {
        return [
            Stat::make('System Health', $this->getSystemHealthScore())
                ->description('Overall system performance')
                ->descriptionIcon('heroicon-m-heart')
                ->color($this->getHealthColor()),

            Stat::make('Database Size', $this->getDatabaseSize())
                ->description('Total database size')
                ->descriptionIcon('heroicon-m-server')
                ->color('info'),

            Stat::make('Active Sessions', $this->getActiveSessions())
                ->description('Current user sessions')
                ->descriptionIcon('heroicon-m-users')
                ->color('success'),

            Stat::make('Error Rate', $this->getErrorRate())
                ->description('Last 24 hours')
                ->descriptionIcon('heroicon-m-exclamation-triangle')
                ->color($this->getErrorRateColor()),
        ];
    }

    private function getSystemHealthScore(): string
    {
        $score = 95; // Base score

        // Check for issues
        $inactiveUsers = User::where('is_active', false)->count();
        $totalUsers = User::count();

        if ($totalUsers > 0) {
            $inactivePercentage = ($inactiveUsers / $totalUsers) * 100;
            $score -= min($inactivePercentage * 0.5, 20);
        }

        // Check for recent errors in activity log
        $recentErrors = ActivityLog::where('created_at', '>=', now()->subHours(24))
            ->where('event', 'error')
            ->count();

        $score -= min($recentErrors * 2, 15);

        return max($score, 0) . '%';
    }

    private function getHealthColor(): string
    {
        $score = (int) str_replace('%', '', $this->getSystemHealthScore());

        if ($score >= 90) return 'success';
        if ($score >= 70) return 'warning';
        return 'danger';
    }

    private function getDatabaseSize(): string
    {
        try {
            $size = DB::select("SELECT ROUND(SUM(data_length + index_length) / 1024 / 1024, 2) AS 'size' FROM information_schema.tables WHERE table_schema = DATABASE()")[0]->size ?? 0;
            return $size . ' MB';
        } catch (\Exception $e) {
            return 'N/A';
        }
    }

    private function getActiveSessions(): int
    {
        try {
            return DB::table('sessions')->where('last_activity', '>', now()->subMinutes(30)->timestamp)->count();
        } catch (\Exception $e) {
            return 0;
        }
    }

    private function getErrorRate(): string
    {
        $totalActivities = ActivityLog::where('created_at', '>=', now()->subHours(24))->count();
        $errors = ActivityLog::where('created_at', '>=', now()->subHours(24))
            ->where('event', 'error')
            ->count();

        if ($totalActivities === 0) return '0%';

        $rate = ($errors / $totalActivities) * 100;
        return round($rate, 1) . '%';
    }

    private function getErrorRateColor(): string
    {
        $rate = (float) str_replace('%', '', $this->getErrorRate());

        if ($rate <= 1) return 'success';
        if ($rate <= 5) return 'warning';
        return 'danger';
    }
}

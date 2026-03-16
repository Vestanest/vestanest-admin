<?php

namespace App\Filament\Pages;

use App\Filament\Widgets\PropertyPerformanceWidget;
use App\Filament\Widgets\QuickActionsWidget;
use App\Filament\Widgets\RecentActivityWidget;
use App\Filament\Widgets\RoleManagementWidget;
use App\Filament\Widgets\StatsOverviewWidget;
use App\Filament\Widgets\SystemHealthWidget;
use App\Filament\Widgets\UserGrowthWidget;
use Filament\Pages\Dashboard as BaseDashboard;
use Illuminate\Support\Facades\Auth;

class Dashboard extends BaseDashboard
{
    protected static ?string $navigationIcon = 'heroicon-o-home';

    public function getWidgets(): array
    {
        $user = Auth::user();
        $widgets = [
            QuickActionsWidget::class,
            StatsOverviewWidget::class,
        ];

        // Super Admin gets all widgets
        if ($user->hasRole('super_admin')) {
            $widgets = array_merge($widgets, [
                SystemHealthWidget::class,
                RoleManagementWidget::class,
                PropertyPerformanceWidget::class,
                UserGrowthWidget::class,
                RecentActivityWidget::class,
            ]);
        }

        // Admin gets most widgets except user growth
        if ($user->hasRole('admin')) {
            $widgets = array_merge($widgets, [
                PropertyPerformanceWidget::class,
                RecentActivityWidget::class,
            ]);
        }

        // Agent gets limited widgets
        if ($user->hasRole('agent')) {
            $widgets = array_merge($widgets, [
                PropertyPerformanceWidget::class,
            ]);
        }

        return $widgets;
    }

    public function getColumns(): int|string|array
    {
        return 2;
    }

    public function getTitle(): string
    {
        $user = Auth::user();

        if ($user->hasRole('super_admin')) {
            return 'Super Admin Dashboard';
        }

        if ($user->hasRole('admin')) {
            return 'Admin Dashboard';
        }

        if ($user->hasRole('agent')) {
            return 'Agent Dashboard';
        }

        return 'Dashboard';
    }
}

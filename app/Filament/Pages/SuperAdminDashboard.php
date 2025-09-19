<?php

namespace App\Filament\Pages;

use App\Filament\Widgets\StatsOverviewWidget;
use App\Filament\Widgets\RecentActivityWidget;
use App\Filament\Widgets\PropertyPerformanceWidget;
use App\Filament\Widgets\UserGrowthWidget;
use App\Filament\Widgets\QuickActionsWidget;
use App\Filament\Widgets\SystemHealthWidget;
use App\Filament\Widgets\RoleManagementWidget;
use Filament\Pages\Page;
use Illuminate\Support\Facades\Auth;

class SuperAdminDashboard extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-cog-6-tooth';
    protected static string $view = 'filament.pages.super-admin-dashboard';
    protected static ?string $title = 'Super Admin Control Center';
    protected static ?string $navigationLabel = 'System Control';
    protected static ?int $navigationSort = -1;

    public static function canAccess(): bool
    {
        return Auth::user()?->hasRole('super_admin') ?? false;
    }

    public function getWidgets(): array
    {
        return [
            StatsOverviewWidget::class,
            SystemHealthWidget::class,
            RoleManagementWidget::class,
            RecentActivityWidget::class,
            PropertyPerformanceWidget::class,
            UserGrowthWidget::class,
            QuickActionsWidget::class,
        ];
    }

    public function getColumns(): int | string | array
    {
        return 2;
    }
}

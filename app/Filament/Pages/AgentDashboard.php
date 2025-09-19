<?php

namespace App\Filament\Pages;

use App\Filament\Widgets\StatsOverviewWidget;
use App\Filament\Widgets\PropertyPerformanceWidget;
use App\Filament\Widgets\QuickActionsWidget;
use App\Filament\Widgets\AgentInquiriesWidget;
use App\Filament\Widgets\AgentScheduleWidget;
use Filament\Pages\Page;
use Illuminate\Support\Facades\Auth;

class AgentDashboard extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-home';
    protected static string $view = 'filament.pages.agent-dashboard';
    protected static ?string $title = 'Agent Dashboard';
    protected static ?string $navigationLabel = 'My Dashboard';
    protected static ?int $navigationSort = 1;

    public static function canAccess(): bool
    {
        return Auth::user()?->hasRole('agent') ?? false;
    }

    public function getWidgets(): array
    {
        return [
            StatsOverviewWidget::class,
            AgentInquiriesWidget::class,
            AgentScheduleWidget::class,
            PropertyPerformanceWidget::class,
            QuickActionsWidget::class,
        ];
    }

    public function getColumns(): int | string | array
    {
        return 2;
    }
}

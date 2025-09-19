<?php

namespace App\Filament\Widgets;

use Filament\Widgets\Widget;
use Illuminate\Support\Facades\Auth;
use Filament\Actions\Action;
use Filament\Actions\Concerns\InteractsWithActions;
use Filament\Actions\Contracts\HasActions;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;

class QuickActionsWidget extends Widget implements HasForms, HasActions
{
    use InteractsWithActions, InteractsWithForms;

    protected static string $view = 'filament.widgets.quick-actions-widget';
    protected static ?int $sort = 5;
    protected int | string | array $columnSpan = 'full';

    public function getActions(): array
    {
        $user = Auth::user();
        $actions = [];

        // Super Admin and Admin actions
        if ($user->hasRole(['super_admin', 'admin'])) {
            $actions = array_merge($actions, [
                Action::make('createProperty')
                    ->label('Add Property')
                    ->icon('heroicon-m-plus')
                    ->color('success')
                    ->url(route('filament.admin.resources.properties.create')),

                Action::make('createUser')
                    ->label('Add User')
                    ->icon('heroicon-m-user-plus')
                    ->color('info')
                    ->url(route('filament.admin.resources.users.create')),

                Action::make('viewInquiries')
                    ->label('View Inquiries')
                    ->icon('heroicon-m-envelope')
                    ->color('warning')
                    ->url(route('filament.admin.resources.inquiries.index')),
            ]);
        }

        // Agent-specific actions
        if ($user->hasRole('agent')) {
            $actions = array_merge($actions, [
                Action::make('myProperties')
                    ->label('My Properties')
                    ->icon('heroicon-m-home')
                    ->color('primary')
                    ->url(route('filament.admin.resources.properties.index', [
                        'tableFilters' => ['agent_id' => ['value' => $user->id]]
                    ])),

                Action::make('myInquiries')
                    ->label('My Inquiries')
                    ->icon('heroicon-m-envelope')
                    ->color('info')
                    ->url(route('filament.admin.resources.inquiries.index')),

                Action::make('scheduleViewing')
                    ->label('Schedule Viewing')
                    ->icon('heroicon-m-calendar-days')
                    ->color('success')
                    ->url(route('filament.admin.resources.schedule-viewings.index')),
            ]);
        }

        // All roles can access these
        $actions = array_merge($actions, [
            Action::make('viewProperties')
                ->label('Browse Properties')
                ->icon('heroicon-m-home')
                ->color('primary')
                ->url(route('filament.admin.resources.properties.index')),
        ]);

        return $actions;
    }
}

<?php

namespace App\Filament\Widgets;

use App\Models\Inquiry;
use App\Models\NewsletterSubscription;
use App\Models\Property;
use App\Models\PropertyView;
use App\Models\ScheduleViewing;
use App\Models\User;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Illuminate\Support\Facades\Auth;

class StatsOverviewWidget extends BaseWidget
{
    protected static ?int $sort = 1;

    protected function getStats(): array
    {
        $user = Auth::user();

        // Super Admin & Admin: 4 Key System Metrics
        if ($user->hasRole(['super_admin', 'admin'])) {
            return [
                Stat::make('Total Users', User::count())
                    ->description('Registered users')
                    ->descriptionIcon('heroicon-m-users')
                    ->color('info')
                    ->chart([7, 3, 4, 5, 6, 3, 5, 3]),

                Stat::make('Total Properties', Property::count())
                    ->description('All listings')
                    ->descriptionIcon('heroicon-m-home')
                    ->color('primary')
                    ->chart([15, 4, 10, 2, 12, 4, 12]),

                Stat::make('Active Subscribers', NewsletterSubscription::where('is_active', true)->count())
                    ->description('Newsletter reach')
                    ->descriptionIcon('heroicon-m-envelope')
                    ->color('success'),

                Stat::make('Pending Inquiries', Inquiry::where('status', 'new')->count())
                    ->description('Needs attention')
                    ->descriptionIcon('heroicon-m-bell')
                    ->color('warning'),
            ];
        }

        // Agent: 4 Key Personal Metrics
        if ($user->hasRole('agent')) {
            return [
                Stat::make('My Properties', Property::where('agent_id', $user->id)->count())
                    ->description('Active listings')
                    ->descriptionIcon('heroicon-m-home')
                    ->color('primary'),

                Stat::make('Total Views', PropertyView::whereIn('property_id', $user->properties->pluck('id'))->count())
                    ->description('Across all properties')
                    ->descriptionIcon('heroicon-m-eye')
                    ->color('info'),

                Stat::make('Pending Inquiries', Inquiry::whereHas('property', function ($q) use ($user) {
                    $q->where('agent_id', $user->id);
                })->where('status', 'new')->count())
                    ->description('New leads')
                    ->descriptionIcon('heroicon-m-user-group')
                    ->color('warning'),

                Stat::make('Scheduled Viewings', ScheduleViewing::whereHas('property', function ($q) use ($user) {
                    $q->where('agent_id', $user->id);
                })->where('preferred_date', '>=', now())->count())
                    ->description('Upcoming appointments')
                    ->descriptionIcon('heroicon-m-calendar')
                    ->color('success'),
            ];
        }

        return [];
    }
}

<?php

namespace App\Filament\Widgets;

use App\Models\Property;
use App\Models\User;
use App\Models\Inquiry;
use App\Models\Review;
use App\Models\ContactMessage;
use App\Models\NewsletterSubscription;
use App\Models\PropertyView;
use App\Models\ScheduleViewing;
use App\Models\ContactAgent;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Illuminate\Support\Facades\Auth;

class StatsOverviewWidget extends BaseWidget
{
    protected static ?int $sort = 1;

    protected function getStats(): array
    {
        $user = Auth::user();
        $stats = [];

        // Super Admin and Admin can see all stats
        if ($user->hasRole(['super_admin', 'admin'])) {
            $stats = array_merge($stats, $this->getSystemStats());
        }

        // Agent-specific stats
        if ($user->hasRole('agent')) {
            $stats = array_merge($stats, $this->getAgentStats($user));
        }

        // All roles can see basic property stats
        $stats = array_merge($stats, $this->getPropertyStats($user));

        return $stats;
    }

    private function getSystemStats(): array
    {
        return [
            Stat::make('Total Users', User::count())
                ->description('Registered users')
                ->descriptionIcon('heroicon-m-users')
                ->color('info'),

            Stat::make('Active Users', User::where('is_active', true)->count())
                ->description('Currently active')
                ->descriptionIcon('heroicon-m-check-circle')
                ->color('success'),

            Stat::make('Total Properties', Property::count())
                ->description('All properties')
                ->descriptionIcon('heroicon-m-home')
                ->color('primary'),

            Stat::make('Featured Properties', Property::where('is_featured', true)->count())
                ->description('Premium listings')
                ->descriptionIcon('heroicon-m-star')
                ->color('warning'),
        ];
    }

    private function getAgentStats($user): array
    {
        return [
            Stat::make('My Properties', Property::where('agent_id', $user->id)->count())
                ->description('Properties I manage')
                ->descriptionIcon('heroicon-m-home')
                ->color('primary'),

            Stat::make('My Inquiries', Inquiry::whereHas('property', function($query) use ($user) {
                $query->where('agent_id', $user->id);
            })->count())
                ->description('Inquiries for my properties')
                ->descriptionIcon('heroicon-m-envelope')
                ->color('info'),

            Stat::make('Scheduled Viewings', ScheduleViewing::whereHas('property', function($query) use ($user) {
                $query->where('agent_id', $user->id);
            })->count())
                ->description('Upcoming viewings')
                ->descriptionIcon('heroicon-m-calendar-days')
                ->color('success'),
        ];
    }

    private function getPropertyStats($user): array
    {
        $baseStats = [
            Stat::make('Available Properties', Property::where('status', 'available')->count())
                ->description('Ready for viewing')
                ->descriptionIcon('heroicon-m-check-circle')
                ->color('success'),

            Stat::make('Pending Inquiries', Inquiry::where('status', 'new')->count())
                ->description('Awaiting response')
                ->descriptionIcon('heroicon-m-clock')
                ->color('warning'),
        ];

        // Super Admin and Admin can see additional stats
        if ($user->hasRole(['super_admin', 'admin'])) {
            $baseStats = array_merge($baseStats, [
                Stat::make('Newsletter Subscribers', NewsletterSubscription::where('is_active', true)->count())
                    ->description('Active subscribers')
                    ->descriptionIcon('heroicon-m-envelope')
                    ->color('info'),

                Stat::make('Property Views Today', PropertyView::whereDate('viewed_at', today())->count())
                    ->description('Today\'s views')
                    ->descriptionIcon('heroicon-m-eye')
                    ->color('primary'),
            ]);
        }

        return $baseStats;
    }
}

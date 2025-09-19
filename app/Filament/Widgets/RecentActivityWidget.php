<?php

namespace App\Filament\Widgets;

use App\Models\ActivityLog;
use App\Models\Inquiry;
use App\Models\Property;
use App\Models\Review;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;

class RecentActivityWidget extends BaseWidget
{
    protected static ?int $sort = 2;
    protected int | string | array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        $user = Auth::user();

        return $table
            ->query($this->getQuery($user))
            ->columns([
                Tables\Columns\TextColumn::make('description')
                    ->label('Activity')
                    ->searchable()
                    ->limit(50)
                    ->weight('bold'),

                Tables\Columns\TextColumn::make('log_name')
                    ->label('Type')
                    ->badge()
                    ->color(fn (string $state): string => match ($state) {
                        'property' => 'success',
                        'user' => 'info',
                        'inquiry' => 'warning',
                        'review' => 'primary',
                        default => 'gray',
                    }),

                Tables\Columns\TextColumn::make('event')
                    ->badge()
                    ->color(fn (string $state): string => match ($state) {
                        'created' => 'success',
                        'updated' => 'warning',
                        'deleted' => 'danger',
                        default => 'gray',
                    }),

                Tables\Columns\TextColumn::make('causer.name')
                    ->label('User')
                    ->searchable()
                    ->placeholder('System'),

                Tables\Columns\TextColumn::make('created_at')
                    ->label('Time')
                    ->dateTime('M j, Y g:i A')
                    ->sortable(),
            ])
            ->defaultSort('created_at', 'desc')
            ->paginated([10, 25, 50])
            ->defaultPaginationPageOption(10);
    }

    private function getQuery($user): Builder
    {
        $query = ActivityLog::query();

        // Super Admin and Admin can see all activities
        if ($user->hasRole(['super_admin', 'admin'])) {
            return $query;
        }

        // Agent can only see activities related to their properties
        if ($user->hasRole('agent')) {
            return $query->where(function($q) use ($user) {
                $q->where('log_name', 'property')
                  ->whereHas('subject', function($subQuery) use ($user) {
                      $subQuery->where('agent_id', $user->id);
                  });
            });
        }

        // Regular users see no activity logs
        return $query->whereRaw('1 = 0');
    }
}

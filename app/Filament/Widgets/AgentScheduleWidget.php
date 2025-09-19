<?php

namespace App\Filament\Widgets;

use App\Models\ScheduleViewing;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;

class AgentScheduleWidget extends BaseWidget
{
    protected static ?int $sort = 3;
    protected int | string | array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        $user = Auth::user();

        return $table
            ->query(
                ScheduleViewing::query()
                    ->whereHas('property', function($query) use ($user) {
                        $query->where('agent_id', $user->id);
                    })
                    ->with('property')
            )
            ->columns([
                Tables\Columns\TextColumn::make('property.title')
                    ->label('Property')
                    ->searchable()
                    ->sortable()
                    ->weight('bold'),

                Tables\Columns\TextColumn::make('full_name')
                    ->label('Client')
                    ->searchable()
                    ->sortable(),

                Tables\Columns\TextColumn::make('email')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),

                Tables\Columns\TextColumn::make('phone_number')
                    ->label('Phone')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),

                Tables\Columns\TextColumn::make('preferred_date')
                    ->label('Date')
                    ->date('M j, Y')
                    ->sortable(),

                Tables\Columns\TextColumn::make('preferred_time')
                    ->label('Time')
                    ->searchable(),

                Tables\Columns\TextColumn::make('created_at')
                    ->label('Requested')
                    ->dateTime('M j, Y g:i A')
                    ->sortable(),
            ])
            ->actions([
                Tables\Actions\Action::make('view')
                    ->icon('heroicon-m-eye')
                    ->url(fn (ScheduleViewing $record): string => route('filament.admin.resources.schedule-viewings.view', $record)),

                Tables\Actions\Action::make('contact')
                    ->icon('heroicon-m-phone')
                    ->color('success')
                    ->action(function (ScheduleViewing $record) {
                        // This could trigger an email or phone call action
                        // For now, just show a notification
                        $this->notify('success', 'Contact information displayed');
                    }),
            ])
            ->defaultSort('preferred_date', 'asc')
            ->paginated([5, 10, 25])
            ->defaultPaginationPageOption(5);
    }
}

<?php

namespace App\Filament\Widgets;

use App\Models\Inquiry;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;

class AgentInquiriesWidget extends BaseWidget
{
    protected static ?int $sort = 2;
    protected int | string | array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        $user = Auth::user();

        return $table
            ->query(
                Inquiry::query()
                    ->whereHas('property', function($query) use ($user) {
                        $query->where('agent_id', $user->id);
                    })
                    ->with(['property', 'user'])
            )
            ->columns([
                Tables\Columns\TextColumn::make('property.title')
                    ->label('Property')
                    ->searchable()
                    ->sortable()
                    ->weight('bold'),

                Tables\Columns\TextColumn::make('user.name')
                    ->label('Client')
                    ->searchable()
                    ->sortable(),

                Tables\Columns\TextColumn::make('message')
                    ->label('Inquiry')
                    ->limit(50)
                    ->searchable(),

                Tables\Columns\BadgeColumn::make('status')
                    ->colors([
                        'danger' => 'new',
                        'warning' => 'contacted',
                        'success' => 'scheduled',
                        'info' => 'completed',
                    ]),

                Tables\Columns\TextColumn::make('created_at')
                    ->label('Received')
                    ->dateTime('M j, Y g:i A')
                    ->sortable(),
            ])
            ->actions([
                Tables\Actions\Action::make('view')
                    ->icon('heroicon-m-eye')
                    ->url(fn (Inquiry $record): string => route('filament.admin.resources.inquiries.edit', $record)),

                Tables\Actions\Action::make('respond')
                    ->icon('heroicon-m-chat-bubble-left-right')
                    ->color('success')
                    ->visible(fn (Inquiry $record): bool => $record->status === 'new')
                    ->action(function (Inquiry $record) {
                        $record->update(['status' => 'contacted']);
                    }),
            ])
            ->defaultSort('created_at', 'desc')
            ->paginated([5, 10, 25])
            ->defaultPaginationPageOption(5);
    }
}

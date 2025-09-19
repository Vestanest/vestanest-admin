<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ScheduleViewingResource\Pages;
use App\Filament\Resources\ScheduleViewingResource\RelationManagers;
use App\Models\ScheduleViewing;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ScheduleViewingResource extends Resource
{
    protected static ?string $model = ScheduleViewing::class;

    protected static ?string $navigationIcon = 'heroicon-o-calendar-days';

    protected static ?string $navigationGroup = 'Communications';

    protected static ?int $navigationSort = 5;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                // Read-only form for viewing schedule viewing details
                Forms\Components\Section::make('Schedule Viewing Details')
                    ->schema([
                        Forms\Components\TextInput::make('property.title')
                            ->label('Property')
                            ->disabled()
                            ->dehydrated(false),
                        Forms\Components\TextInput::make('full_name')
                            ->label('Full Name')
                            ->disabled()
                            ->dehydrated(false),
                        Forms\Components\TextInput::make('email')
                            ->label('Email')
                            ->disabled()
                            ->dehydrated(false),
                        Forms\Components\TextInput::make('phone_number')
                            ->label('Phone Number')
                            ->disabled()
                            ->dehydrated(false),
                        Forms\Components\DatePicker::make('preferred_date')
                            ->label('Preferred Date')
                            ->disabled()
                            ->dehydrated(false),
                        Forms\Components\TextInput::make('preferred_time')
                            ->label('Preferred Time')
                            ->disabled()
                            ->dehydrated(false),
                        Forms\Components\Textarea::make('notes')
                            ->label('Notes')
                            ->disabled()
                            ->dehydrated(false)
                            ->columnSpanFull(),
                        Forms\Components\DateTimePicker::make('created_at')
                            ->label('Submitted At')
                            ->disabled()
                            ->dehydrated(false),
                    ])
                    ->columns(2),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('property.title')
                    ->label('Property')
                    ->searchable()
                    ->sortable()
                    ->weight('bold'),
                Tables\Columns\TextColumn::make('full_name')
                    ->label('Full Name')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('email')
                    ->label('Email')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('phone_number')
                    ->label('Phone')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('preferred_date')
                    ->label('Preferred Date')
                    ->date('M j, Y')
                    ->sortable(),
                Tables\Columns\TextColumn::make('preferred_time')
                    ->label('Preferred Time')
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Submitted At')
                    ->dateTime('M j, Y g:i A')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('property_id')
                    ->relationship('property', 'title')
                    ->searchable()
                    ->preload(),
                Tables\Filters\Filter::make('preferred_date')
                    ->form([
                        Forms\Components\DatePicker::make('preferred_from'),
                        Forms\Components\DatePicker::make('preferred_until'),
                    ])
                    ->query(function (Builder $query, array $data): Builder {
                        return $query
                            ->when(
                                $data['preferred_from'],
                                fn (Builder $query, $date): Builder => $query->whereDate('preferred_date', '>=', $date),
                            )
                            ->when(
                                $data['preferred_until'],
                                fn (Builder $query, $date): Builder => $query->whereDate('preferred_date', '<=', $date),
                            );
                    }),
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
            ])
            ->bulkActions([
                // No bulk actions for read-only resource
            ])
            ->defaultSort('created_at', 'desc');
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListScheduleViewings::route('/'),
            'view' => Pages\ViewScheduleViewing::route('/{record}'),
        ];
    }
}

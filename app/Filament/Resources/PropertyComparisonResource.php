<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PropertyComparisonResource\Pages;
use App\Filament\Resources\PropertyComparisonResource\RelationManagers;
use App\Models\PropertyComparison;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PropertyComparisonResource extends Resource
{
    protected static ?string $model = PropertyComparison::class;

    protected static ?string $navigationIcon = 'heroicon-o-scale';

    protected static ?string $navigationGroup = 'Marketing';

    protected static ?int $navigationSort = 2;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                // Read-only form for viewing comparison details
                Forms\Components\Section::make('Comparison Details')
                    ->schema([
                        Forms\Components\TextInput::make('user.first_name')
                            ->label('User')
                            ->disabled()
                            ->dehydrated(false),
                        Forms\Components\TextInput::make('name')
                            ->label('Comparison Name')
                            ->disabled()
                            ->dehydrated(false),
                        Forms\Components\TextInput::make('properties_count')
                            ->label('Number of Properties')
                            ->disabled()
                            ->dehydrated(false),
                        Forms\Components\DateTimePicker::make('created_at')
                            ->label('Created At')
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
                Tables\Columns\TextColumn::make('name')
                    ->label('Comparison Name')
                    ->searchable()
                    ->sortable()
                    ->weight('bold'),
                Tables\Columns\TextColumn::make('user.first_name')
                    ->label('User')
                    ->searchable()
                    ->sortable()
                    ->formatStateUsing(fn ($record) => $record->user->first_name . ' ' . $record->user->last_name),
                Tables\Columns\TextColumn::make('properties_count')
                    ->label('Properties')
                    ->counts('properties')
                    ->sortable()
                    ->alignCenter()
                    ->badge()
                    ->color(fn (int $state): string => match (true) {
                        $state === 0 => 'gray',
                        $state < 3 => 'warning',
                        $state >= 3 => 'success',
                    }),
                Tables\Columns\TextColumn::make('properties.title')
                    ->label('Property Titles')
                    ->limit(50)
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Created')
                    ->dateTime('M j, Y g:i A')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('user_id')
                    ->relationship('user', 'first_name')
                    ->searchable()
                    ->preload(),
                Tables\Filters\Filter::make('has_properties')
                    ->query(fn (Builder $query): Builder => $query->has('properties')),
                Tables\Filters\Filter::make('empty_comparisons')
                    ->query(fn (Builder $query): Builder => $query->doesntHave('properties')),
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ])
            ->defaultSort('created_at', 'desc');
    }

    public static function getRelations(): array
    {
        return [
            RelationManagers\PropertiesRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPropertyComparisons::route('/'),
            'view' => Pages\ViewPropertyComparison::route('/{record}'),
        ];
    }
}

<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PropertyViewResource\Pages;
use App\Filament\Resources\PropertyViewResource\RelationManagers;
use App\Models\PropertyView;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PropertyViewResource extends Resource
{
    protected static ?string $model = PropertyView::class;

    protected static ?string $navigationIcon = 'heroicon-o-eye';

    protected static ?string $navigationGroup = 'Properties';

    protected static ?int $navigationSort = 3;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                // Read-only form for viewing property view details
                Forms\Components\Section::make('Property View Details')
                    ->schema([
                        Forms\Components\TextInput::make('property.title')
                            ->label('Property')
                            ->disabled()
                            ->dehydrated(false),
                        Forms\Components\TextInput::make('user.name')
                            ->label('User')
                            ->disabled()
                            ->dehydrated(false),
                        Forms\Components\TextInput::make('ip_address')
                            ->label('IP Address')
                            ->disabled()
                            ->dehydrated(false),
                        Forms\Components\Textarea::make('user_agent')
                            ->label('User Agent')
                            ->disabled()
                            ->dehydrated(false)
                            ->columnSpanFull(),
                        Forms\Components\DateTimePicker::make('viewed_at')
                            ->label('Viewed At')
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
                Tables\Columns\TextColumn::make('user.name')
                    ->label('User')
                    ->searchable()
                    ->sortable()
                    ->placeholder('Guest'),
                Tables\Columns\TextColumn::make('ip_address')
                    ->label('IP Address')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('viewed_at')
                    ->label('Viewed At')
                    ->dateTime('M j, Y g:i A')
                    ->sortable(),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('property_id')
                    ->relationship('property', 'title')
                    ->searchable()
                    ->preload(),
                Tables\Filters\Filter::make('viewed_at')
                    ->form([
                        Forms\Components\DatePicker::make('viewed_from'),
                        Forms\Components\DatePicker::make('viewed_until'),
                    ])
                    ->query(function (Builder $query, array $data): Builder {
                        return $query
                            ->when(
                                $data['viewed_from'],
                                fn (Builder $query, $date): Builder => $query->whereDate('viewed_at', '>=', $date),
                            )
                            ->when(
                                $data['viewed_until'],
                                fn (Builder $query, $date): Builder => $query->whereDate('viewed_at', '<=', $date),
                            );
                    }),
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
            ])
            ->bulkActions([
                // No bulk actions for read-only resource
            ])
            ->defaultSort('viewed_at', 'desc');
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
            'index' => Pages\ListPropertyViews::route('/'),
            'view' => Pages\ViewPropertyView::route('/{record}'),
        ];
    }
}

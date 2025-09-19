<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PropertyAmenityResource\Pages;
use App\Filament\Resources\PropertyAmenityResource\RelationManagers;
use App\Models\PropertyAmenity;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PropertyAmenityResource extends Resource
{
    protected static ?string $model = PropertyAmenity::class;

    protected static ?string $navigationIcon = 'heroicon-o-sparkles';

    protected static ?string $navigationGroup = 'Properties';

    protected static ?int $navigationSort = 2;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make('Amenity Details')
                    ->schema([
                        Forms\Components\TextInput::make('name')
                            ->required()
                            ->maxLength(100)
                            ->unique(ignoreRecord: true)
                            ->placeholder('e.g., Swimming Pool, Garden, Parking')
                            ->helperText('Enter a clear, descriptive name for the amenity'),
                        Forms\Components\Textarea::make('description')
                            ->maxLength(500)
                            ->placeholder('Brief description of what this amenity includes')
                            ->helperText('Optional: Provide more details about this amenity')
                            ->columnSpanFull(),
                    ])
                    ->columns(1),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->searchable()
                    ->sortable()
                    ->weight('bold'),
                Tables\Columns\TextColumn::make('description')
                    ->limit(50)
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('properties_count')
                    ->counts('properties')
                    ->sortable()
                    ->alignCenter(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime('M j, Y g:i A')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime('M j, Y g:i A')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\Filter::make('with_properties')
                    ->query(fn ($query) => $query->has('properties')),
                Tables\Filters\Filter::make('without_properties')
                    ->query(fn ($query) => $query->doesntHave('properties')),
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make(),
                Tables\Actions\Action::make('view_properties')
                    ->label('View Properties')
                    ->icon('heroicon-o-home')
                    ->url(fn ($record) => route('filament.admin.resources.properties.index', ['tableFilters' => ['amenities' => ['value' => $record->id]]]))
                    ->openUrlInNewTab(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ])
            ->defaultSort('name');
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
            'index' => Pages\ListPropertyAmenities::route('/'),
            'create' => Pages\CreatePropertyAmenity::route('/create'),
            'edit' => Pages\EditPropertyAmenity::route('/{record}/edit'),
        ];
    }
}

<?php

namespace App\Filament\Resources\PropertyViewResource\Pages;

use App\Filament\Resources\PropertyViewResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPropertyViews extends ListRecords
{
    protected static string $resource = PropertyViewResource::class;

    protected function getHeaderActions(): array
    {
        return [
            // No actions for read-only resource
        ];
    }
}

<?php

namespace App\Filament\Resources\PropertyViewResource\Pages;

use App\Filament\Resources\PropertyViewResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewPropertyView extends ViewRecord
{
    protected static string $resource = PropertyViewResource::class;

    protected function getHeaderActions(): array
    {
        return [
            // No actions for read-only resource
        ];
    }
}

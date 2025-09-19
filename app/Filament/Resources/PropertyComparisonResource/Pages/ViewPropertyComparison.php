<?php

namespace App\Filament\Resources\PropertyComparisonResource\Pages;

use App\Filament\Resources\PropertyComparisonResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewPropertyComparison extends ViewRecord
{
    protected static string $resource = PropertyComparisonResource::class;

    protected function getHeaderActions(): array
    {
        return [
            // No actions for read-only resource
        ];
    }
}

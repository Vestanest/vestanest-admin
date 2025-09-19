<?php

namespace App\Filament\Resources\ScheduleViewingResource\Pages;

use App\Filament\Resources\ScheduleViewingResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewScheduleViewing extends ViewRecord
{
    protected static string $resource = ScheduleViewingResource::class;

    protected function getHeaderActions(): array
    {
        return [
            // No actions for read-only resource
        ];
    }
}

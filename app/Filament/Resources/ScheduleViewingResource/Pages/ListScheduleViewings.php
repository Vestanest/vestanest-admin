<?php

namespace App\Filament\Resources\ScheduleViewingResource\Pages;

use App\Filament\Resources\ScheduleViewingResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListScheduleViewings extends ListRecords
{
    protected static string $resource = ScheduleViewingResource::class;

    protected function getHeaderActions(): array
    {
        return [
            // No actions for read-only resource
        ];
    }
}

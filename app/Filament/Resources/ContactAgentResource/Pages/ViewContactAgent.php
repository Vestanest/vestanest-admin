<?php

namespace App\Filament\Resources\ContactAgentResource\Pages;

use App\Filament\Resources\ContactAgentResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewContactAgent extends ViewRecord
{
    protected static string $resource = ContactAgentResource::class;

    protected function getHeaderActions(): array
    {
        return [
            // No actions for read-only resource
        ];
    }
}

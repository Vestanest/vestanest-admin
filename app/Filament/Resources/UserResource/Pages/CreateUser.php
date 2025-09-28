<?php

namespace App\Filament\Resources\UserResource\Pages;

use App\Filament\Resources\UserResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateUser extends CreateRecord
{
    protected static string $resource = UserResource::class;

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        // If no roles are selected, assign 'user' role by default
        if (empty($data['roles'])) {
            $data['roles'] = ['user'];
        }

        return $data;
    }
}

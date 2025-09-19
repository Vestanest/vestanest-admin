<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create Super Admin
        $superAdmin = User::create([
            'first_name' => 'Super',
            'last_name' => 'Admin',
            'email' => 'superadmin@vestanest.com',
            'phone' => '+233244123456',
            'password' => Hash::make('password'),
            'is_verified' => true,
            'is_active' => true,
            'email_verified_at' => now(),
            'phone_verified_at' => now(),
            'last_login_at' => now(),
        ]);
        $superAdmin->assignRole('super_admin');

        // Create Admin
        $admin = User::create([
            'first_name' => 'Admin',
            'last_name' => 'User',
            'email' => 'admin@vestanest.com',
            'phone' => '+233244123457',
            'password' => Hash::make('password'),
            'is_verified' => true,
            'is_active' => true,
            'email_verified_at' => now(),
            'phone_verified_at' => now(),
            'last_login_at' => now(),
        ]);
        $admin->assignRole('admin');

        // Create Demo Agent
        $agent = User::create([
            'first_name' => 'John',
            'last_name' => 'Doe',
            'email' => 'agent@vestanest.com',
            'phone' => '+233244123458',
            'password' => Hash::make('password'),
            'is_verified' => true,
            'is_active' => true,
            'email_verified_at' => now(),
            'phone_verified_at' => now(),
            'last_login_at' => now(),
        ]);
        $agent->assignRole('agent');

        // Create Demo User
        $user = User::create([
            'first_name' => 'Jane',
            'last_name' => 'Smith',
            'email' => 'user@vestanest.com',
            'phone' => '+233244123459',
            'password' => Hash::make('password'),
            'is_verified' => true,
            'is_active' => true,
            'email_verified_at' => now(),
            'phone_verified_at' => now(),
            'last_login_at' => now(),
        ]);
        $user->assignRole('user');

        // Create additional users with roles
        $this->createAdditionalUsers();
    }

    private function createAdditionalUsers(): void
    {
        // Create 5 additional agents
        for ($i = 1; $i <= 5; $i++) {
            $agent = User::create([
                'first_name' => fake()->firstName(),
                'last_name' => fake()->lastName(),
                'email' => "agent{$i}@vestanest.com",
                'phone' => '+233244' . str_pad(123460 + $i, 6, '0', STR_PAD_LEFT),
                'password' => Hash::make('password'),
                'is_verified' => true,
                'is_active' => true,
                'email_verified_at' => now(),
                'phone_verified_at' => now(),
                'last_login_at' => fake()->dateTimeBetween('-30 days', 'now'),
            ]);
            $agent->assignRole('agent');
        }

        // Create 10 regular users
        for ($i = 1; $i <= 10; $i++) {
            $user = User::create([
                'first_name' => fake()->firstName(),
                'last_name' => fake()->lastName(),
                'email' => "user{$i}@vestanest.com",
                'phone' => '+233244' . str_pad(123470 + $i, 6, '0', STR_PAD_LEFT),
                'password' => Hash::make('password'),
                'is_verified' => fake()->boolean(80), // 80% verified
                'is_active' => true,
                'email_verified_at' => fake()->boolean(80) ? now() : null,
                'phone_verified_at' => fake()->boolean(60) ? now() : null,
                'last_login_at' => fake()->dateTimeBetween('-7 days', 'now'),
            ]);
            $user->assignRole('user');
        }

        // Create 2 additional admins
        for ($i = 1; $i <= 2; $i++) {
            $admin = User::create([
                'first_name' => fake()->firstName(),
                'last_name' => fake()->lastName(),
                'email' => "admin{$i}@vestanest.com",
                'phone' => '+233244' . str_pad(123480 + $i, 6, '0', STR_PAD_LEFT),
                'password' => Hash::make('password'),
                'is_verified' => true,
                'is_active' => true,
                'email_verified_at' => now(),
                'phone_verified_at' => now(),
                'last_login_at' => fake()->dateTimeBetween('-3 days', 'now'),
            ]);
            $admin->assignRole('admin');
        }
    }
}
<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            // First create roles and permissions
            RoleSeeder::class,

            // Then create users (depends on roles)
            UserSeeder::class,

            // Create property amenities (independent)
            PropertyAmenitySeeder::class,

            // Create properties (depends on users and amenities)
            PropertySeeder::class,

            // Create communication data (depends on users and properties)
            ContactMessageSeeder::class,
            InquirySeeder::class,
            ReviewSeeder::class,
            NewsletterSubscriptionSeeder::class,

            // Create property-related data (depends on properties and users)
            PropertyViewSeeder::class,
            ScheduleViewingSeeder::class,
            ContactAgentSeeder::class,
            PropertyComparisonSeeder::class,
        ]);
    }
}
<?php

namespace Database\Seeders;

use App\Models\PropertyView;
use App\Models\Property;
use App\Models\User;
use Illuminate\Database\Seeder;

class PropertyViewSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $properties = Property::all();
        $users = User::role('user')->get();

        // Create property views for the last 30 days
        for ($i = 0; $i < 200; $i++) {
            $property = $properties->random();
            $user = fake()->boolean(70) ? $users->random() : null; // 70% from logged-in users

            PropertyView::create([
                'property_id' => $property->id,
                'user_id' => $user?->id,
                'ip_address' => fake()->ipv4(),
                'user_agent' => fake()->userAgent(),
                'viewed_at' => fake()->dateTimeBetween('-30 days', 'now'),
            ]);
        }

        // Create some views for specific properties to show popular ones
        $popularProperties = $properties->take(5);
        foreach ($popularProperties as $property) {
            // Create 20-50 views for each popular property
            $viewCount = fake()->numberBetween(20, 50);
            for ($i = 0; $i < $viewCount; $i++) {
                $user = fake()->boolean(60) ? $users->random() : null;

                PropertyView::create([
                    'property_id' => $property->id,
                    'user_id' => $user?->id,
                    'ip_address' => fake()->ipv4(),
                    'user_agent' => fake()->userAgent(),
                    'viewed_at' => fake()->dateTimeBetween('-30 days', 'now'),
                ]);
            }
        }
    }
}
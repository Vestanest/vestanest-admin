<?php

namespace Database\Seeders;

use App\Models\PropertyComparison;
use App\Models\Property;
use App\Models\User;
use Illuminate\Database\Seeder;

class PropertyComparisonSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $properties = Property::all();
        $users = User::role('user')->get();

        $sampleComparisons = [
            [
                'user_id' => $users->random()->id,
                'name' => 'Luxury Properties in Accra',
                'created_at' => now()->subDays(5),
            ],
            [
                'user_id' => $users->random()->id,
                'name' => 'Investment Opportunities',
                'created_at' => now()->subDays(3),
            ],
            [
                'user_id' => $users->random()->id,
                'name' => 'Family Homes Under $500k',
                'created_at' => now()->subDays(7),
            ],
            [
                'user_id' => $users->random()->id,
                'name' => 'Beachfront Properties',
                'created_at' => now()->subDays(2),
            ],
            [
                'user_id' => $users->random()->id,
                'name' => 'Modern Apartments',
                'created_at' => now()->subDays(1),
            ],
        ];

        foreach ($sampleComparisons as $comparisonData) {
            $comparison = PropertyComparison::create($comparisonData);

            // Add 2-4 random properties to each comparison
            $randomProperties = $properties->random(rand(2, 4));
            $comparison->properties()->attach($randomProperties);
        }

        // Create additional random comparisons
        $comparisonNames = [
            'Properties in East Legon',
            'Villas with Pool',
            'Commercial Properties',
            'Properties Near Airport',
            'Budget-Friendly Options',
            'High-End Properties',
            'Properties with Garden',
            'New Construction',
            'Properties for Rent',
            'Investment Properties',
        ];

        for ($i = 1; $i <= 15; $i++) {
            $comparison = PropertyComparison::create([
                'user_id' => $users->random()->id,
                'name' => fake()->randomElement($comparisonNames) . ' - ' . fake()->word(),
                'created_at' => fake()->dateTimeBetween('-30 days', 'now'),
            ]);

            // Add 2-5 random properties to each comparison
            $randomProperties = $properties->random(rand(2, 5));
            $comparison->properties()->attach($randomProperties);
        }
    }
}
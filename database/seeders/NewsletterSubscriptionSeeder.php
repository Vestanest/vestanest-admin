<?php

namespace Database\Seeders;

use App\Models\NewsletterSubscription;
use Illuminate\Database\Seeder;

class NewsletterSubscriptionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $sampleSubscriptions = [
            [
                'email' => 'john.doe@email.com',
                'first_name' => 'John',
                'last_name' => 'Doe',
                'is_active' => true,
                'preferences' => json_encode([
                    'property_types' => ['apartment', 'house'],
                    'price_range' => ['100000', '500000'],
                    'locations' => ['Accra', 'Kumasi'],
                    'frequency' => 'weekly'
                ]),
                'subscribed_at' => now()->subDays(30),
                'unsubscribed_at' => null,
            ],
            [
                'email' => 'sarah.johnson@email.com',
                'first_name' => 'Sarah',
                'last_name' => 'Johnson',
                'is_active' => true,
                'preferences' => json_encode([
                    'property_types' => ['villa', 'house'],
                    'price_range' => ['500000', '2000000'],
                    'locations' => ['Accra'],
                    'frequency' => 'daily'
                ]),
                'subscribed_at' => now()->subDays(15),
                'unsubscribed_at' => null,
            ],
            [
                'email' => 'michael.smith@email.com',
                'first_name' => 'Michael',
                'last_name' => 'Smith',
                'is_active' => false,
                'preferences' => json_encode([
                    'property_types' => ['apartment'],
                    'price_range' => ['50000', '200000'],
                    'locations' => ['Kumasi', 'Tamale'],
                    'frequency' => 'monthly'
                ]),
                'subscribed_at' => now()->subDays(60),
                'unsubscribed_at' => now()->subDays(10),
            ],
            [
                'email' => 'grace.mensah@email.com',
                'first_name' => 'Grace',
                'last_name' => 'Mensah',
                'is_active' => true,
                'preferences' => json_encode([
                    'property_types' => ['commercial', 'office'],
                    'price_range' => ['10000', '50000'],
                    'locations' => ['Accra', 'Tema'],
                    'frequency' => 'weekly'
                ]),
                'subscribed_at' => now()->subDays(45),
                'unsubscribed_at' => null,
            ],
            [
                'email' => 'kwame.asante@email.com',
                'first_name' => 'Kwame',
                'last_name' => 'Asante',
                'is_active' => true,
                'preferences' => json_encode([
                    'property_types' => ['land'],
                    'price_range' => ['50000', '500000'],
                    'locations' => ['Greater Accra', 'Ashanti'],
                    'frequency' => 'monthly'
                ]),
                'subscribed_at' => now()->subDays(20),
                'unsubscribed_at' => null,
            ],
        ];

        foreach ($sampleSubscriptions as $subscription) {
            NewsletterSubscription::create($subscription);
        }

        // Create additional random newsletter subscriptions
        $propertyTypes = ['apartment', 'house', 'villa', 'townhouse', 'office', 'land', 'commercial'];
        $locations = ['Accra', 'Kumasi', 'Tamale', 'Cape Coast', 'Takoradi', 'Tema'];
        $frequencies = ['daily', 'weekly', 'monthly'];

        for ($i = 1; $i <= 25; $i++) {
            $isActive = fake()->boolean(80); // 80% active subscriptions

            NewsletterSubscription::create([
                'email' => fake()->safeEmail(),
                'first_name' => fake()->firstName(),
                'last_name' => fake()->lastName(),
                'is_active' => $isActive,
                'preferences' => json_encode([
                    'property_types' => fake()->randomElements($propertyTypes, fake()->numberBetween(1, 3)),
                    'price_range' => [
                        fake()->numberBetween(10000, 100000),
                        fake()->numberBetween(200000, 2000000)
                    ],
                    'locations' => fake()->randomElements($locations, fake()->numberBetween(1, 3)),
                    'frequency' => fake()->randomElement($frequencies)
                ]),
                'subscribed_at' => fake()->dateTimeBetween('-90 days', 'now'),
                'unsubscribed_at' => $isActive ? null : fake()->dateTimeBetween('-30 days', 'now'),
            ]);
        }
    }
}

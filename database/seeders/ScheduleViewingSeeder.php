<?php

namespace Database\Seeders;

use App\Models\ScheduleViewing;
use App\Models\Property;
use Illuminate\Database\Seeder;

class ScheduleViewingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $properties = Property::all();

        $sampleViewings = [
            [
                'property_id' => $properties->random()->id,
                'full_name' => 'Sarah Johnson',
                'email' => 'sarah.johnson@email.com',
                'phone_number' => '+233244123456',
                'preferred_date' => now()->addDays(3),
                'preferred_time' => '10:00 AM',
                'notes' => 'I am very interested in this property and would like to schedule a viewing. I am available on weekends.',
            ],
            [
                'property_id' => $properties->random()->id,
                'full_name' => 'Emmanuel Kofi',
                'email' => 'emmanuel.kofi@email.com',
                'phone_number' => '+233244123457',
                'preferred_date' => now()->addDays(5),
                'preferred_time' => '2:00 PM',
                'notes' => 'Looking for investment property. Would like to see the property during business hours.',
            ],
            [
                'property_id' => $properties->random()->id,
                'full_name' => 'Adwoa Mensah',
                'email' => 'adwoa.mensah@email.com',
                'phone_number' => '+233244123458',
                'preferred_date' => now()->addDays(7),
                'preferred_time' => '11:00 AM',
                'notes' => 'First-time buyer. Would appreciate a detailed walkthrough of the property.',
            ],
            [
                'property_id' => $properties->random()->id,
                'full_name' => 'Kwaku Boateng',
                'email' => 'kwaku.boateng@email.com',
                'phone_number' => '+233244123459',
                'preferred_date' => now()->addDays(2),
                'preferred_time' => '3:00 PM',
                'notes' => 'Relocating from abroad. Need to see the property as soon as possible.',
            ],
            [
                'property_id' => $properties->random()->id,
                'full_name' => 'Akosua Asante',
                'email' => 'akosua.asante@email.com',
                'phone_number' => '+233244123460',
                'preferred_date' => now()->addDays(4),
                'preferred_time' => '9:00 AM',
                'notes' => 'Looking for a family home. Would like to bring my children for the viewing.',
            ],
        ];

        foreach ($sampleViewings as $viewing) {
            ScheduleViewing::create($viewing);
        }

        // Create additional random viewing requests
        for ($i = 1; $i <= 20; $i++) {
            ScheduleViewing::create([
                'property_id' => $properties->random()->id,
                'full_name' => fake()->name(),
                'email' => fake()->safeEmail(),
                'phone_number' => '+233244' . fake()->numerify('######'),
                'preferred_date' => fake()->dateTimeBetween('now', '+14 days'),
                'preferred_time' => fake()->randomElement(['9:00 AM', '10:00 AM', '11:00 AM', '2:00 PM', '3:00 PM', '4:00 PM']),
                'notes' => fake()->boolean(60) ? fake()->sentence() : null,
                'created_at' => fake()->dateTimeBetween('-30 days', 'now'),
                'updated_at' => fake()->dateTimeBetween('-30 days', 'now'),
            ]);
        }
    }
}

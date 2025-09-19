<?php

namespace Database\Seeders;

use App\Models\ContactAgent;
use App\Models\Property;
use Illuminate\Database\Seeder;

class ContactAgentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $properties = Property::all();

        $sampleContacts = [
            [
                'property_id' => $properties->random()->id,
                'full_name' => 'Michael Osei',
                'email' => 'michael.osei@email.com',
                'phone_number' => '+233244123456',
                'message' => 'I am very interested in this property and would like to discuss the details with an agent. Could you please contact me to schedule a meeting?',
            ],
            [
                'property_id' => $properties->random()->id,
                'full_name' => 'Grace Adjei',
                'email' => 'grace.adjei@email.com',
                'phone_number' => '+233244123457',
                'message' => 'I am looking for investment properties in this area. Could an agent provide me with more information about the market trends and potential returns?',
            ],
            [
                'property_id' => $properties->random()->id,
                'full_name' => 'David Asante',
                'email' => 'david.asante@email.com',
                'phone_number' => '+233244123458',
                'message' => 'I would like to make an offer on this property. Could an agent help me with the negotiation process and paperwork?',
            ],
            [
                'property_id' => $properties->random()->id,
                'full_name' => 'Ama Serwaa',
                'email' => 'ama.serwaa@email.com',
                'phone_number' => '+233244123459',
                'message' => 'I am a first-time buyer and need guidance on the purchasing process. Could an agent explain the steps and requirements?',
            ],
            [
                'property_id' => $properties->random()->id,
                'full_name' => 'Kwame Boateng',
                'email' => 'kwame.boateng@email.com',
                'phone_number' => '+233244123460',
                'message' => 'I am relocating from abroad and need assistance with property selection. Could an agent help me find suitable properties in my budget range?',
            ],
        ];

        foreach ($sampleContacts as $contact) {
            ContactAgent::create($contact);
        }

        // Create additional random contact agent requests
        $messages = [
            'I am interested in this property and would like to discuss the details with an agent.',
            'Could you please provide more information about this property and schedule a viewing?',
            'I am looking for investment opportunities and would like to speak with an agent.',
            'I would like to make an offer on this property. Could an agent help me with the process?',
            'I am a first-time buyer and need guidance on the purchasing process.',
            'I am relocating and need assistance with property selection in this area.',
            'Could an agent provide me with a market analysis for this property?',
            'I am interested in financing options for this property. Could an agent help?',
            'I would like to schedule a private viewing of this property.',
            'Could an agent provide me with comparable properties in the area?',
        ];

        for ($i = 1; $i <= 25; $i++) {
            ContactAgent::create([
                'property_id' => $properties->random()->id,
                'full_name' => fake()->name(),
                'email' => fake()->safeEmail(),
                'phone_number' => '+233244' . fake()->numerify('######'),
                'message' => fake()->randomElement($messages),
                'created_at' => fake()->dateTimeBetween('-30 days', 'now'),
                'updated_at' => fake()->dateTimeBetween('-30 days', 'now'),
            ]);
        }
    }
}
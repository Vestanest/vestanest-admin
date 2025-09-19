<?php

namespace Database\Seeders;

use App\Models\Inquiry;
use App\Models\Property;
use App\Models\User;
use Illuminate\Database\Seeder;

class InquirySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $properties = Property::all();
        $users = User::role('user')->get();

        $inquiryTypes = ['viewing', 'information', 'offer', 'general'];
        $statuses = ['new', 'contacted', 'scheduled', 'completed', 'cancelled'];

        $sampleInquiries = [
            [
                'property_id' => $properties->random()->id,
                'user_id' => $users->random()->id,
                'name' => 'Sarah Johnson',
                'email' => 'sarah.johnson@email.com',
                'phone' => '+233244123456',
                'message' => 'I am very interested in viewing this property. I would like to schedule a viewing for this weekend if possible. Please let me know the available time slots.',
                'inquiry_type' => 'viewing',
                'status' => 'new',
                'preferred_date' => now()->addDays(3),
                'preferred_time' => '10:00:00',
                'agent_notes' => 'Client seems very interested. Follow up within 24 hours.',
            ],
            [
                'property_id' => $properties->random()->id,
                'user_id' => $users->random()->id,
                'name' => 'Emmanuel Kofi',
                'email' => 'emmanuel.kofi@email.com',
                'phone' => '+233244123457',
                'message' => 'Could you please provide more information about the property taxes, HOA fees, and any additional costs associated with this property?',
                'inquiry_type' => 'information',
                'status' => 'contacted',
                'preferred_date' => null,
                'preferred_time' => null,
                'agent_notes' => 'Information requested sent via email. Waiting for response.',
            ],
            [
                'property_id' => $properties->random()->id,
                'user_id' => $users->random()->id,
                'name' => 'Adwoa Mensah',
                'email' => 'adwoa.mensah@email.com',
                'phone' => '+233244123458',
                'message' => 'I would like to make an offer on this property. My offer is $2,200,000. I am pre-approved for financing and can close within 30 days.',
                'inquiry_type' => 'offer',
                'status' => 'scheduled',
                'preferred_date' => now()->addDays(1),
                'preferred_time' => '14:00:00',
                'agent_notes' => 'Serious buyer with pre-approval. Meeting scheduled to discuss offer details.',
            ],
            [
                'property_id' => $properties->random()->id,
                'user_id' => $users->random()->id,
                'name' => 'Kwaku Boateng',
                'email' => 'kwaku.boateng@email.com',
                'phone' => '+233244123459',
                'message' => 'I am looking for properties in this area for investment purposes. Do you have any other similar properties available?',
                'inquiry_type' => 'general',
                'status' => 'completed',
                'preferred_date' => null,
                'preferred_time' => null,
                'agent_notes' => 'Provided list of similar investment properties. Client is reviewing options.',
            ],
            [
                'property_id' => $properties->random()->id,
                'user_id' => $users->random()->id,
                'name' => 'Akosua Asante',
                'email' => 'akosua.asante@email.com',
                'phone' => '+233244123460',
                'message' => 'I was interested in this property but have decided to look elsewhere. Thank you for your time.',
                'inquiry_type' => 'general',
                'status' => 'cancelled',
                'preferred_date' => null,
                'preferred_time' => null,
                'agent_notes' => 'Client decided not to proceed. No further action needed.',
            ],
        ];

        foreach ($sampleInquiries as $inquiry) {
            Inquiry::create($inquiry);
        }

        // Create additional random inquiries
        for ($i = 1; $i <= 25; $i++) {
            Inquiry::create([
                'property_id' => $properties->random()->id,
                'user_id' => fake()->boolean(70) ? $users->random()->id : null, // 70% have users
                'name' => fake()->name(),
                'email' => fake()->safeEmail(),
                'phone' => '+233244' . fake()->numerify('######'),
                'message' => fake()->paragraphs(2, true),
                'inquiry_type' => fake()->randomElement($inquiryTypes),
                'status' => fake()->randomElement($statuses),
                'preferred_date' => fake()->boolean(60) ? fake()->dateTimeBetween('now', '+30 days') : null,
                'preferred_time' => fake()->boolean(60) ? fake()->time('H:i:s') : null,
                'agent_notes' => fake()->boolean(40) ? fake()->sentence() : null,
                'created_at' => fake()->dateTimeBetween('-30 days', 'now'),
                'updated_at' => fake()->dateTimeBetween('-30 days', 'now'),
            ]);
        }
    }
}

<?php

namespace Database\Seeders;

use App\Models\ContactMessage;
use Illuminate\Database\Seeder;

class ContactMessageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $messageTypes = ['general', 'support', 'partnership', 'feedback'];
        $statuses = ['new', 'read', 'replied', 'closed'];

        $sampleMessages = [
            [
                'name' => 'Kwame Asante',
                'email' => 'kwame.asante@email.com',
                'phone' => '+233244123456',
                'subject' => 'Property Investment Inquiry',
                'message' => 'I am interested in investing in properties in Accra. Could you please provide me with information about your investment opportunities and expected returns?',
                'message_type' => 'general',
                'status' => 'new',
                'ip_address' => '192.168.1.100',
                'user_agent' => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
            ],
            [
                'name' => 'Ama Serwaa',
                'email' => 'ama.serwaa@email.com',
                'phone' => '+233244123457',
                'subject' => 'Technical Support Request',
                'message' => 'I am having trouble uploading property images on your website. The upload keeps failing and I receive an error message. Can you help me resolve this issue?',
                'message_type' => 'support',
                'status' => 'read',
                'ip_address' => '192.168.1.101',
                'user_agent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36',
            ],
            [
                'name' => 'David Osei',
                'email' => 'david.osei@company.com',
                'phone' => '+233244123458',
                'subject' => 'Partnership Proposal',
                'message' => 'We are a real estate development company looking to partner with VestaNest. We have several projects in Kumasi and would like to discuss potential collaboration opportunities.',
                'message_type' => 'partnership',
                'status' => 'replied',
                'ip_address' => '192.168.1.102',
                'user_agent' => 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36',
            ],
            [
                'name' => 'Grace Mensah',
                'email' => 'grace.mensah@email.com',
                'phone' => '+233244123459',
                'subject' => 'Website Feedback',
                'message' => 'I love using your platform! The property search functionality is excellent. However, I would suggest adding a map view option to make it easier to see property locations.',
                'message_type' => 'feedback',
                'status' => 'closed',
                'ip_address' => '192.168.1.103',
                'user_agent' => 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15',
            ],
            [
                'name' => 'Michael Boateng',
                'email' => 'michael.boateng@email.com',
                'phone' => '+233244123460',
                'subject' => 'Property Listing Question',
                'message' => 'I am a property owner and would like to list my property on your platform. What are the requirements and fees involved?',
                'message_type' => 'general',
                'status' => 'new',
                'ip_address' => '192.168.1.104',
                'user_agent' => 'Mozilla/5.0 (Android 11; Mobile; rv:68.0) Gecko/68.0 Firefox/88.0',
            ],
        ];

        foreach ($sampleMessages as $message) {
            ContactMessage::create($message);
        }

        // Create additional random contact messages
        for ($i = 1; $i <= 15; $i++) {
            ContactMessage::create([
                'name' => fake()->name(),
                'email' => fake()->safeEmail(),
                'phone' => '+233244' . fake()->numerify('######'),
                'subject' => fake()->sentence(3),
                'message' => fake()->paragraphs(2, true),
                'message_type' => fake()->randomElement($messageTypes),
                'status' => fake()->randomElement($statuses),
                'ip_address' => fake()->ipv4(),
                'user_agent' => fake()->userAgent(),
                'created_at' => fake()->dateTimeBetween('-30 days', 'now'),
                'updated_at' => fake()->dateTimeBetween('-30 days', 'now'),
            ]);
        }
    }
}
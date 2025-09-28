<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Log;
use App\Mail\NewsletterSubscriptionConfirmed;

class TestEmail extends Command
{
    protected $signature = 'test:email {email}';
    protected $description = 'Test email sending functionality';

    public function handle()
    {
        $email = $this->argument('email');

        $this->info("Testing email sending to: {$email}");

        try {
            Mail::to($email)->send(new NewsletterSubscriptionConfirmed([
                'id' => 1,
                'email' => $email,
                'first_name' => 'Test',
                'last_name' => 'User',
                'preferences' => ['frequency' => 'weekly'],
                'subscribed_at' => now(),
            ]));

            $this->info("✅ Email sent successfully!");
            Log::info("Test email sent successfully to: {$email}");

        } catch (\Exception $e) {
            $this->error("❌ Email failed to send: " . $e->getMessage());
            Log::error("Test email failed to send to: {$email} - Error: " . $e->getMessage());
        }
    }
}






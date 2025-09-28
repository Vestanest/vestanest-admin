<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class NewsletterSubscriptionConfirmed extends Mailable
{
    use Queueable, SerializesModels;

    public array $subscription;

    public function __construct(array $subscription)
    {
        $this->subscription = $subscription;
    }

    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'Welcome to VestaNest Newsletter!',
        );
    }

    public function content(): Content
    {
        return new Content(
            view: 'emails.newsletter_subscription',
            with: [
                'subscription' => $this->subscription,
            ]
        );
    }

    public function attachments(): array
    {
        return [];
    }
}






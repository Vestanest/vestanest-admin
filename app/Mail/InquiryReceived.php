<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class InquiryReceived extends Mailable
{
    use Queueable, SerializesModels;

    public array $inquiry;

    public function __construct(array $inquiry)
    {
        $this->inquiry = $inquiry;
    }

    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'We received your inquiry',
        );
    }

    public function content(): Content
    {
        return new Content(
            view: 'emails.inquiry',
            with: [
                'inquiry' => $this->inquiry,
            ]
        );
    }

    public function attachments(): array
    {
        return [];
    }
}



<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class AdminNewInquiry extends Mailable
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
            subject: 'New Property Inquiry',
        );
    }

    public function content(): Content
    {
        return new Content(
            view: 'emails.admin.inquiry_new',
            with: [ 'inquiry' => $this->inquiry ]
        );
    }

    public function attachments(): array
    {
        return [];
    }
}



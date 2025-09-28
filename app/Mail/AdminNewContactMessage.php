<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class AdminNewContactMessage extends Mailable
{
    use Queueable, SerializesModels;

    public array $messageData;

    public function __construct(array $messageData)
    {
        $this->messageData = $messageData;
    }

    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'New Contact Message',
        );
    }

    public function content(): Content
    {
        return new Content(
            view: 'emails.admin.contact_message_new',
            with: [ 'messageData' => $this->messageData ]
        );
    }

    public function attachments(): array
    {
        return [];
    }
}



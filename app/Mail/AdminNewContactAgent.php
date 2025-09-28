<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class AdminNewContactAgent extends Mailable
{
    use Queueable, SerializesModels;

    public array $contact;

    public function __construct(array $contact)
    {
        $this->contact = $contact;
    }

    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'New Agent Contact Request',
        );
    }

    public function content(): Content
    {
        return new Content(
            view: 'emails.admin.contact_agent_new',
            with: [ 'contact' => $this->contact ]
        );
    }

    public function attachments(): array
    {
        return [];
    }
}



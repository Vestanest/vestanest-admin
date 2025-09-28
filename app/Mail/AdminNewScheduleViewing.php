<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class AdminNewScheduleViewing extends Mailable
{
    use Queueable, SerializesModels;

    public array $schedule;

    public function __construct(array $schedule)
    {
        $this->schedule = $schedule;
    }

    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'New Viewing Scheduled',
        );
    }

    public function content(): Content
    {
        return new Content(
            view: 'emails.admin.schedule_viewing_new',
            with: [ 'schedule' => $this->schedule ]
        );
    }

    public function attachments(): array
    {
        return [];
    }
}



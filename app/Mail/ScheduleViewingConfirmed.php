<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class ScheduleViewingConfirmed extends Mailable
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
            subject: 'Your viewing is scheduled',
        );
    }

    public function content(): Content
    {
        return new Content(
            view: 'emails.schedule_viewing',
            with: [
                'schedule' => $this->schedule,
            ]
        );
    }

    public function attachments(): array
    {
        return [];
    }
}



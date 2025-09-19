<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;

class ContactMessage extends Model
{
    use HasFactory, LogsActivity;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'phone',
        'subject',
        'message',
        'message_type',
        'status',
        'ip_address',
        'user_agent',
    ];

    /**
     * Scope a query to only include new messages.
     */
    public function scopeNew($query)
    {
        return $query->where('status', 'new');
    }

    /**
     * Scope a query to only include read messages.
     */
    public function scopeRead($query)
    {
        return $query->where('status', 'read');
    }

    /**
     * Scope a query to only include replied messages.
     */
    public function scopeReplied($query)
    {
        return $query->where('status', 'replied');
    }

    /**
     * Scope a query to only include closed messages.
     */
    public function scopeClosed($query)
    {
        return $query->where('status', 'closed');
    }

    /**
     * Scope a query to filter by message type.
     */
    public function scopeOfType($query, $type)
    {
        return $query->where('message_type', $type);
    }

    /**
     * Get the message types.
     */
    public static function getTypes(): array
    {
        return [
            'general' => 'General',
            'support' => 'Support',
            'partnership' => 'Partnership',
            'feedback' => 'Feedback',
        ];
    }

    /**
     * Get the message statuses.
     */
    public static function getStatuses(): array
    {
        return [
            'new' => 'New',
            'read' => 'Read',
            'replied' => 'Replied',
            'closed' => 'Closed',
        ];
    }

    /**
     * Mark the message as read.
     */
    public function markAsRead(): void
    {
        $this->update(['status' => 'read']);
    }

    /**
     * Mark the message as replied.
     */
    public function markAsReplied(): void
    {
        $this->update(['status' => 'replied']);
    }

    /**
     * Mark the message as closed.
     */
    public function markAsClosed(): void
    {
        $this->update(['status' => 'closed']);
    }

    /**
     * Get the activity log options for the model.
     */
    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnly(['name', 'email', 'phone', 'subject', 'message', 'message_type', 'status'])
            ->logOnlyDirty()
            ->dontSubmitEmptyLogs();
    }
}

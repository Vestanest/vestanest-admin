<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;

class Inquiry extends Model
{
    use HasFactory, LogsActivity;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'property_id',
        'user_id',
        'name',
        'email',
        'phone',
        'message',
        'inquiry_type',
        'status',
        'preferred_date',
        'preferred_time',
        'agent_notes',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'preferred_date' => 'date',
    ];

    /**
     * Get the property that the inquiry is about.
     */
    public function property(): BelongsTo
    {
        return $this->belongsTo(Property::class);
    }

    /**
     * Get the user who made the inquiry.
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Scope a query to only include new inquiries.
     */
    public function scopeNew($query)
    {
        return $query->where('status', 'new');
    }

    /**
     * Scope a query to only include contacted inquiries.
     */
    public function scopeContacted($query)
    {
        return $query->where('status', 'contacted');
    }

    /**
     * Scope a query to only include scheduled inquiries.
     */
    public function scopeScheduled($query)
    {
        return $query->where('status', 'scheduled');
    }

    /**
     * Scope a query to only include completed inquiries.
     */
    public function scopeCompleted($query)
    {
        return $query->where('status', 'completed');
    }

    /**
     * Scope a query to filter by inquiry type.
     */
    public function scopeOfType($query, $type)
    {
        return $query->where('inquiry_type', $type);
    }

    /**
     * Get the inquiry types.
     */
    public static function getTypes(): array
    {
        return [
            'viewing' => 'Property Viewing',
            'information' => 'Information Request',
            'offer' => 'Make Offer',
            'general' => 'General Inquiry',
        ];
    }

    /**
     * Get the inquiry statuses.
     */
    public static function getStatuses(): array
    {
        return [
            'new' => 'New',
            'contacted' => 'Contacted',
            'scheduled' => 'Scheduled',
            'completed' => 'Completed',
            'cancelled' => 'Cancelled',
        ];
    }

    /**
     * Get the formatted preferred date and time.
     */
    public function getFormattedPreferredDateTimeAttribute(): string
    {
        if (!$this->preferred_date) {
            return 'Not specified';
        }

        $date = $this->preferred_date instanceof \Carbon\Carbon
            ? $this->preferred_date->format('M j, Y')
            : $this->preferred_date;
        $time = $this->preferred_time ?: 'Any time';

        return "{$date} at {$time}";
    }

    /**
     * Get the activity log options for the model.
     */
    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnly(['property_id', 'user_id', 'name', 'email', 'phone', 'message', 'inquiry_type', 'status', 'preferred_date', 'preferred_time', 'agent_notes'])
            ->logOnlyDirty()
            ->dontSubmitEmptyLogs();
    }
}

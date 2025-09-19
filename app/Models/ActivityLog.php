<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Models\Activity;

class ActivityLog extends Activity
{
    use HasFactory;

    // All properties are inherited from Spatie\Activitylog\Models\Activity

    // subject() and causer() methods are inherited from Spatie\Activitylog\Models\Activity

    // Custom scopes for your application
    public function scopeByLogName($query, $logName)
    {
        return $query->where('log_name', $logName);
    }

    public function scopeByEvent($query, $event)
    {
        return $query->where('event', $event);
    }

    public function scopeBySubjectType($query, $subjectType)
    {
        return $query->where('subject_type', $subjectType);
    }

    public function scopeByCauserType($query, $causerType)
    {
        return $query->where('causer_type', $causerType);
    }

    public function scopeDateRange($query, $startDate, $endDate)
    {
        return $query->whereBetween('created_at', [$startDate, $endDate]);
    }

    /**
     * Get the available events.
     */
    public static function getEvents(): array
    {
        return [
            'created' => 'Created',
            'updated' => 'Updated',
            'deleted' => 'Deleted',
            'restored' => 'Restored',
            'login' => 'Login',
            'logout' => 'Logout',
            'password_changed' => 'Password Changed',
            'email_verified' => 'Email Verified',
        ];
    }

    /**
     * Get the available log names.
     */
    public static function getLogNames(): array
    {
        return [
            'auth' => 'Authentication',
            'property' => 'Property',
            'user' => 'User',
            'inquiry' => 'Inquiry',
            'review' => 'Review',
            'system' => 'System',
        ];
    }

    /**
     * Get the formatted description.
     */
    public function getFormattedDescriptionAttribute(): string
    {
        return $this->description ?? 'No description available';
    }

    /**
     * Get the subject name.
     */
    public function getSubjectNameAttribute(): string
    {
        if (!$this->subject) {
            return 'Unknown';
        }

        return method_exists($this->subject, 'getFullNameAttribute')
            ? $this->subject->full_name
            : $this->subject->title ?? $this->subject->name ?? 'Unknown';
    }

    /**
     * Get the causer name.
     */
    public function getCauserNameAttribute(): string
    {
        if (!$this->causer) {
            return 'System';
        }

        return method_exists($this->causer, 'getFullNameAttribute')
            ? $this->causer->full_name
            : $this->causer->name ?? 'Unknown';
    }
}

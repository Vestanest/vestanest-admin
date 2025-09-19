<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;

class PropertyComparison extends Model
{
    use HasFactory, LogsActivity;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'user_id',
        'name',
    ];

    /**
     * Get the user who owns this comparison.
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Get the properties in this comparison.
     */
    public function properties(): BelongsToMany
    {
        return $this->belongsToMany(Property::class, 'property_comparison_items', 'comparison_id', 'property_id')
                    ->withPivot('order')
                    ->orderBy('pivot_order');
    }


    /**
     * Add a property to the comparison.
     */
    public function addProperty(Property $property, ?int $order = null): void
    {
        if ($order === null) {
            $order = $this->properties()->count() + 1;
        }

        $this->properties()->attach($property->id, ['order' => $order]);
    }

    /**
     * Remove a property from the comparison.
     */
    public function removeProperty(Property $property): void
    {
        $this->properties()->detach($property->id);
    }

    /**
     * Check if a property is in this comparison.
     */
    public function hasProperty(Property $property): bool
    {
        return $this->properties()->where('property_id', $property->id)->exists();
    }

    /**
     * Get the number of properties in this comparison.
     */
    public function getPropertyCountAttribute(): int
    {
        return $this->properties()->count();
    }

    /**
     * Check if the comparison is empty.
     */
    public function isEmpty(): bool
    {
        return $this->properties()->count() === 0;
    }

    /**
     * Get the maximum number of properties allowed in a comparison.
     */
    public static function getMaxProperties(): int
    {
        return 5; // You can adjust this limit as needed
    }

    /**
     * Check if the comparison has reached the maximum number of properties.
     */
    public function isFull(): bool
    {
        return $this->properties()->count() >= self::getMaxProperties();
    }

    /**
     * Get the activity log options for the model.
     */
    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnly(['user_id', 'name'])
            ->logOnlyDirty()
            ->dontSubmitEmptyLogs();
    }
}

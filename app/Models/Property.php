<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;

class Property extends Model
{
    use HasFactory, LogsActivity;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'title',
        'description',
        'detailed_description',
        'image',
        'images',
        'location',
        'city',
        'region',
        'latitude',
        'longitude',
        'price',
        'price_type',
        'property_type',
        'bedrooms',
        'bathrooms',
        'area_sqm',
        'area_sqft',
        'year_built',
        'floors',
        'parking_spaces',
        'is_featured',
        'status',
        'views_count',
        'favorites_count',
        'rating',
        'owner_id',
        'agent_id',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'price' => 'decimal:2',
        'latitude' => 'decimal:8',
        'longitude' => 'decimal:8',
        'area_sqm' => 'decimal:2',
        'area_sqft' => 'decimal:2',
        'is_featured' => 'boolean',
        'rating' => 'decimal:2',
        'images' => 'array',
    ];

    /**
     * Get the property owner.
     */
    public function owner(): BelongsTo
    {
        return $this->belongsTo(User::class, 'owner_id');
    }

    /**
     * Get the property agent.
     */
    public function agent(): BelongsTo
    {
        return $this->belongsTo(User::class, 'agent_id');
    }

    /**
     * Get the property amenities.
     */
    public function amenities(): BelongsToMany
    {
        return $this->belongsToMany(PropertyAmenity::class, 'property_property_amenity');
    }

    /**
     * Get the users who favorited this property.
     */
    public function favoritedBy(): BelongsToMany
    {
        return $this->belongsToMany(User::class, 'favorites');
    }

    /**
     * Get the property views.
     */
    public function views(): HasMany
    {
        return $this->hasMany(PropertyView::class);
    }

    /**
     * Get the property inquiries.
     */
    public function inquiries(): HasMany
    {
        return $this->hasMany(Inquiry::class);
    }

    /**
     * Get the property reviews.
     */
    public function reviews(): HasMany
    {
        return $this->hasMany(Review::class);
    }

    /**
     * Get the schedule viewings for this property.
     */
    public function scheduleViewings(): HasMany
    {
        return $this->hasMany(ScheduleViewing::class);
    }

    /**
     * Get the contact agent requests for this property.
     */
    public function contactAgents(): HasMany
    {
        return $this->hasMany(ContactAgent::class);
    }

    /**
     * Get the property comparisons that include this property.
     */
    public function propertyComparisons(): BelongsToMany
    {
        return $this->belongsToMany(PropertyComparison::class, 'property_comparison_property');
    }

    /**
     * Scope a query to only include featured properties.
     */
    public function scopeFeatured($query)
    {
        return $query->where('is_featured', true);
    }


    /**
     * Scope a query to only include available properties.
     */
    public function scopeAvailable($query)
    {
        return $query->where('status', 'available');
    }

    /**
     * Scope a query to filter by property type.
     */
    public function scopeOfType($query, $type)
    {
        return $query->where('property_type', $type);
    }

    /**
     * Scope a query to filter by price range.
     */
    public function scopePriceRange($query, $min, $max)
    {
        return $query->whereBetween('price', [$min, $max]);
    }

    /**
     * Scope a query to filter by location.
     */
    public function scopeInLocation($query, $location)
    {
        return $query->where('location', 'like', "%{$location}%");
    }

    /**
     * Get the formatted price.
     */
    public function getFormattedPriceAttribute(): string
    {
        return 'GH¢ ' . number_format((float) $this->price, 2);
    }

    /**
     * Get the average rating.
     */
    public function getAverageRatingAttribute(): float
    {
        return $this->rating ?? 0;
    }

    /**
     * Check if the property is for sale.
     */
    public function isForSale(): bool
    {
        return $this->price_type === 'sale';
    }

    /**
     * Check if the property is for rent.
     */
    public function isForRent(): bool
    {
        return $this->price_type === 'rent';
    }

    /**
     * Get the activity log options for the model.
     */
    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnly([
                'title',
                'price',
                'price_type',
                'property_type',
                'status',
                'is_featured',
                'bedrooms',
                'bathrooms',
                'area_sqm',
                'area_sqft',
                'year_built',
                'floors',
                'parking_spaces',
                'location',
                'city',
                'region',
                'owner_id',
                'agent_id'
            ])
            ->logOnlyDirty()
            ->dontSubmitEmptyLogs()
            ->setDescriptionForEvent(fn(string $eventName) => "Property {$eventName}")
            ->useLogName('property');
    }
}

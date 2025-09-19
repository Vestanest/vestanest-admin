<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('properties', function (Blueprint $table) {
            $table->id();
            $table->string('title', 255);
            $table->text('description')->nullable();
            $table->string('image')->nullable();
            $table->json('images')->nullable();
            $table->longText('detailed_description')->nullable();
            $table->string('location', 255);
            $table->string('city', 100);
            $table->string('region', 100);
            $table->decimal('latitude', 10, 8)->nullable();
            $table->decimal('longitude', 11, 8)->nullable();
            $table->decimal('price', 12, 2);
            $table->enum('price_type', ['sale', 'rent']);
            $table->enum('property_type', [
                'apartment',
                'house',
                'villa',
                'townhouse',
                'office',
                'land',
                'commercial'
            ]);
            $table->integer('bedrooms')->default(0);
            $table->integer('bathrooms')->default(0);
            $table->decimal('area_sqm', 8, 2)->nullable();
            $table->decimal('area_sqft', 8, 2)->nullable();
            $table->integer('year_built')->nullable();
            $table->integer('floors')->default(1);
            $table->integer('parking_spaces')->default(0);
            $table->boolean('is_featured')->default(false);
            $table->enum('status', [
                'available',
                'sold',
                'rented',
                'pending',
                'off_market'
            ])->default('available');
            $table->integer('views_count')->default(0);
            $table->integer('favorites_count')->default(0);
            $table->decimal('rating', 3, 2)->default(0.00);
            $table->foreignId('owner_id')->nullable()->constrained('users')->onDelete('set null');
            $table->foreignId('agent_id')->nullable()->constrained('users')->onDelete('set null');
            $table->timestamps();

            // Indexes for better performance
            $table->index('location');
            $table->index('city');
            $table->index('price');
            $table->index('property_type');
            $table->index('status');
            $table->index('is_featured');
            $table->index('created_at');

            // Regular index for coordinates (spatial index requires special setup)
            $table->index(['latitude', 'longitude'], 'idx_coordinates');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('properties');
    }
};
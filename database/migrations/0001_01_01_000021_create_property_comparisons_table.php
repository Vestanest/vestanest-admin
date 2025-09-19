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
        Schema::create('property_comparisons', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->onDelete('cascade');
            $table->string('name', 255)->nullable(); // Optional name for the comparison
            $table->timestamps();

            // Indexes for better performance
            $table->index('user_id');
        });

        Schema::create('property_comparison_items', function (Blueprint $table) {
            $table->id();
            $table->foreignId('comparison_id')->constrained('property_comparisons')->onDelete('cascade');
            $table->foreignId('property_id')->constrained('properties')->onDelete('cascade');
            $table->integer('order')->default(0); // Order in the comparison
            $table->timestamps();

            // Ensure a property can only be added once to a comparison
            $table->unique(['comparison_id', 'property_id'], 'unique_comparison_property');

            // Indexes for better performance
            $table->index('comparison_id');
            $table->index('property_id');
            $table->index('order');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('property_comparison_items');
        Schema::dropIfExists('property_comparisons');
    }
};

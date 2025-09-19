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
        Schema::create('inquiries', function (Blueprint $table) {
            $table->id();
            $table->foreignId('property_id')->constrained('properties')->onDelete('cascade');
            $table->foreignId('user_id')->nullable()->constrained('users')->onDelete('set null');
            $table->string('name', 255);
            $table->string('email', 255);
            $table->string('phone', 20)->nullable();
            $table->text('message')->nullable();
            $table->enum('inquiry_type', [
                'viewing',
                'information',
                'offer',
                'general'
            ]);
            $table->enum('status', [
                'new',
                'contacted',
                'scheduled',
                'completed',
                'cancelled'
            ])->default('new');
            $table->date('preferred_date')->nullable();
            $table->time('preferred_time')->nullable();
            $table->text('agent_notes')->nullable();
            $table->timestamps();

            // Indexes for better performance
            $table->index('property_id');
            $table->index('user_id');
            $table->index('status');
            $table->index('created_at');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('inquiries');
    }
};

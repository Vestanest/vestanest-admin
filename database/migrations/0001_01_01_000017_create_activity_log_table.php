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
        Schema::create('activity_log', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('log_name')->nullable();
            $table->text('description');
            $table->nullableMorphs('subject', 'subject');
            $table->string('event')->nullable();
            $table->nullableMorphs('causer', 'causer');
            $table->json('properties')->nullable();
            $table->uuid('batch_uuid')->nullable();
            $table->timestamps();
            $table->index('log_name');
        });

        Schema::create('activity_log_subject', function (Blueprint $table) {
            $table->unsignedBigInteger('activity_log_id');
            $table->unsignedBigInteger('subject_id');
            $table->string('subject_type');
            $table->primary(['activity_log_id', 'subject_id', 'subject_type'], 'activity_log_subject_primary');
        });

        Schema::create('activity_log_causer', function (Blueprint $table) {
            $table->unsignedBigInteger('activity_log_id');
            $table->unsignedBigInteger('causer_id');
            $table->string('causer_type');
            $table->primary(['activity_log_id', 'causer_id', 'causer_type'], 'activity_log_causer_primary');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('activity_log_causer');
        Schema::dropIfExists('activity_log_subject');
        Schema::dropIfExists('activity_log');
    }
};
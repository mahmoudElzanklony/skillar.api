<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobsOffersSkillsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jobs_offers_skills', function (Blueprint $table) {
            $table->id();
            $table->foreignId('job_id')->constrained('jobs_offers')->cascadeOnUpdate()->cascadeOnDelete();
            $table->foreignId('skill_id')->constrained('skills')->cascadeOnUpdate()->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jobs_offers_skills');
    }
}

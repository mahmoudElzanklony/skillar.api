<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobsOffersApplicantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jobs_offers_applicants', function (Blueprint $table) {
            $table->id();
            $table->foreignId('job_id')->constrained('jobs_offers')->cascadeOnUpdate()->cascadeOnDelete();
            $table->foreignId('user_resume_id')->constrained('users_resumes')->cascadeOnUpdate()->cascadeOnDelete();
            $table->string('status')->default('pending');
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
        Schema::dropIfExists('jobs_offers_applicants');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAttributesSelectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('attributes_selections', function (Blueprint $table) {
            $table->id();
            $table->foreignId('attribute_id')->constrained()->onUpdate('cascade')->onDelete('cascade'); // refer for attbitues table
            $table->string('model'); // skills table , abilities table
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
        Schema::dropIfExists('attributes_selections');
    }
}

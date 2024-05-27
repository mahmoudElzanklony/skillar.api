<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTemplateSecAttrValueTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('template_sec_attr_value', function (Blueprint $table) {
            $table->id();
            $table->foreignId('template_section_id')->constrained('templates_sections');
            $table->foreignId('attribute_id')->nullable(); // i make it this because in some case you want to add image in specific section so there is no attribute_id
            // and no answer and i will add image using elements_style
            $table->text('answer');
            $table->string('answer_type'); // text , selections
            $table->string('content_width');
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
        Schema::dropIfExists('template_sec_attr_value');
    }
}

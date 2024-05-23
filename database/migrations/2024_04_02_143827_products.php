<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Products extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id('id_product');
            $table->bigInteger('id_category')->unsigned();
            $table->bigInteger('id_brand')->unsigned();
            $table->string('name', 255);
            $table->longText('description');
            $table->integer('stock');
            $table->decimal('value', 20, 2);
            $table->decimal('cost', 20, 2);
            $table->decimal('discount', 5, 2);
            $table->decimal('tax', 5, 2);
            $table->decimal('qualification', 5, 2);
            $table->timestamps();

            // Foreign key constraints
            $table->foreign('id_category')->references('id_category')->on('category');
            $table->foreign('id_brand')->references('id_brand')->on('brand');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('products');
    }
}

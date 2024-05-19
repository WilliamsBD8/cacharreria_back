<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class LineInvoices extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('line_invoice', function (Blueprint $table) {
            $table->bigIncrements('id_line_invoice');
            $table->bigInteger('id_invoice')->unsigned();
            $table->bigInteger('id_product')->unsigned();
            $table->decimal('value', 20, 2)->nullable();
            $table->decimal('cost', 20, 2)->nullable();
            $table->integer('quantity')->nullable();
            $table->decimal('line_tax', 20, 2)->nullable();
            $table->timestamps();

            $table->foreign('id_invoice')->references('id_invoices')->on('invoices')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('id_product')->references('id_product')->on('products')->onDelete('CASCADE')->onUpdate('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}

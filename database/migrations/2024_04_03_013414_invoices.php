<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Invoices extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('invoices', function (Blueprint $table) {
            $table->id('id_invoices');
            $table->bigInteger('user_id')->unsigned();
            $table->bigInteger('status_invoice_id')->unsigned();
            $table->decimal('tax_amount', 20, 2)->nullable();
            $table->decimal('payable_amount', 20, 2)->nullable();
            $table->timestamps();

            $table->foreign('user_id')->references('id_user')->on('users')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('status_invoice_id')->references('id_status_invoice')->on('status_invoice')->onDelete('CASCADE')->onUpdate('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Users extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id('id_user');
            $table->bigInteger('id_rol')->unsigned();
            $table->string('name', 45);
            $table->string('email', 191);
            $table->string('username', 45);
            $table->string('password', 100);
            $table->string('photo', 100)->nullable();
            $table->enum('status', ['active', 'inactive'])->default('active')->nullable();
            $table->timestamps();

            $table->foreign('id_rol')->references('id_rol')->on('roles')->onDelete('CASCADE')->onUpdate('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}

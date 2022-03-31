<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Producs extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('problems', function (Blueprint $table) {
            $table->id();
            $table->string('user_id');
            $table->string('tgl_problem');
            $table->string('line_id');
            $table->timestamp('supllier');
            $table->string('foto');
            $table->string('penyebab');
            $table->string('penanganan');
            $table->string('pic_problem');
            $table->string('tgl_penanganan');
            $table->string('yokoten');
            $table->string('note');
            $table->string('pic_penanganan');
            $table->rememberToken();
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
         Schema::dropIfExists('problems');
    }
}

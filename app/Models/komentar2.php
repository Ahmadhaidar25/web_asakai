<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class komentar2 extends Model
{
    use HasFactory;

    protected $table = 'komentar2'; 

    public function komentar()
    {
        return $this->belongsTo(komentar::class);
    }

     public function problem()
    {
        return $this->belongsTo(problems::class);
    }
}

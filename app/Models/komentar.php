<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;



class komentar extends Model
{
    use HasFactory;

    protected $table = 'komentar'; 
    protected $guarded=['id'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
    
   

    public function problem()
    {
        return $this->belongsTo(problems::class);
    }

    public function replay()
    {
        return $this->hasMany(komentar::class,'parent');
    }

    public function new_replay()
    {
        return $this->hasMany(komentar::class,'new_parent');
    }

    public function komentar2()
    {
        return $this->hasMany(komentar2::class);
    }
}

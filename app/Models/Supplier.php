<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class supplier extends Model
{
    use HasFactory;

    use HasFactory;
    protected $table = 'supplier';
    protected $fillable=['id','kode_supplier','nama_supplier'];



   public function problems()
    {
        return $this->hasMany(problems::class);
    }
}

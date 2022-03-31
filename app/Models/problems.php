<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class problems extends Model
{
    use HasFactory;

    protected $table = "problems";
    protected $fillable =[

     'nama_produk',
     'tgl_problem',
     'line',
     'supllier',
     'foto',
     'penyebab',
     'penanganan',
     'pic_problem',
     'tgl_penanganan',
     'tindakan_pencegahan',
     'yokoten',
     'note',
     'pic_penanganan',
     'status'
];
    //protected $guarded = ['id'];



     public function user()
    {
        return $this->belongsTo(User::class);
    }

      public function komentar()
    {
        return $this->hasMany(komentar::class);
    }

     public function line()
    {
        return $this->belongsTo(Line::class);
    }

      public function supplier()
    {
        return $this->belongsTo(supplier::class);
    }
}

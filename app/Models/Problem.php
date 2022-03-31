<?php

// namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
// use Illuminate\Database\Eloquent\Model;
// use Auth;
// use App\Traits\Multitenant;
// use App\Models\Comment;
// use App\Models\User;


// class Problem extends Model
// {
//     use HasFactory;
//     use Multitenant;
    
//     protected $table = 'problem';

//     public function save(array $options = [])
//     {
//         if (Auth::user()) {
//             $this->user_id = Auth::user()->getKey();

//             $this->created_by = Auth::user()->name;
//             //you may use user's name or any other property
//             $this->updated_by = Auth::user()->name;
//         }

//         return parent::save();
//     } 
    
//     public function user()
//     {
//         return $this->belongsTo(User::class);
//     }

//     public function comments()
//     {
//         return $this->morphMany(Comment::class, 'commentable')->whereNull('parent_id');
//     }
// }

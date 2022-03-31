<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\komentar;
//use App\Models\komentar2;
use App\Models\problems;
use Auth;

class CommentController extends Controller
{
    //

    public function post_comment(Request $request)
    {
        //dd($request->all());
        $this->validate($request,[
          'komentar' => 'required'
      ]);
        $comment = new komentar;
        $comment->user_id = Auth::user()->id;
        $comment->komentar = $request->komentar;
        $comment->problems_id = $request->problems_id;
        $comment->parent = $request->parent;

        $comment->save();
        return back();
    }
    public function comment($id)
    {
        $view_comment = problems::find($id);
        return view('comment', compact('view_comment'));
    }

    public function replay_comment(Request $request)
    {
        $this->validate($request,[
          'komentar' => 'required'
      ]);
        
        $balas = new komentar;
        $balas->user_id = Auth::user()->id;
        $balas->komentar = $request->komentar;
        $balas->problems_id = $request->problems_id;
        $balas->parent = $request->parent;

        $balas->save();
        return back();
    }
   
   
}

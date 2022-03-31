<?php

namespace App\Http\Controllers\Voyager;

use TCG\Voyager\Http\Controllers\VoyagerController as BaseVoyagerController;
use App\Models\problems;
use DB;

class VoyagerController extends BaseVoyagerController
{
    public function index()
    {

        $all_problem = problems::all()->count();
        $new = problems::whereDay('created_at', date("d"))->count();
        $open = problems::where('status',1)->count();
        $colse = problems::where('status',0)->count();

        $line1 = problems::where('line_id', 1)->count();
        $line2 = problems::where('line_id', 2)->count();
        $line3 = problems::where('line_id', 3)->count();
        $line4 = problems::where('line_id', 4)->count();
        $line5 = problems::where('line_id', 5)->count();
        $line6 = problems::where('line_id', 6)->count();
        $line7 = problems::where('line_id', 7)->count();
        $line8 = problems::where('line_id', 8)->count();
        $line9 = problems::where('line_id', 9)->count();
        $bending1 = problems::where('line_id',10)->count();
        $bending2 = problems::where('line_id', 11)->count();
        $samer = problems::where('line_id', 12)->count();


        return view('index',compact('open','colse','line1','line2','line3','line4','line5',
            'line6','line7','line8','line9','bending1','bending2','samer','new','all_problem'));
    }
}

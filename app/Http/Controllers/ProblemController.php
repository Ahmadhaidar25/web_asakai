<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\problems;
use App\Models\Line;
use App\Models\supplier;
use App\Models\User;
use Auth;
use PDF;
use Illuminate\Support\Facades\File;
//use Rappasoft\LaravelLivewireTables\Views\Column;
use session;
use DB;
class ProblemController extends Controller
{



    public function index()
    {
        $problem = problems::orderBy('tgl_problem','desc')->get();
        $record = problems::all()->count();
        return view('problem',compact('problem','record'));

    }


    public function create()
    {
     $line = Line::all();
     $supplier = supplier::all();

     return view('add_problem', compact('line','supplier'));
 }


 public function store(Request $request)
 {
    //dd($request->all());
    $this->validate($request,[
      'nama_produk' => 'required',
      'tgl_problem' => 'required',
      'line_id' => 'required',
      'foto' => 'required',
      'penyebab' => 'required',
      'pic_problem' => 'required'
  ]);

    $nm = $request->foto;

    $namaFile = $nm->getClientOriginalName();

    $upload = new problems;
    $upload->user_id = Auth::user()->id;
    $upload->nama_produk = $request->nama_produk;
    $upload->tgl_problem = $request->tgl_problem;
    $upload->line_id = $request->line_id;
    $upload->supplier = $request->supplier;
    $upload->foto       = $namaFile;
    $upload->penyebab = $request->penyebab;
    $upload->penanganan = $request->penanganan;
    $upload->pic_problem = $request->pic_problem;
    $upload->tgl_penanganan = $request->tgl_penanganan;
    $upload->tindakan_pencegahan = $request->tindakan_pencegahan;
    $upload->yokoten = $request->yokoten;
    $upload->note = $request->note;
    $upload->pic_penanganan = $request->pic_penanganan;
    $upload->status = $request->status;

    $nm->move(public_path().'/images', $namaFile);
    
    alert()->success('Success','data added successfully');
    $upload->save();
    return redirect('problem');
}


public function show($id)
{
    $delete =  problems::find($id);
    $file = public_path('/images/').$delete->foto;
    if (file_exists($file)) 
    {
     @unlink($file);
 }
 alert()->success('Success','Delete Data');
 $delete->delete();
 return back();
}


public function comment($id)
{
    $problem = problems::find($id);
    return view('comment',compact('problem'));
}

public function edit($id)
{
    $edit = problems::find($id);
    $line = Line::all();
    $supplier = Supplier::all();
    return view('edit-problem', compact('edit','line','supplier'));

}

public function update(Request $request, $id)
{

    $ubah = problems::find($id);

    $ubah->nama_produk = $request['nama_produk'];
    $ubah->tgl_problem = $request['tgl_problem'];
    $ubah->line_id = $request['line_id'];
    $ubah->supplier = $request['supplier'];
    $ubah->penyebab = $request['penyebab'];
    $ubah->penanganan = $request['penanganan'];
    $ubah->pic_problem = $request['pic_problem'];
    $ubah->tgl_penanganan = $request['tgl_penanganan'];
    $ubah->tindakan_pencegahan = $request['tindakan_pencegahan'];
    $ubah->yokoten = $request['yokoten'];
    $ubah->note = $request['note'];
    $ubah->pic_penanganan = $request['pic_penanganan'];
    $ubah->status = $request['status'];


    if ($request->hasfile('foto')) 
    {
     $destination = '/images/'.$ubah->foto;

     if (File::exists($destination)) 
     {
         File::delete($destination);
     }

     $file = $request->file('foto');
     $extention = $file->getClientOriginalExtension();
     $filename = time().'.'.$extention;
     $file->move('images', $filename);
     $ubah->foto = $filename;
 }
 alert()->success('Success','Update Data');
 $ubah->update();
 return redirect('problem');



}

public function cetak($id)
{
    $problem = problems::find($id);
    return view('print.print_pdf', compact('problem'));

    // $pdf = PDF::loadview('print.print_pdf',['problem'=>$problem]);
    // return $pdf->stream('laporan-problem-pdf');
}

function detail($id)
{
    $detail = problems::find($id);
    return view('view-problem', compact('detail'));
}

public function zoom($id)
{
   $zoom = problems::find($id);
   return view('images.zoom-images',compact('zoom'));
}


public function filter(Request $request)
{

}
}

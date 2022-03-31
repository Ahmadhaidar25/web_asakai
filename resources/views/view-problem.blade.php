
@extends('voyager::master')

@section('content')
<style type="text/css">
 .rspv-tabel{
  overflow-x:auto;
}
.rspv-tabel thead {

}
.rspv-tabel table{
  width:100%;
  border-spacing:0;
  border-collapse:collapse;
  overflow:hidden;
}
.rspv-tabel table caption{
  font-size:18px;
  font-weight:bold;
  text-transform:uppercase;
  padding:10px 0;
}
.rspv-tabel table td,table th{
  padding:8px 10px;
  text-align:left;
  border:1px solid #dedede;
  font-family:sans-serif;
}

@media screen and (max-width:800px){
  .rspv-tabel{
    overflow-y:hidden;
    -ms-overflow-style:-ms-autohiding-scrollbar;
  }
  .rspv-tabel table td,table th{
    white-space:nowrap;
  }
}

#button {

  width: 100%;
  padding: 5px 0 10px 0;
}
#button a{
  text-decoration: none;
  color: #ecf0f1;
  width: 100px;
  padding: 5px 10px;
  margin:5px;
}
</style>

<div class="container">
 <h1>View</h1>
 <a href="{{url('problem')}}" class="btn btn-danger"><i class="bi bi-arrow-left"></i>&nbsp;Kembali (戻る)</a> Status = <label class="label {{ ($detail->status ==1) ? 'label-danger' : 'label-success' }} ">
   {{ ($detail->status == 1) ? 'Open': 'Close' }}
 </label><br>
 <div class="card">
  <div class="card-body rspv-tabel">
   <table class="table data">

     <thead >
      <tr>

        <th style=" background: #66a3ff; color: white;">Nama Users <br>ユーザー名</th>
        <th style=" background: #66a3ff; color: white;">Nama Produk <br>商品名</th>
        <th style=" background: #66a3ff; color: white;">Tanggal Problem <br>問題の日付</th>
        <th style=" background: #66a3ff; color: white;">Line <br>ライン</th>
        <th colspan="3" style=" background: #66a3ff; color: white;">Supllier <br>サプライヤー</th>



      </tr>
    </thead>

    <tbody>

     <tr>

       <td>{{$detail->user->name}}</td>
       <td>{{$detail->nama_produk}}</td>
       <td>{{$detail->tgl_problem}}</td>
       <td>{{$detail->line->nama_line}}</td>
       <td>{{$detail->supplier}}</td>
     </tr>

   </tbody>


   <thead>
    <tr>
      <th style=" background: #66a3ff; color: white;">Foto  <br>写真</th>
      <th style=" background: #66a3ff; color: white;">Penyebab <br>理由</th>
      <th style=" background: #66a3ff; color: white;">Penanganan <br>取り扱い</th>
      <th colspan="3" style=" background: #66a3ff; color: white;">Pic <br>担当者</th>

    </tr>
  </thead>

  <tbody>
    <tr>
     <td>
      <a href="{{url('/zoom-images/')}}/{{$detail->id}}" class="perbesar" target="_blank">
        <img src="{{asset('/images')}}/{{$detail->foto}}"  style="width:150px;">
      </a>
    </td>
    <td>{{$detail->penyebab}}</td>
    <td>{{$detail->penanganan}}</td>
    <td colspan="3">{{$detail->pic_problem}}</td>

  </tr>
</tbody>




<thead>
  <tr>
   <th style=" background: #66a3ff; color: white;">Tanggal Penanganan <br>取り扱い日</th>
   <th style=" background: #66a3ff; color: white;">Tindakan Pencegahan <br>予防</th>
   <th style=" background: #66a3ff; color: white;">Yokoten <br>よこてん</th>
   <th style=" background: #66a3ff; color: white;">Note <br>ノート</th>
   <th style=" background: #66a3ff; color: white;">Pic Penanganan <br>写真の取り扱い</th>
   <th style=" background: #66a3ff; color: white;">Status <br>スターテス</th>
 </tr>
</thead>

<tbody>
  <tr>
    <td>{{$detail->tgl_penanganan}}</td>
    <td>{{$detail->tindakan_pencegahan}}</td>
    <td>{{$detail->yokoten}}</td>
    <td>{{$detail->note}}</td>
    <td>{{$detail->pic_penanganan}}</td>
    <td>
      <label class="label {{ ($detail->status ==1) ? 'label-danger' : 'label-success' }} ">
       {{ ($detail->status == 1) ? 'Open': 'Close' }}
     </label>
   </td>
 </tr>
</tbody>





</table>
<hr>
<h1>Comment :</h1>
<form action="{{url('post-comment')}}" method="POST">
  @csrf

  <textarea class="form-control" name="komentar"></textarea>
  <input type="hidden" name="problems_id" value="{{$detail->id}}">
  <input type="hidden" name="parent" value="0">
  
  <button type="submit" class="btn btn-success">Kirim (送信)</button>
  
</form>
<hr>
@foreach ($detail->komentar()->where('parent',0)->orderBy('created_at','desc')->get() as $x)


<div class="card" style="box-shadow: 5px 5px; border: 1px solid;">
  <div class="card-body">
    <h5 class="card-title text-primary">{{$x->user->name}}<p class="text-warning"></p></h5>
    <p>{{$x->komentar}}</p>
    <p>{{$x->created_at->isoFormat('dddd, D MMM Y')}}</p>
  </div>
</div>


<br>

@foreach ($x->replay as $b)
<br>
<div class="card" style="box-shadow: 5px 5px; border: 1px solid; margin-left: 30px;">
  <div class="card-body">
    <h5 class="card-title text-primary">{{$b->user->name}}<p class="text-warning"></p></h5>
    <p>{{$b->komentar}}</p>
    <p>{{$b->created_at->isoFormat('dddd, D MMM Y')}}</p>
    
    
  </div>

</div>
<br>
@foreach ($b->replay as $f)
<br>
<div class="card" style="box-shadow: 5px 5px; border: 1px solid; margin-left: 80px;">
  <div class="card-body">

    <h5 class="card-title text-primary">{{$f->user->name}}<p class="text-warning"></p></h5>
    <!--<button class="btn btn-warning" onclick="fungsiSaya()" style="float: right; margin-top: -40px;">Balas (返事)</button>-->
    <p>{{$f->komentar}}</p>
    <p>{{$f->created_at->isoFormat('dddd, D MMM Y')}}</p>
    <p></p>
    
    
  </div>

</div>
@endforeach
<br>
<form action="{{url('komentar2')}}" method="POST" id="target" >
  @csrf
  <div class="form-floating">
   <input type="hidden" name="problems_id" value="{{$detail->id}}">
   <input type="hidden" name="parent" value="{{$b->id}}">
   <textarea class="form-control" name="komentar" placeholder="Balas" id="floatingTextarea" 
   style=" width: 85%; margin-left: 80px;"></textarea>
   
 </div>

 <button type="submit" style="margin-left: 80px;" class="btn btn-warning">Balas (返事)</button>
</form>

@endforeach
<br>
<br>
<form action="{{url('replay')}}" method="POST">
  @csrf
  <input type="text" name="komentar" class="form-control" placeholder="Balas">
  <input type="hidden" name="problems_id" value="{{$detail->id}}">
  <input type="hidden" name="parent" value="{{$x->id}}">

  <button type="submit" class="btn btn-success">Balas (返事)</button>
</form>
<hr>
@endforeach
</div>


</div>
</div>




<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

@stop
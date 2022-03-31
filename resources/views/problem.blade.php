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
</style>
<div class="container">
  <div class="container">

    <h1>Problem (問題)</h1>
    <div class="row justify-content-start">
      <div class="col-sm-3">
       @if (auth()->user()->role_id ==1)
       <a href="{{url('add_problem')}}" class="btn btn-success" id="myButton"><i class="bi bi-plus-lg"></i>Add New (新しく追加する)</a>
       @endif

        @if (auth()->user()->role_id ==2)
       <a href="{{url('add_problem')}}" class="btn btn-success" id="myButton"><i class="bi bi-plus-lg"></i>Add New (新しく追加する)</a>
       @endif

     </div>
   </div>
 </div>

 <div class="card shadow-lg p-3 mb-5 bg-body rounded">

  <div class="card-body rspv-tabel">

   <div class="row">
    <div class="col-sm-3">
     <p> Total Data (トータル) :
      {{$record}}
    </p>

  </div>
  <div class="container">

    <div class="col-sm-3">
  <select class="form-control" id="bulan">
 <?php $now = new \DateTime('now');
      $bln1 = $now->format('m');
      for($m=1; $m<=12; $m++){
          if ($bln1 == $m){
echo '<option selected value='.date('F', mktime(0, 0, 0, $m, 1)).'>'.date('F', mktime(0, 0, 0, $m, 1)).'</option>'."\n";
          }else{
echo '<option  value='.date('F', mktime(0, 0, 0, $m, 1)).'>'.date('F', mktime(0, 0, 0, $m, 1)).'</option>'."\n";
          }
}
?>
</select>

  </div>
  &nbsp;
  <div class="col-sm-3">

   <select class="form-control tahun">
    <?php 
    $year = date('Y');
    $min = $year - 11;
    $max = $year;
    for( $i=$max; $i>=$min; $i-- ) {
      echo '<option value='.$i.'>'.$i.'</option>';
    }?>
  </select>
</div>



</div>
</div>

<table id="table_id" class="display" style="width: 100%;">
  <br>
  <hr>
  <thead style=" background:  #66a3ff; color: white;">
    <tr>
    <th><b>Action アクション</th>
    <th><b>No<br>番号</th>
    <th><b>Nama<br>ユーザー名</th>
    <th><b>Nama Produk<br> 製品</th>
    <th><b>Tanggal Problem <br> 問題の日付</th>
    <th><b>Line <br>ライン</th>
    <th><b>Supllier <br>サプライヤー</th>
    <th><b>Foto <br>写真</th>
    <th><b>Penyebab <br>原因</th>
    <th><b>Penanganan <br>取り扱い</th>
    <th><b>Pic 担当者</th>
    <th><b>Tgl Penanganan <br>取り扱い日</th>
    <th><b>Tindak Pencegahan <br>予防</th>
    <th><b>Yokoten <br>よこてん</th>
    <th><b>Note <br>ノート</th>
    <th><b>Pic Penanganan <br>写真の取り扱い</th>
    <th><b>Status <br>スターテス</th>
    <th><b>Action <br>アクション</th>
    </tr>
    </thead>
    <tbody>
    @php $no = 1; @endphp
    @foreach ($problem as $x)
    <tr>
    <td>
    <a href="{{url('view-problem')}}/{{$x->id}}" class="btn btn-info" style="text-decoration: none;">
    <i class="bi bi-eye"></i></a>
    <a href="{{url('comment-problem')}}/{{$x->id}}" class="btn btn-warning" style="text-decoration: none;">
    <i class="bi bi-chat-right-dots"></i></a>
    </td>
    <td>{{$no++}}</td>
    <td>{{$x->user->name}}</td>
    <td>{{$x->nama_produk}}</td>
    <td> {{ date("d F Y", strtotime($x->tgl_problem)) }}</td>
    <td>{{$x->line->nama_line}}</td>
    <td>{{$x->supplier}}</td>
    <td scope="row">
    <a href="{{url('/zoom-images/')}}/{{$x->id}}" class="perbesar" target="_blank">
    <img src="{{asset('/images')}}/{{$x->foto}}"  style="width:80px;">
    </a>
    </td>
    <td>{{$x->penyebab}}</td>
    <td>{{$x->penanganan}}</td>
    <td>{{$x->pic_problem}}</td>
    <td>{{ $x->tgl_penanganan }}</td>
    <td>{{$x->tindakan_pencegahan}}</td>
    <td>{{$x->yokoten}}</td>
    <td>{{$x->note}}</td>
    <td>{{$x->pic_penanganan}}</td>
    <td>
    <label class="label {{ ($x->status ==1) ? 'label-danger' : 'label-success' }} ">
    {{ ($x->status == 1) ? 'Open': 'Close' }}
    </label>
  </td>
   <td>

  <div class="btn-group" role="group" aria-label="Basic mixed styles example">
  @if ($x->user->id == Auth::user()->id)
<a href="{{url('delete-problem')}}/{{$x->id}}" class="btn btn-danger btn1" style="text-decoration: none;">
<i class="bi bi-trash"></i></a>
@endif
@if (auth()->user()->role_id ==1)
<a href="{{url('edit-problem')}}/{{$x->id}}" class="btn btn-warning" style="text-decoration: none;">
<i class="bi bi-pencil-square"></i></a>
@endif
@if (auth()->user()->role_id ==2)
<a href="{{url('edit-problem')}}/{{$x->id}}" class="btn btn-warning" style="text-decoration: none;">
<i class="bi bi-pencil-square"></i></a>
@endif

<a href="{{url('cetak-problem')}}/{{$x->id}}" class="btn btn-success" style="text-decoration: none;"><i class="bi bi-printer"></i></a>
</div>
</td>
</tr>
@endforeach  
</tbody>
</table>  
</div>
</div>
</div>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $(".perbesar").fancybox();
});

$(document).ready( function () {
  $('#table_id').DataTable();
});

$(document).ready(function() {
  $('.display').DataTable();
  function filterData () {
    $('.display').DataTable().search(
      $('#bulan').val()
      ).draw();
  }
  $('#bulan').on('change', function () {
    console.log($('#bulan').val())
    filterData();
  });
});


$(document).ready(function() {
  $('.display').DataTable();
  function filterData () {
    $('.display').DataTable().search(
      $('.tahun').val()
      ).draw();
  }
  $('.tahun').on('change', function () {
    console.log( $('.tahun').val())
    filterData();
  });
});
</script>

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript">
  $(".btn1").click(function(e){
    e.preventDefault();
    var hapus = $(this).attr('href');
    Swal.fire({
      title: 'Yakin <br>確信している ?',
      text: 'Data Akan Di Hapus (データは削除されます)',
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#00cc00',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Ya'
      }).then((result) => {
        if (result.isConfirmed) {
          window.location = hapus;

         }
      })
    })
</script>
<script>
  $('#myButton').on('click', function () {
    var $btn = $(this).button('loading')
    // business logic...
    $btn.button('loading')
  })
</script>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
@include('sweetalert::alert')
@stop

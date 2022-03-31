<html>
<head>
	<title></title>



</head>
<style type="text/css">
 .table1 {
  font-family: sans-serif;
  color: #444;
  border-collapse: collapse;
  width: 50%;
  border: 1px solid #f2f5f7;
  width: 100%;
}

.table1 tr th{
  background: #35A9DB;
  color: #fff;
  font-weight: normal;
}

.table1, th, td {
  padding: 8px 20px;
  text-align: center;
}

.table1 tr:hover {
  background-color: #f5f5f5;
}

.table1 tr:nth-child(even) {
  background-color: #f2f2f2;
}
</style>
<link rel="stylesheet" type="text/css" href="{{url('bootstrap/css/bootstrap.css')}}">
<body>

  <br><br><br>
  
 
  <div class="row align-items-start">
    <div class="col">
     <img src="{{URL('logo/sdi2.png')}}" style="width: 90px; margin-left: 250px; margin-top: -70px;">
    </div>
    <div class="col">
      <h1 class="text-center" style="margin-top: -70px;">DATA PROBLEM<br>問題データ</h1>
    </div>
    <div class="col">
      <p style="margin-top: -70px;">
     {!! QrCode::size(80)->generate("http://192.168.210.249:11506/admin/login"); !!}
     </p>
    </div>
  </div>
  
 
  <div>
    

    <div class="row justify-content-between">
    <div class="col-4">
      <p style="margin-top: -10px;">ID Problem : {{$problem->id}}</p>
    </div>
    <div class="col-4">
      <p style="margin-left: 25px;">Tanggal Dan Tahun : <p id="tanggalwaktu" style="float: right; margin-top: -40px;"></p></p>
      
    </div>
  </div>

    
  
    <center>
      <table class="table-bordered mt-2" style="width: 100%;">

       <thead class="bg-info text-white">
        <tr>

          <th>Nama Users <br>(ユーザー名)</th>
          <th>Nama Produk <br>(商品名)</th>
          <th>Tanggal Problem <br>(問題の日付)</th>
          <th>Line (ライン)</th>
          <th colspan="3">Supllier <br>(サプライヤー)</th>



        </tr>
      </thead>

      <tbody>

       <tr>

         <td>{{$problem->user->name}}</td>
         <td>{{$problem->nama_produk}}</td>
         <td>{{$problem->tgl_problem}}</td>
         <td>{{$problem->line->nama_line}}</td>
         <td colspan="3">{{$problem->supplier}}</td>
       </tr>

     </tbody>


     <thead class="bg-info text-white">
      <tr>
        <th>Foto <br>(写真)</th>
        <th>Penyebab <br>(理由)</th>
        <th>Penanganan <br>(取り扱い)</th>
        <th colspan="3">Pic <br>(担当者)</th>
      </tr>
    </thead>

    <tbody>
      <tr>
       <td>
        <img src="{{asset('/images')}}/{{$problem->foto}}"  style="width:150px;">
      </td>
      <td>{{$problem->penyebab}}</td>
      <td>{{$problem->penanganan}}</td>
      <td colspan="3">{{$problem->pic_problem}}</td>
    </tr>
  </tbody>




  <thead class="bg-info text-white">
    <tr>
     <th>Tanggal Penanganan <br>(取り扱い日)</th>
     <th>Tindakan Pencegahan <br>(予防)</th>
     <th>Yokoten <br>(よこてん)</th>
     <th>Note <br>(ノート)</th>
     <th>Pic Penanganan <br>(写真の取り扱い)</th>
     <th>Status <br>(スターテス)</th>
   </tr>
 </thead>

 <tbody>
  <tr>
    <td rowspan="4">{{$problem->tgl_penanganan}}</td>
    <td>{{$problem->tindakan_pencegahan}}</td>
    <td>{{$problem->yokoten}}</td>
    <td>{{$problem->note}}</td>
    <td>{{$problem->pic_penanganan}}</td>
    <td>
      
     <button class="btn {{ ($problem->status ==1) ? 'btn-danger' : 'btn-success' }} disabled">
      {{ ($problem->status == 1) ? 'Open': 'Close' }}
    </button>

    
  </td>
</tr>
</tbody>





</table>
</center> 
</div>
</div>
</body>
<script>
  window.print();
</script>
<script>
 var dt = new Date();
 document.getElementById("tanggalwaktu").innerHTML = dt.toLocaleString();
</script>
</html>
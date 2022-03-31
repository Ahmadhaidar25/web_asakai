@extends('voyager::master')

@section('content')

<div class="page-content">
    @include('voyager::alerts')
    @include('voyager::dimmers')
    <div class="analytics-container">
        <div class="card">

            <div class="card-body" style="background:#ff9900; border-radius: 5px; 
            box-shadow: 5px 5px 5px;">
            <h1 class="card-title text-center" style="color: white;">PROBLEM QUALITY <br>
            品質の問題</h1>
            <div class="container">
                <div class="row">
                    <div class="col align-self-start">
                        <h4 style="color: white; margin-top: 15px;" id="tempatTanggal"></h4>
                    </div>
                    <div class="col align-self-end">
                        <h4 style="float: right; margin-top: -15px; color: white;">Total Problem : {{$all_problem}}</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
      <div class="col-sm-6">


        <div class="card" style="margin-top: 20px;">
          <div class="card-body">

           <div class="row align-items-start">
            <div class="col-sm-4">
              <div class="card text-center" style="margin-top: 20px; box-shadow: 5px 5px 5px; border-radius: 5px;">
                  <div class="card-header" style="background:   #1a53ff;">
                    <h1 style="color: white;">
                     NEW<br>新着
                 </h1>
             </div>
             <div class="card-body">
                <h1>{{$new}}</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
     <div class="card text-center" style="margin-top: 20px; box-shadow: 5px 5px 5px; border-radius: 5px;">
      <div class="card-header" style="background:  #b32d00;">
        <h1 style="color: white;">
            OPEN<br>開いた
        </h1>
    </div>
    <div class="card-body">
        <h1>
            {{$open}}
        </h1>
    </div>
</div>
</div>
<div class="col-sm-4">

    <div class="card text-center" style="margin-top: 20px; box-shadow: 5px 5px 5px; border-radius: 5px;">
      <div class="card-header" style="background:  #2eb82e;">
        <h1 style="color: white;">
            CLOSE<br>選ぶ
     </h1>
 </div>
 <div class="card-body">
    <h1>{{$colse}}</h1>
</div>

</div>
</div>
</div>








</div>
</div>


</div>

<div class="col-sm-6">
    <div class="card" style="margin-top: 20px;">
      <div class="card-body">
       <div>
        <canvas id="myChart"></canvas>
    </div>
</div>
</div>
</div>

</div>


<div style="width: 500px;height: 500px">
    <canvas id="myChart"></canvas>
</div>
</div>

<script type="text/javascript" src="{{url('chart/Chart.js')}}"></script>

<script>
   var xValues = ["Line1", "Line2", "Line3", "Line4", "Line5","Line6", "Line7", 
   "Line8", "Line9", "Bending1","Bending2","Samer"];
   var yValues = [{{$line1}}, {{$line2}}, {{$line3}}, {{$line4}}, {{$line5}}, {{$line6}},
   {{$line7}}, {{$line8}},{{$line9}},{{$bending1}},{{$bending2}},{{$samer}}];
   var barColors = ["red", "green","blue","orange","brown","purple", "#ff6600","blue","orange","brown","yellow","green"];

   new Chart("myChart", {
      type: "bar",
      data: {
        labels: xValues,
        datasets: [{
          backgroundColor: barColors,
          data: yValues
      }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      
  }
}
});
</script>

<script type='text/javascript'>

    var Tanggal = new Date();

    var Bulan =["Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember"];
    document.getElementById("tempatTanggal").innerHTML = Bulan[Tanggal.getMonth()]+" "+Tanggal.getFullYear();

</script>
@stop
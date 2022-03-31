@extends('voyager::master')

@section('content')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

<div class="card shadow-lg p-3 mb-5 bg-body rounded" style="margin-top: 20px;">
  <div class="container">
    <img src="{{asset('/images')}}/{{$view_comment->foto}}" class="card-img-top" style="width: 200px;">
  </div>
  <div class="card-body">
    <h5 class="card-title">Nama Produk (商品名)</h5>
    <p class="card-text">{{$view_comment->nama_produk}}</p>

    <h5 class="card-title">Penyebab (理由)</h5>
    <p class="card-text">{{$view_comment->penyebab}}</p>
    <hr>
    <h4>Comment : (コメント)</h4>
    <form action="{{url('post-comment')}}" method="POST">
    	@csrf

    	<textarea class="form-control" name="komentar"></textarea>
    	<input type="hidden" name="problems_id" value="{{$view_comment->id}}">
    	<input type="hidden" name="parent" value="0">
    	
    	<button type="submit" class="btn btn-success">Kirim (送信)</button>
      <a href="{{url('problem')}}" class="btn btn-danger"><i class="bi bi-arrow-left"></i>&nbsp;Kembali (戻る)</a>
    </form>
    
    <hr>
    @foreach ($view_comment->komentar()->where('parent',0)->orderBy('created_at','desc')->get() as $x)

    
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
       <input type="hidden" name="problems_id" value="{{$view_comment->id}}">
       <input type="hidden" name="parent" value="{{$b->id}}">
       <textarea class="form-control" placeholder="Balas" id="floatingTextarea" 
       style=" width: 85%; margin-left: 80px;" name="komentar"></textarea>
       
     </div>

     <button type="submit" style="margin-left: 80px;" class="btn btn-warning">Balas (返事)</button>
   </form>

   @endforeach
   <br>
   <br>
   <form action="{{url('replay')}}" method="POST">
    @csrf
    <input type="text" name="komentar" class="form-control" placeholder="Balas">
    <input type="hidden" name="problems_id" value="{{$view_comment->id}}">
    <input type="hidden" name="parent" value="{{$x->id}}">

    <button type="submit" class="btn btn-success">Balas (返事)</button>
  </form>
  <hr>
  @endforeach
</div>


</div>
</div>


<script>
  function fungsiSaya() {
    var x = document.getElementById("target");
    if (x.style.display === "none") {
      x.style.display = "block";
    } else {
      x.style.display = "none";
    }
  }
</script>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>



@stop
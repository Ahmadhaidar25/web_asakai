@extends('voyager::master')

@section('content')
<div class="container">

	<h1><b>Tambah Problem</b><br>問題を追加する</h1>
	<a href="{{url('problem')}}" class="btn btn-danger"><i class="bi bi-chevron-left"></i>
	Kembali (戻る)</a>
	<br><br>
	<div class="card">
		<div class="card-body">

			<form action="{{url('save_problem')}}" method="POST" enctype="multipart/form-data">
				@if (count($errors) > 0)
				<div class="alert alert-danger">
					<ul>
						@foreach ($errors->all() as $error)
						<li>{{ $error }}</li>
						@endforeach
					</ul>
				</div>
				@endif
				@csrf
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">
						<b>Nama Produk</b> (商品名) 
						<label class="form-label text-danger">*</label> 
					</label>

					
					<input type="text" class="form-control @error('nama_produk') is-invalid 
					@enderror" name="nama_produk" value="{{old('nama_produk')}}" autofocus 
					id="nama_produk">
					@error('nama_produk')
					<div class="invalid_feedback">
						{{ $error }}
					</div>
					@enderror
				</div>
					
				<div class="mb-3 mt-3">
					<label class="form-label"><b>Tanggal Problem</b> (問題の日付) 
						<label class="form-label text-danger">*</label>
					</label>
					<input type="date" class="form-control" name="tgl_problem" value="{{old('tgl_problem')}}">
				</div>
					
				<div class="mb-3 mt-3">
					<label class="form-label">
						<b>Line</b> (ライン)
						<label class="form-label text-danger">*</label>
					</label>
					<select class="form-control" name="line_id">
						<option value="">--Pilih Line--</option>
						@foreach ($line as $x)
						<option value="{{$x->id}}">{{$x->nama_line}}</option>
						@endforeach
					</select>
				</div>
					
				<div class="mb-3 mt-3">
					<label for="exampleFormControlInput1" class="form-label">
					<b>Supllier</b> (サプライヤー)</label>
					<select class="form-control" name="supplier">
						<option value="">--Pilih Supllier--</option>
						@foreach ($supplier as $y)
						<option value="{{$y->nama_supplier}}">{{$y->nama_supplier}}</option>
						@endforeach
					</select>
				</div>
					

				<div class="mb-3 mt-3">
					<label class="form-label"><b>Foto</b> (写真)
						<label class="form-label text-danger">*</label>
					</label>
					<input type="file" name="foto" class="form-control @error('foto') is-invalid @enderror" value="{{old('foto')}}" id="foto">
					@error('foto')
					<div class="invalid_feedback">
						{{ $error }}
					</div>
					@enderror
				</div>
               
				<div class="mb-3 mt-3">
					<label class="form-label"><b>Penyebab</b> (理由) 
						<label class="form-label text-danger">*</label>
					</label>
					<input type="text" name="penyebab" class="form-control @error('penyebab') is-invalid @enderror" value="{{old('penyebab')}}" id="penyebab">
					@error('penyebab')
					<div class="invalid_feedback">
						{{ $error }}
					</div>
					@enderror
				</div>
					
				<div class="mb-3 mt-3">
					<label for="exampleFormControlInput1" class="form-label">
					<b>Penanganan</b> (取り扱い)</label>
					<input type="text" name="penanganan" class="form-control">
				</div>
					
				<div class="mb-3 mt-3">
					<label class="form-label">
						<b>Pic Problem</b> (担当者) 
						<label class="form-label text-danger">*</label>
					</label>
					<input type="text" name="pic_problem" class="form-control @error('pic_problem') is-invalid @enderror" value="{{old('pic_problem')}}">
					@error('pic_problem')
					<div class="invalid_feedback">
						{{ $error }}
					</div>
					@enderror
				</div>
					
				<div class="mb-3 mt-3">
					<label for="exampleFormControlInput1" class="form-label">
					<b>Tanggal Penanganan</b> (取り扱い日)</label>
					<input type="date" name="tgl_penanganan" class="form-control">
				</div>

					
				<div class="mb-3 mt-3">
					<label for="exampleFormControlInput1" class="form-label">
					<b>Tindakan Pencegahan</b> (予防)</label>
					<input type="text" name="tindakan_pencegahan" class="form-control">
				</div>
					
				<div class="mb-3 mt-3">
					<label for="exampleFormControlInput1" class="form-label">
					<b>Yokoten</b> (よこてん)</label>
					<input type="text" name="yokoten" class="form-control">
				</div>
					
				<div class="mb-3 mt-3">
					<label for="exampleFormControlInput1" class="form-label">
					<b>Note</b> (ノート)</label>
					<input type="text" name="note" class="form-control">
				</div>
				<br>
				<div class="mb-3 mt-3">
					<label for="exampleFormControlInput1" class="form-label">
					<b>Pic Penanganan</b> (写真の取り扱い)</label>
					<input type="text" name="pic_penanganan" class="form-control">
				</div>
				
				<div class="mb-3 mt-3">
					<label class="form-label"><b>Status</b> (スターテス)
						<label class="form-label text-danger">*</label>
					</label>
					<select class="form-control" name="status">
						
						<option value="1">Open</option>
						<option value="0">Close</option>
					</select>
				</div>
				<br>
				<button type="submit" id="myButton" class="btn btn-primary">
				<b>Simpan</b> (保存)</button>
			</form>
		</div>
	</div>
</div>


<script>
	$(".theSelect").select2();
</script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
crossorigin="anonymous"></script>
<!-- js untuk bootstrap4  -->

<!-- js untuk select2  -->
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>


<script>
	$(document).ready(function () {
		$("#line").select2({
			
			placeholder: "search Line"
		});

		$("#supllier").select2({
			
			placeholder: "search Supplier"
		});
	});


	$('#myButton').on('click', function () {
		var $btn = $(this).button('loading')
    // business logic...
    $btn.button('loading')
})
</script>



@stop
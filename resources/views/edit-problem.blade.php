@extends('voyager::master')

@section('content')

<div class="container">


	<h1>Edit Problem (問題の編集)</h1>
	<a href="{{url('problem')}}" class="btn btn-danger"><i class="bi bi-chevron-left"></i>Kembali (戻る)</a>
	<div class="row align-items-center">
		<div class="col-4">
			<div class="card">
				<div class="card-body">

					<form action="{{url('update-problem/')}}/{{$edit->id}}" method="POST" enctype="multipart/form-data">
						@csrf
						@method('PUT')

						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Nama Produk (商品名)</label>
							<input type="text" class="form-control" name="nama_produk" value="{{$edit->nama_produk}}">
						</div>

						<div class="mb-3 mt-3">
							<label for="exampleFormControlInput1" class="form-label">Tanggal Problem (問題の日付)</label>
							<input type="date" class="form-control" name="tgl_problem" value="{{$edit->tgl_problem}}">
						</div>

						<div class="mb-3 mt-3">
							<label for="exampleFormControlInput1" class="form-label">
							Line (ライン)</label>
							<select class="form-control" name="line_id">
								<option value="{{$edit->line->id}}">{{$edit->line->nama_line}}</option>
								@foreach ($line as $z)
								<option value="{{$z->id}}">{{$z->nama_line}}</option>
								@endforeach

							</select>
						</div>

						<div class="mb-3 mt-3">
							<label for="exampleFormControlInput1" class="form-label">Supllier (サプライヤー)</label>
							<select class="form-control" name="supplier">
								<option value="{{$edit->nama_supplier}}">
									{{$edit->supplier}}
								</option>
								<hr>
								@foreach ($supplier as $k)
								<option value="{{$k->nama_supplier}}">
									{{$k->nama_supplier}}
								</option>
								@endforeach

							</select>
						</div>


						
						<img src="{{url('/images')}}/{{$edit->foto}}" class="img-thumbnail" 
						width="200" height="200" style="margin-top: 20px;">
						<input type="file" class="form-control" style="margin-top: 20px;" 
						name="foto" value="{{$edit->foto}}">
						
						


						<div class="mb-3 mt-5">
							<label for="exampleFormControlInput1" class="form-label mt-3">Penyebab (理由)</label>
							<input type="text" name="penyebab" class="form-control" value="{{$edit->penyebab}}">
						</div>

						<div class="mb-3 mt-3">
							<label for="exampleFormControlInput1" class="form-label">Penanganan (取り扱い)</label>
							<input type="text" name="penanganan" class="form-control" value="{{$edit->penanganan}}">
						</div>

						<div class="mb-3 mt-3">
							<label for="exampleFormControlInput1" class="form-label">
							Pic Problem (担当者)</label>
							<input type="text" name="pic_problem" class="form-control" value="{{$edit->pic_problem}}">
						</div>

						<div class="mb-3 mt-3">
							<label for="exampleFormControlInput1" class="form-label">Tanggal Penanganan (取り扱い日)</label>
							<input type="date" name="tgl_penanganan" class="form-control" value="{{$edit->tgl_penanganan}}">
						</div>

						<div class="mb-3 mt-3">
							<label for="exampleFormControlInput1" class="form-label">Tindakan Pencegahan (予防)</label>
							<input type="text" name="tindakan_pencegahan" class="form-control" value="{{$edit->tindakan_pencegahan}}">
						</div>

						<div class="mb-3 mt-3">
							<label for="exampleFormControlInput1" class="form-label">
							Yokoten (よこてん)</label>
							<input type="text" name="yokoten" class="form-control" value="{{$edit->yokoten}}">
						</div>

						<div class="mb-3 mt-3">
							<label for="exampleFormControlInput1" class="form-label">
							Note (ノート)</label>
							<input type="text" name="note" class="form-control" value="{{$edit->note}}">
						</div>
						<div class="mb-3 mt-3">
							<label for="exampleFormControlInput1" class="form-label">Pic Penanganan (写真の取り扱い)</label>
							<input type="text" name="pic_penanganan" class="form-control" value="{{$edit->pic_penanganan}}">
						</div>
						<br>
						<div class="mb-3 mt-3">
							<label class="form-label">Status (スターテス) *</label>
							<select class="form-control" name="status">
								<option value="{{$edit->status}}">Default</option>
								<option value="{{$edit->status}}">
									<p class="label {{ ($edit->status ==1) ? 
										'text-success' : 'text-danger' }} ">
										{{ ($edit->status == 1) ? 'Open': 'Close' }}
									</p>
								</option>
								<option value="">--Pilih Status--</option>

								<option value="1">Open</option>
								<option value="0">Close</option>
							</select>
						</div>
						<button type="submit" class="btn btn-primary">Update (アップデート)</button>
					</form>
				</div>
				

			</div>

			
		</div>






	</div>
</div>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<script>
	$(".theSelect").select2();
</script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
crossorigin="anonymous"></script>
<!-- js untuk bootstrap4  -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
crossorigin="anonymous"></script>
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
</script>

<script type="text/javascript">
	document.getElementById("uploadBtn").onchange = function () {
		document.getElementById("uploadFile").value = this.value;
	};
</script>
@stop
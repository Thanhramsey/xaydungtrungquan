<?php echo form_open_multipart('admin/sliders/insert'); ?>
<div class="content-wrapper" style="min-height: 454px;">
	<form action="<?php echo base_url() ?>admin/sliders/insert.html" enctype="multipart/form-data" method="post" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-picture"></i> Thêm sản phẩm</h1>
			<div class="breadcrumb">
				<button name="THEM_NEW" type="submit" class="btn btn-primary btn-sm">
					<span class="glyphicon glyphicon-floppy-save"></span> Lưu[Thêm]
				</button>
				<a class="btn btn-primary btn-sm" href="admin/sliders" role="button">
					<span class="glyphicon glyphicon-remove"></span> Thoát
				</a>
			</div>
		</section>
		<section class="content">
			<!-- Info boxes -->
			<div class="row">
				<div class="col-md-12">
					<div class="box">
						<div class="box-body">
							<div class="col-md-9">
								<!--ND-->
								<div class="form-group">
									<label>Tên sản phẩm<span class="maudo">(*)</span></label>
									<input type="text" name="name" placeholder="Tên sản phẩm" class="form-control">
									<div class="error" id="password_error"><?php echo form_error('name') ?></div>
								</div>
								<div class="form-group">
									<label>Ảnh sản phẩm<span class="maudo">(*)</span></label>
									<input type="file" id="image" name="img" onchange="loadFile(event)" style="display:none">
									<label for="image" class="btn-upload-img">Chọn file</label>
									<div class="anh" style="width:300px; height:280px; border:1px dashed black; padding: 5px">
										<!-- Chứa ảnh ở đây -->
										<img style="width:100%; height:100%;border-radius:10px" id="output" />
									</div>
								</div>
								<div class="form-group">
									<label>Hình ảnh thêm<span style="color:red;font-style:italic">(* tối đa 3 ảnh)</span></label>
									<input type="file"  id="image_list" name="image_list[]" multiple onchange="loadMulFile(event)" style="display:none">
									<label for="image_list" class="btn-upload-img">Chọn file</label>
									<div class="anh" style ="width:100%; height:280px; border:1px dashed black;border-radius:10px; padding: 5px; margin-bottom:10px">
										<!-- Chứa ảnh ở đây -->
										<img style="width:32%;margin-right:5px;border-right:1px solid black; height:100%;border-radius:10px" id="output1" />
										<img style="width:32%;margin-right:5px;border-right:1px solid black; height:100%;border-radius:10px" id="output2" />
										<img style="width:32%;margin-right:5px; height:100%;border-radius:10px" id="output3" />
									</div>
								</div>
								<div class="form-group">
									<label>Chi tiết sản phẩm<span class="maudo">(*)</span></label>
									<textarea name="detail" id="detail" class="form-control"></textarea>
									<script>
										CKEDITOR.replace('detail');
									</script>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Giá <span style="color:red;font-style:italic">(* Để 0 nếu chưa có giá)</span></label>
									<input name="price" class="form-control" type="number" value="0" min="0" step="1" max="1000000000">
								</div>
								<div class="form-group">
									<label>Trạng thái </label>
									<select name="status" class="form-control">
										<option value="1">Hoạt động</option>
										<option value="0">Ngừng hoạt động</option>
									</select>
								</div>
							</div>
						</div>
					</div><!-- /.box -->
				</div><!-- /.row -->
		</section><!-- /.content -->
	</form>
</div>


<script src="public/js/jquery-2.2.3.min.js"></script>
<script>
	var loadFile = function(event) {
		var output = document.getElementById('output');
		output.src = URL.createObjectURL(event.target.files[0]);
		output.onload = function() {
			URL.revokeObjectURL(output.src) // free memory
		}
	};
	var loadMulFile = function(event) {
		var output1 = document.getElementById('output1');
		var output2 = document.getElementById('output2');
		var output3 = document.getElementById('output3');

		if(event.target.files[0]){
			output1.style.display = "";
			output1.src = URL.createObjectURL(event.target.files[0]);
			output1.onload = function() {
				URL.revokeObjectURL(output1.src) // free memory
			}
		}else{
			output1.src = "";
			output1.onload = function() {
				URL.revokeObjectURL(output1.src) // free memory
			}
			output1.style.display = "none";
		}

		if(event.target.files[1]){
			output2.style.display = "";
			output2.src = URL.createObjectURL(event.target.files[1]);
			output2.onload = function() {
				URL.revokeObjectURL(output2.src) // free memory
			}
		}else{
			output2.src = "";
			output2.onload = function() {
				URL.revokeObjectURL(output2.src) // free memory
			}
			output2.style.display = "none";
		}

		if(event.target.files[2]){
			output3.style.display = "";
			output3.src = URL.createObjectURL(event.target.files[2]);
			output3.onload = function() {
				URL.revokeObjectURL(output3.src) // free memory
			}
		}else{
			output3.src = "";
			output3.onload = function() {
				URL.revokeObjectURL(output3.src) // free memory
			}
			output3.style.display = "none";
		}
	};



</script>
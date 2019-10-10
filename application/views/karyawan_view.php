<!DOCTYPE html>
<html>
<head>
	<title>Ajak Karyawan</title>
	 <link href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/datatables/css/dataTables.bootstrap.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/bootstrap-datepicker/css/bootstrap-datepicker3.min.css')?>" rel="stylesheet">
</head>
<body>
	<div class="container">
		<h1 style="font-size:20pt">Ajax CRUD with Bootstrap modals and Datatables with Server side Validation </h1>

		<h3>Data Karyawan</h3>
		<br>
		<button class="btn btn-success" onclick="add_person()"><i class="glyphicon glyphicon-plus"></i>Add Karyawan</button>
		<button class="btn btn-success" onclick="add_person()"><i class="glyphicon glyphicon-plus"></i>Reload Karyawan</button> <br><br>

		<table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Gender</th>
					<th>Address</th>
					<th>Date Of Brid</th>
					<th style="width: 125px;">Actions</th>
				</tr>
			</thead>			
		</table>
	</div>
<script src="<?php echo base_url('assets/jquery/jquery-2.1.4.min.js')?>"></script>
<script src="<?php echo base_url('assets/bootstrap/js/bootstrap.min.js')?>"></script>
<script src="<?php echo base_url('assets/datatables/js/jquery.dataTables.min.js')?>"></script>
<script src="<?php echo base_url('assets/datatables/js/dataTables.bootstrap.js')?>"></script>
<script src="<?php echo base_url('assets/bootstrap-datepicker/js/bootstrap-datepicker.min.js')?>"></script>

<script type="text/javascript">
	var save_method;
	var table;

	$(document).ready(function(){
		//datatable
		table = $('#table').DataTable({
			"processsing": true,
			"serverSide": true,
			"order":[],
			//load ajax
			"ajax":{
				"url":"<?php echo site_url('karyawan/ajax_list')?>",
				"type":"POST"
			},
			//set column
			"columDefs":[
			{
				"targets":[-1],
				"orderable":false,
			},
			],
		});

		//datepicker
		$('.datepicker').datepicker({
			autoclose:true,
			format: "yyy-mm-dd",
			todayHighlight:true,
			orientation: "top auto",
			todayBtn: true,
			todayHighlight: true,
		});
		//set input
		$("input").change(function(){
			$(this).parent().parent().removeClass('has-error');
			$(this).next().empty();
		});
		$("textarea").change(function(){
			$(this).parent().parent().removeClass('has-error');
			$(this).next().empty();
		});
		$("select").change(function(){
			$(this).parent().parent().removeClass('has-error');
			$(this).next().empty();
		});		
			
	});

	function add_person()
	{
		save_method ='add';
		$('#form')[0].reset();
		$('.form-group').removeClass('has-error');
		$('.help-block').empty();
		$('#modal_form').modal('show');
		$('.modal-title').text('Add Person');
	}

	function edit_person(id)
	{
		save_method ='update';
		$('#form')[0].reset();
		$('.form-group').removeClass('has-error');
		$('.help-block').empty();
		//ajax add data
		$.ajax({
			url:"<?php echo site_url('karyawan/ajax_edit/')?>/"+id,
			type:"GET",
			dataType:"JSON",
			success:function(data)
			{
				$('[name="id"]').val(data.id);
				$('[name="firstName"]').val(data.firstName);
				$('[name="lasName"]').val(data.lastName);
				$('[name="gender"]').val(data.gender);
				$('[name="address]').val(data.address);
				$('[nama="dob"]').val(data.dob);
				$('#modal_form').modal('show');
				$('.modal-title').text('Edit Karyawan');
			},
			error: function(jqXHR, textStatus, errorThrown)
			{
				alert('Error get Data From Ajax');
			}
		});
	}

	function reload_table()
	{
		table.ajax.reload(null,false);
	}

	function save()
	{
		$('#btnsave').text('saving...');
		$('#btnsave').attr('disable',true);
		var url;

		if(save_method == 'add'){
			url = "<?php echo site_url('karyawan/ajax_add')?>";
		}else{
			url = "<?php echo site_url('karyawan/ajax_update')?>";
		}
		//ajax adding data to database
		$.ajax({
			url:url,
			type: "POST",
			data: $('#form').serialize(),
			dataType: "JSON",
			success:function(data)
			{
				if(data.status)
				{
					$('#modal_form').modal('hide');
					reload_table();
				}
				else
				{
					for (var i = 0; i < data.inpuerror.length; i++)
					{
						$('[name="'+data.inputerror[i]+'"]').parent().parent().addClass('has-error');
						$('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]);
					}
				}
				$('#btnsave').text('save');
				$('#btnsave').attr('disable',false);
			},
			error: function (jqXHR,textStatus,errorThrown)
			{
				alert('Error adding/ update data');
				$('#btnSave').text('save');
				$('#btnSave').attr('disable',false);
			}
		});
	}

	function delete_person()
	{
		if(confirm('Yakin mau di hapus?'))
		{
			//ajax delete
			$.ajax({
				url : "<?php echo site_url('karyawan/ajax_delete')?>/"+id,
				type: "POST",
				dataType: "JSON",
				success: function(data)
				{
					$('#modal_form').modal('hide');
					reload_table();
				},
				error: function(jqXHR, textStatus, errorThrown)
				{
					aletrt	('error deleting data');
				}
			});
		}
	}

</script>

<!-- desain form modal -->
<div class="modal fade" id="modal_form" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-lebel="Close"><span aria-hidden="true">&times;></span></button>
				<h3 class="modal-title">Form Karyawan </h3>
			</div>
			<div class="modal-body form">
				<form action="" id="form" class="form-horizontal">
					<input type="hidden" name="id" value="">
					<div class="form-body">
						<div class="form-group">
						<label class="control-label col-md-3">Firts Name</label>
						<div class="col-md-9">
							<input type="text" name="firstName" placeholder="Masukan NAma" class="form-control">
							<span class="help-block"></span>
						</div>
					 </div>
					<div class="form-body">
						<label class="control-label col-md-3">Last Name</label>
						<div class="col-md-9">
							<input type="text" name="firstName" placeholder="Masukan NAma" class="form-control">
							<span class="help-block"></span>
						</div>
					</div>
					 <div class="form-group">
                            <label class="control-label col-md-3">Gender</label>
                            <div class="col-md-9">
                                <select name="gender" class="form-control">
                                    <option value="">--Select Gender--</option>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                </select>
                                <span class="help-block"></span>
                            </div>
                        </div>
                          <div class="form-group">
                            <label class="control-label col-md-3">Address</label>
                            <div class="col-md-9">
                                <textarea name="address" placeholder="Address" class="form-control"></textarea>
                                <span class="help-block"></span>
                            </div>
                        </div>
                          <div class="form-group">
                            <label class="control-label col-md-3">Date of Birth</label>
                            <div class="col-md-9">
                                <input name="dob" placeholder="yyyy-mm-dd" class="form-control datepicker" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                    </div>

				</form>
			</div>
			<div class="modal-footer">	
			    <button type="button" id="btnSave" onclick="save()" class="btn btn-primary">Save</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>
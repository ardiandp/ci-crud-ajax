<!DOCTYPE html>
<html>
    <head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ajax CRUD BPJS</title>
    <link href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/datatables/css/dataTables.bootstrap.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/bootstrap-datepicker/css/bootstrap-datepicker3.min.css')?>" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    </head> 
<body>
    <div class="container">
        <h1 style="font-size:20pt">BPJS</h1>

        <h3>BPJS Data</h3>
        <br />
        <button class="btn btn-success" onclick="add_bpjs()"><i class="glyphicon glyphicon-plus"></i> Add BPJS</button>
        <button class="btn btn-default" onclick="reload_table()"><i class="glyphicon glyphicon-refresh"></i> Reload</button>
        <br />
        <br />
        <table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>NIK</th>
                    <th>No Akun</th>
                    <th>Nama</th>
                    <th>Hub Keluarga</th>
                    <th>terdaftar</th>
                    <th>Aktif</th>                    
                    <th style="width:125px;">Action</th>
                </tr>
            </thead>
            <tbody>
            </tbody>

            <tfoot>
            <tr>
                    <th>NIK</th>
                    <th>No Akun</th>
                    <th>Nama</th>
                    <th>Hub Keluarga</th>
                    <th>terdaftar</th>
                    <th>Aktif</th>                    
                    <th style="width:125px;">Action</th>
            </tfoot>
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
        //datatables
        table = $('#table').DataTable({
            "processing": true,
            "serverSide": true,
            "order": [],

            //load data
            
            "ajax": {
                "url": "<?php echo site_url('bpjs/ajax_list')?>",
                "type": "POST"
            },

            "columnDefs":[
            {
                "targets": [ -1 ],
                "orderable": false,

            },
            ],
        });

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


    function add_bpjs()
    {
        save_method = 'add';
        $('#form')[0].reset();
        $('.form-group').removeClass('has-error');
        $('.help-block').empty();
        $('#modal_form').modal('show');
        $('.modal-title').text('Add BPJS');
    }


    function edit_bpjs(idbpjs)
    {
        save_method ='update';
        $('#form')[0].reset();
        $('.form-group').removeClass('has-error');
        $('.help-block').empty();

        //ajax load form
        $.ajax({
            url: "<?php echo site_url('bpjs/ajax_edit/')?>/"+idbpjs,
            type: "GET",
            dataType: "JSON",
            success: function(data)
            {
                $('[name="idbpjs"]').val(data.idbpjs);
                $('[name="nik"]').val(data.nik);
                $('[name="no_akun"]').val(data.no_akun);
                $('[name="nama"]').val(data.nama);
                $('[name="no_va"]').val(data.no_va);
                $('[name="hub_keluarga"]').val(data.hub_keluarga);
                $('[name="terdaftar"]').val(data.terdaftar);
                $('[name="aktif"]').val(data.aktif);
                $('[name="parent"]').val(data.parent);
                $('#modal_form').modal('show');
                ('.modal-title').text('edit BPJS');
            },
            error: function (jqXHR,textStatus, errorThrown)
            {
                alert ('Error get data from ajax');
            }
            
        });
    }

    function reload_table()
    {
        table.ajax.reload(null,false);
    }

    function save()
    {
        $('#btnSave').text('saving..');
        $('#btnSave').attr('disable',true);
        var url;

        if(save_method == 'add'){
            url = "<?php echo site_url('bpjs/ajax_add')?>";
        } else{
            url = "<?php echo site_url('bpjs/ajax_update')?>";
        }

        $.ajax({
            url : url,
            type: "POST",
            data: $('#form').serialize(),
            dataType: "JSON",
            success: function(data)
            {
                if(data.status)
                {
                    $('#modal_form').modal('hide');
                    reload_table();
                }
                else
                {
                    for(var i = 0;i < data.inputerror.length; i++)
                    {
                        $('[name="'+data.inputerror[i]+'"]').parent().parent().addClass('has-error');
                        $('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]);
                    }
                }
                $('#btnSave').text('save');
                $('btnSave').attr('disable',false);
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error adding / update data');
                $('#btnSave').text('save');
                $('#btnSave').attr('disable',false);
            }
        });
    }

    function delete_bpjs(idbpjs)
    {
        if(confirm('apakah yakin mau di hapus'))
        {
            $.ajax({
                url: "<?php echo site_url('bpjs/ajax_delete')?>/"+idbpjs,
                type: "POST",
                dataType: "JSON",
                success: function(data)
                {
                    $('#modal_form').modal('hide');
                    reload_table();
                },
                error: function(jqXHR, textStatus, errorThrown)
                {
                    alert ('error deleting data');
                }
            });
        }
    }
</script>

<!-- modal botstraps -->
<div class="modal fade" id="modal_form" relo="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="close"><span aria-hidden="true"></span></button>
                <h3 class="modal-title">Bpjs Form</h3>
            </div>
            <div class="modal-body form">
                <form action="#" id="form" class="form-horizontal">
                    <input type="hidden" value="" name="idbpjs"/> 
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">NIK</label>
                            <div class="col-md-9">
                                <input name="nik" placeholder="Nik" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">No Akun</label>
                            <div class="col-md-9">
                                <input name="no_akun" placeholder="Nomor Akun" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Nama</label>
                            <div class="col-md-9">
                                <input name="nama" placeholder="Nama" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="control-label col-md-3">Nomor VA</label>
                            <div class="col-md-9">
                                <input name="no_va" placeholder="Nomor Virtual Akun" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="control-label col-md-3">Hubungan Keluarga</label>
                            <div class="col-md-9">
                                <input name="hub_keluarga" placeholder="Hubungan Keluarga" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="control-label col-md-3">Terdaftar</label>
                            <div class="col-md-9">
                                <input name="terdaftar" placeholder="Terdaftar" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="control-label col-md-3">Aktif</label>
                            <div class="col-md-9">
                                <input name="aktif" placeholder="Aktif" class="form-control" type="text">
                                <span class="help-block"></span>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="control-label col-md-3">Parent</label>
                            <div class="col-md-9">
                                <input name="parent" placeholder="Parent" class="form-control" type="text">
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
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- End Bootstrap modal -->
</body>
</html>
        
    </div>
    
</div>
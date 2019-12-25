<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bpjs extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('bpjs_model','bpjs');
	}
	public function index()
	{
		$this->load->helper('url');
		$this->load->view('bpjs_view');		
	}

	public function ajax_list()
	{
		$list = $this->bpjs->get_datatables();
		$data= array();
		$no= $_POST['start'];
		foreach ($list as $bpjs) {
			$no++;
			$row = array();
			$row[] = $bpjs->nik;
			$row[] = $bpjs->no_akun;
			$row[] = $bpjs->nama;

			$row[] = '<a class="btn btn-sm btn-primary" href="javascript:void(0)" title="Edit" onclick="edit_bpjs('."'".$bpjs->idbpjs."'".')"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
				  <a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_bpjs('."'".$bpjs->idbpjs."'".')"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
			$data[] =  $row;
		}
		$output = array(
				"draw" =>$_POST['draw'],
				"recordsTotal" => $this->bpjs->count_all(),
				"recordsFiltered" => $this->bpjs->count_filtered(),
				"data" =>$data,
				);
		//output berupa json 
		echo json_encode($output);
	}

	public function ajax_edit($idbpjs)
	{
		$data = $this->bpjs->get_by_id($idbpjs);
		echo json_encode($data);
	}

	public function ajax_add()
	{
		$this->_validate();
		$data = array(
			'nik'=>$this->input->post('nik'),
			'no_akun'=>$this->input->post('no_akun'),
			'nama'=>$this->input->post('nama'),
		);
		$insert = $this->bpjs->save($data);
		echo json_encode(array("status"=>TRUE));
	}

	public function ajax_update()
	{
		$this->_validate();
		$data = array(
			'nik'=>$this->input->post('nik'),
			'no_akun'=>$this->input->post('no_akun'),
			'nama'=>$this->input->post('nama'),
		);
		$this->bpjs->update(array('idbpjs'=>$this->input->post('idbpjs')),$data);
		echo json_encode(array("status"=>TRUE));
	}

	public function ajax_delete($idbpjs)
	{
		$this->bpjs->delete_by_id($idbpjs);
		echo json_encode(array("status"=>TRUE));
	}

	private function _validate()
	{
		$data = array();
		$data['error_string'] = array();
		$data['inputerror'] = array();
		$data['status'] =TRUE;

		if($this->input->post('nik')=='')
		{
			$data['inputerror'][] = 'nik';
			$data['error_string'][] = 'Nik harus di isi';
			$data['status'] = FALSE;
		}

		if($this->input->post('no_akun')=='')
		{
			$data['inputerror'][] = 'no_akun';
			$data['error_string'][] = 'No AKun harus di isi';
			$data['status'] = FALSE;
		}

		if($this->input->post('nama')=='')
		{
			$data['inputerror'][] = 'nama';
			$data['error_string'][] = 'NAma harus di isi';
			$data['status'] = FALSE;
		}

		if($data['status']===FALSE)
		{
			echo json_encode($data);
			exit();
		}
	}

}

/* End of file Bpjs.php */
/* Location: ./application/controllers/Bpjs.php */
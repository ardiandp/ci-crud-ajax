<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bca extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Bca_model','bca');
	}

	public function index()
	{
		$this->load->helper('url');
		$this->load->view('bca_view');
	}

	public function ajax_list()
	{
		$list = $this->bca->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $bca) {
			$no++;
			$row = array();
			$row[] = $bca->tanggal;
			$row[] = $bca->keterangan;
			$row[] = $bca->jumlah;
			$row[] = $bca->status;
			$row[] = $bca->saldo;

			//add html for action
			$row[] = '<a class="btn btn-sm btn-primary" href="javascript:void(0)" title="Edit" onclick="edit_bca('."'".$bca->id."'".')"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
				  <a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_bca('."'".$bca->id."'".')"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
		
			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->bca->count_all(),
						"recordsFiltered" => $this->bca->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}

	public function ajax_edit($id)
	{
		$data = $this->bca->get_by_id($id);
		//$data->dob = ($data->dob == '0000-00-00') ? '' : $data->dob; // if 0000-00-00 set tu empty for datepicker compatibility
		echo json_encode($data);
	}

	public function ajax_add()
	{
		$this->_validate();
		$data = array(
				'tanggal' => $this->input->post('tanggal'),
				'keterangan' => $this->input->post('keterangan'),
				'jumlah' => $this->input->post('jumlah'),
				'status' => $this->input->post('status'),
				'saldo' => $this->input->post('saldo'),
			);
		$insert = $this->bca->save($data);
		echo json_encode(array("status" => TRUE));
	}

	public function ajax_update()
	{
		$this->_validate();
		$data = array(
				'tanggal' => $this->input->post('tanggal'),
				'keterangan' => $this->input->post('keterangan'),
				'jumlah' => $this->input->post('jumlah'),
				'status' => $this->input->post('status'),
				'saldo' => $this->input->post('saldo'),
			);
		$this->bca->update(array('id' => $this->input->post('id')), $data);
		echo json_encode(array("status" => TRUE));
	}

	public function ajax_delete($id)
	{
		$this->bca->delete_by_id($id);
		echo json_encode(array("status" => TRUE));
	}


	private function _validate()
	{
		$data = array();
		$data['error_string'] = array();
		$data['inputerror'] = array();
		$data['status'] = TRUE;

		if($this->input->post('tanggal') == '')
		{
			$data['inputerror'][] = 'tanggal';
			$data['error_string'][] = 'tanggal name is required';
			$data['status'] = FALSE;
		}

		if($this->input->post('keterangan') == '')
		{
			$data['inputerror'][] = 'keterangan';
			$data['error_string'][] = 'keterangan name is required';
			$data['status'] = FALSE;
		}

		if($this->input->post('jumlah') == '')
		{
			$data['inputerror'][] = 'jumlah';
			$data['error_string'][] = 'jumlah of Birth is required';
			$data['status'] = FALSE;
		}

		if($this->input->post('status') == '')
		{
			$data['inputerror'][] = 'status';
			$data['error_string'][] = 'Please select gender';
			$data['status'] = FALSE;
		}

		if($this->input->post('saldo') == '')
		{
			$data['inputerror'][] = 'saldo';
			$data['error_string'][] = 'saldo is required';
			$data['status'] = FALSE;
		}

		if($data['status'] === FALSE)
		{
			echo json_encode($data);
			exit();
		}
	}

}

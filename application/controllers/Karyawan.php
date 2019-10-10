<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Karyawan extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_karyawan');
	}

	public function index()
	{
		$this->load->helper('url');
		$this->load->view('karyawan_view');
	}

	public function ajax_list()
	{
		$list = $this->M_karyawan->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $key => $value) 
		{
			$no++;
			$row = array();
			$row[] = $value->firstName;
			$row[] = $value->lastName;
			$row[] = $value->gender;
			$row[] = $value->address;
			$row[] = $value->dob;

			//add html for action
			$row[] = '<a class="btn btn-sm btn-primary" href="javascript:void(0)" title="Edit" onclick="edit_person('."'".$person->id."'".')"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
				  <a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_person('."'".$person->id."'".')"><i class="glyphicon glyphicon-trash"></i> Delete</a>';

			$data[] = $row;
		
		}

		$output = array(
					"draw" => $_POST['draw'],
					"recordsTotal" => $this->M_karyawan->count_all(),
					"recordsFiltered" => $this->M_karyawan->count_filtered(),
					"data" => $data,
				);
		echo json_encode($output);

		
	}

}

/* End of file Karyawan.php */
/* Location: ./application/controllers/Karyawan.php */
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bank extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		//Do your magic here
		$this->load->model('M_Bank');
	}

	public function index()
	{
		$this->load->helper('url');
		$this->load->view('bank_view');
	}

	public function ajax_list()
	{
		$list = $this->M_Bank->get_datatables();
		$data = array();
		$no = $POST['start'];
		foreach ($list as $bank) {
			$no++;
			$row=array();
			$row[] = $bank->keterangan;
			$row[] = $bank->tanggal;
			$row[] = $bank->jumlah;
			$row[] = $bank->status;
			$row[] = $bank->saldo;

			//add html for action
			$row[] = '<a class="btn btn-sm btn-primary" href="javascript:void(0)" title="Edit" onclick="edit_person('."'".$bank->id."'".')"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
				  <a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_person('."'".$bank->id."'".')"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
			$data[] = $row;
		}
		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->M_Bank->count_all(),
						"recordsFiltered" => $this->M_Bank->count_filtered(),
						"data" =>$data,
						);
		//output dalam bentuk JSON
		echo json_encode($output);
	}

	public function ajax_edit($id)
	{
		$data=$this->M_Bank->get_by_id($id);
		$Data->tanggal =($data=='0000-00-00') ? '':$data->tanggal;
		echo json_encode($data);
	}

	public function ajax_add()
	{
		$this->_validate();
		$data = array(
			'tanggal' => $this->input->post('tanggal'),
			'keterangan'=>$this->input->post('keterangan'),
			'cabang'=>$this->input->post('cabang'),
			'jumlah'=>$this->input->post('jumlah'),
			'status'=>$this->input->post('status'),
			'saldo'=>$this->input->post('saldo'),
		);
		$insert = $this->M_Bank->save($data);
		echo json_encode(array("status"=>TRUE));
	}

	public function ajax_update()
	{
		$this->_validate();
		$data = array(
			'tanggal' => $this->input->post('tanggal'),
			'keterangan'=>$this->input->post('keterangan'),
			'cabang'=>$this->input->post('cabang'),
			'jumlah'=>$this->input->post('jumlah'),
			'status'=>$this->input->post('status'),
			'saldo'=>$this->input->post('saldo'),
		);
		$this->M_Bank->update(array('id'=>$this->input->post('id')),$data);
		echo json_encode(array("status"=>TRUE));
	}

	public function ajax_delete($id)
	{
		$this->M_Bank->delete_by_id($id);
		echo json_encode(array("status"=> TRUE));
	}

	private function _validate()
	{
		$data=array();
		$data['error_string'] = array();
		$data['inputerror']=array();
		$data['status']= TRUE;

		if($this->input->post('tanggal')=='')
		{
			$data['inputerror'][] = 'tanggal wajib di isi';
			$data['error_string'][] = 'First name is required';
			$data['status'] = FALSE;
		}
		if($this->input->post('keterangan')=='')
		{
			$data['inputerror'][] = 'keterangan';
			$data['error_string'][] = 'keterangan wajib di isi';
			$data['status'] = FALSE;
		}

		if($this->input->post('jumlah')=='')
		{
			$data['inputerror'][] = 'jumlah';
			$data['error_string'][] = 'keterangan wajib di isi';
			$data['status'] = FALSE;
		}

		if($this->input->post('saldo')=='')
		{
			$data['inputerror'][] = 'saldo';
			$data['error_string'][] = 'keterangan wajib di isi';
			$data['status'] = FALSE;
		}

		if($data['status']===FALSE)
		{
			echo json_encode($data);
			exit();
		}
	}

}

/* End of file Bank.php */
/* Location: ./application/controllers/Bank.php */
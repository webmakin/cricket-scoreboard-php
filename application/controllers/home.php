<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{
		//get all matches
		$data['matches'] = $this->mhome->get_matches();
		$this->load->view('home_page', $data);
	}

	public function widget($id=NULL)
	{
		// $this->load->view('widget_page');
		if($id){
			$data['matches'] = $this->mhome->get_matches();
			$data['match'] = $this->mhome->get_match($id);
			$this->load->view('widget_page', $data);
		}
		else{
			redirect('/home');
		}
	}

	public function detail($id=NULL)
	{	
		if($id){
			$data['matches'] = $this->mhome->get_matches();
			$data['match'] = $this->mhome->get_match($id);
			$data['detail'] = $this->mhome->get_match_detail($id);
			$this->load->view('detail_page',$data);
		}
		else{
			redirect('/home');
		}
		
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
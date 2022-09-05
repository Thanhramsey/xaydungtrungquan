<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lienhe extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->data['com']='Lienhe';
		$this->load->model('frontend/Mcategory');
		$this->load->model('frontend/Mproduct');
		$this->load->model('frontend/Mconfig');
		$this->load->model('frontend/Mcontact');

	}

	public function index()
	{
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday'];
		$this->load->library('form_validation');
		$this->form_validation->set_rules('fullname', 'Họ và tên','required' );
		$this->form_validation->set_rules('email', 'email','required|valid_email' );
		$this->form_validation->set_rules('phone', 'Số điện thoại','required' );
		$this->form_validation->set_rules('title', 'tiêu đề','required' );
		$this->form_validation->set_rules('content', 'nội dụng','required' );
		if($this->form_validation->run()==TRUE){
			$mydata=array(
				'fullname'=>$_POST['fullname'],
				'email'=>$_POST['email'],
				'phone'=>$_POST['phone'],
				'title'=>$_POST['title'],
				'content'=>$_POST['content'],
				'created_at'=> $today
			);
			$this->Mcontact->contact_insert($mydata);
			echo '<script>alert("Tin nhắn của bạn đã gửi đi thành công !")</script>';
		}
		$this->data['title']="Nhân Mobile - Liên hệ";
		$this->data['view']='index';
		$this->load->view('frontend/layout',$this->data);
	}

	public function insertCmt(){
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$name=$_POST['name'];
		$email=$_POST['email'];
		$phone=$_POST['phone'];
		$content=$_POST['description'];
		$mydata= array(
			'fullname'=>$name,
			'email'=>$email,
			'phone'=>$phone,
			'title'=>$name,
			'content'=> $content,
			'created_at'=> $today
				);
		$this->Mcontact->contact_insert($mydata);


		$config_data = $this->Mconfig->get_config();
		// echo "<pre>---In ra---\n".print_r($config_data)."</pre>";
		$this->load->library('email');
		$this->load->library('parser');
		$this->email->clear();
		$config['protocol']    = 'smtp';
		$config['smtp_host']    = 'ssl://smtp.gmail.com';
		$config['smtp_port']    = '465';
		$config['smtp_timeout'] = '7';
		$config['smtp_user']    = $config_data['mail_smtp'];
		$config['smtp_pass']    = $config_data['mail_smtp_password'];
		$config['charset']    = 'utf-8';
		$config['newline']    = "\r\n";
		$config['wordwrap'] = TRUE;
		$config['mailtype'] = 'html';
		$config['validation'] = TRUE;
		$this->email->initialize($config);

		$email = $config_data['mail_noreply'];

		$this->email->from($config_data['mail_smtp'], 'CTY TNHH MTV Trung Quân');
		$this->email->to($email);
		$this->email->subject('CTY TNHH MTV Trung Quân thông báo !!');

		$body = $this->load->view('frontend/modules/email',$mydata,TRUE);
		$this->email->message($body);
		$this->email->send();
		echo json_encode( $mydata );
	}


}


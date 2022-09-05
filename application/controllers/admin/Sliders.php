<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sliders extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Muser');
		$this->load->model('backend/Msliders');
		$this->load->model('backend/Morders');
		if(!$this->session->userdata('sessionadmin'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionadmin');
		$this->data['com']='sliders';
	}

	public function index()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Msliders->slider_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/sliders');
		$this->data['list']=$this->Msliders->slider_all($limit,$first);
		$this->data['view']='index';
		$this->data['title']='Quản lý sản phẩm';
		$this->load->view('backend/layout', $this->data);
	}

	public function insert()
	{
		$user_role=$this->session->userdata('sessionadmin');
		if($user_role['role']==2){
			redirect('admin/E403/index','refresh');
		}
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->library('alias');
		$this->form_validation->set_rules('name', 'Tên hình ảnh', 'required');
		$this->form_validation->set_rules('price', 'Giá', 'required');
		$this->form_validation->set_rules('detail', 'Chi tiết', 'required');
		if ($this->form_validation->run() == TRUE)
		{
			$mydata= array(
				'name' =>$_POST['name'],
				'spname'=>$_POST['name'],
				'price'=>$_POST['price'],
				'detail'=>$_POST['detail'],
				'type' => 0,
				'link' =>$string=$this->alias->str_alias($_POST['name']),
				'created'=>$today,
				'created_by'=>$this->session->userdata('id'),
				'modified'=>$today,
				'modified_by'=>$this->session->userdata('id'),
				'trash'=>1,
				'status'=>$_POST['status']
			);
			$config = array();
			$config['upload_path']          = './public/assets/images/';
			$config['allowed_types'] = 'jpg|png|gif|jpeg';
			$config['max_size'] = 5000;
			$config['encrypt_name'] = TRUE;
			$name_array = array();
			$file  = $_FILES['image_list'];
			$count = count($file['name']);
			$img = '';
			$this->load->library('upload', $config);
			for ($i = 0; $i <= $count-1; $i++) {
				$_FILES['userfile']['name']     = $file['name'][$i];  //khai báo tên của file thứ i
				$_FILES['userfile']['type']     = $file['type'][$i]; //khai báo kiểu của file thứ i
				$_FILES['userfile']['tmp_name'] = $file['tmp_name'][$i]; //khai báo đường dẫn tạm của file thứ i
				$_FILES['userfile']['error']    = $file['error'][$i]; //khai báo lỗi của file thứ i
				$_FILES['userfile']['size']     = $file['size'][$i]; //khai báo kích cỡ của file thứ i
				if ($this->upload->do_upload()) {
					$data = $this->upload->data();
					$img .= $data['file_name'] . '#';
				}
			}
			$name_array = explode('#',$img);
			if(count($name_array) >= 3){
				$mydata['img1']=$name_array[0];
				$mydata['img2']=$name_array[1];
				$mydata['img3']=$name_array[2];
			}else if(count($name_array) == 2){
				$mydata['img1']=$name_array[0];
				$mydata['img2']=$name_array[1];
			}else{
				$mydata['img1']=$name_array[0];
			}
			$this->load->library('upload', $config);
			if($this->upload->do_upload('img')){
				$data = $this->upload->data();
				$mydata['img']=$data['file_name'];
			}
			$this->Msliders->slider_insert($mydata);
			$this->session->set_flashdata('success', 'Thêm sản phẩm thành công');
			redirect('admin/sliders/','refresh');
		}
		else
		{
			$this->data['view']='insert';
			$this->data['title']='Thêm sliders';
			$this->load->view('backend/layout', $this->data);
		}
	}

	public function update($id)
	{
		$user_role=$this->session->userdata('sessionadmin');
		// if($user_role['role']==2){
		// 	redirect('admin/E403/index','refresh');
		// }
		$this->data['row']=$this->Msliders->slider_detail($id);
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->library('alias');
		$this->form_validation->set_rules('name', 'Tên sản phẩm', 'required');
		$this->form_validation->set_rules('price', 'Giá', 'required');
		$this->form_validation->set_rules('detail', 'Chi tiết', 'required');
		if ($this->form_validation->run() == TRUE)
		{
			$mydata= array(
				'name' =>$_POST['name'],
				'spname'=>$_POST['name'],
				'price'=>$_POST['price'],
				'detail'=>$_POST['detail'],
				'type' => 0,
				'modified'=>$today,
				'modified_by'=>$this->session->userdata('fullname'),
				'trash'=>1,
				'status'=>$_POST['status']
			);
			$config = array();
			$config['upload_path']          = './public/assets/images/';
			$config['allowed_types'] = 'jpg|png|gif|jpeg';
			$config['max_size'] = 5000;
			$config['encrypt_name'] = TRUE;
			$name_array = array();
			$file  = $_FILES['image_list'];
			$count = count($file['name']);
			$img = '';
			$this->load->library('upload', $config);
			for ($i = 0; $i <= $count-1; $i++) {
				$_FILES['userfile']['name']     = $file['name'][$i];  //khai báo tên của file thứ i
				$_FILES['userfile']['type']     = $file['type'][$i]; //khai báo kiểu của file thứ i
				$_FILES['userfile']['tmp_name'] = $file['tmp_name'][$i]; //khai báo đường dẫn tạm của file thứ i
				$_FILES['userfile']['error']    = $file['error'][$i]; //khai báo lỗi của file thứ i
				$_FILES['userfile']['size']     = $file['size'][$i]; //khai báo kích cỡ của file thứ i
				if ($this->upload->do_upload()) {
					$data = $this->upload->data();
					$img .= $data['file_name'] . '#';
				}
			}
			$name_array = explode('#',$img);
			if(count($name_array) >= 3){
				$mydata['img1']=$name_array[0];
				$mydata['img2']=$name_array[1];
				$mydata['img3']=$name_array[2];
			}
			else if(count($name_array) == 2){
				$mydata['img1']=$name_array[0];
				$mydata['img2']=$name_array[1];
			}else{
				$mydata['img1']=$name_array[0];
			}
			$this->load->library('upload', $config);
			if($this->upload->do_upload('img')){
				$data = $this->upload->data();
				$mydata['img']=$data['file_name'];
			}
			$this->load->helper('file');
			$this->Msliders->slider_update($mydata, $id);
			$filename= $this->data['row']['img'];
			$filename1= $this->data['row']['img1'];
			$filename2= $this->data['row']['img2'];
			$filename3= $this->data['row']['img3'];
			if(!empty($filename1)) {
				unlink("public/assets/images/$filename1");
			}
			if(!empty($filename2)) {
				unlink("public/assets/images/$filename2");
			}
			if(!empty($filename3)) {
				unlink("public/assets/images/$filename3");
			}
			if(!empty($filename) && !empty($mydata['img'])) {
				unlink("public/assets/images/$filename");
			}
			$message = "Cập nhật sản phẩm thành công";
			$this->session->set_flashdata('success', $message);
			redirect('admin/sliders/','refresh');
		}
		$this->data['view']='update';
		$this->data['title']='Cập nhật sliders';
		$this->load->view('backend/layout', $this->data);
	}

	public function recyclebin()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Msliders->slider_trash_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/sliders/recyclebin');
		$this->data['list']=$this->Msliders->slider_trash($limit, $first);
		$this->data['view']='recyclebin';
		$this->data['title']='Thùng rác sliders';
		$this->load->view('backend/layout', $this->data);
	}

	public function trash($id)
	{
		$mydata= array('trash' => 0);
		$this->Msliders->slider_update($mydata, $id);
		$this->session->set_flashdata('success', 'Xóa sản phẩm vào thùng rác thành công');
		redirect('admin/sliders','refresh');
	}

	public function status($id)
	{
		$row=$this->Msliders->slider_detail($id);
		$status=($row['status']==1)?0:1;
		$mydata= array('status' => $status);
		$this->Msliders->slider_update($mydata, $id);
		$this->session->set_flashdata('success', 'Cập nhật sản phẩm thành công');
		redirect('admin/sliders','refresh');
	}

	public function restore($id)
	{
		$this->Msliders->slider_restore($id);
		$this->session->set_flashdata('success', 'Khôi phục sản phẩm thành công');
		redirect('admin/sliders/recyclebin','refresh');
	}

	public function delete($id)
	{
		$row=$this->Msliders->slider_trash_detail($id);
		$this->load->helper('file');
		$filename= $row['img'];
		$filename1= $row['img1'];
		$filename2= $row['img2'];
		$filename3= $row['img3'];
		if(!empty($filename1)) {
			unlink("public/assets/images/$filename1");
		}
		if(!empty($filename2)) {
			unlink("public/assets/images/$filename2");
		}
		if(!empty($filename3)) {
			unlink("public/assets/images/$filename3");
		}
		if(!empty($filename)) {
			unlink("public/assets/images/$filename");
		}

		$this->Msliders->slider_delete($id);
		$this->session->set_flashdata('success', 'Xóa sản phẩm thành công');
		redirect('admin/sliders/recyclebin','refresh');
	}

}
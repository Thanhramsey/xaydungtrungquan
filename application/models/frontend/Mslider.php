<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Mslider extends CI_Model {

	public function __construct()
    {
            parent::__construct();
            $this->table = $this->db->dbprefix('slider');
    }
    public function list_img_banner()
    {
            $this->db->where('status', 1);
            $this->db->where('trash', 1);
            $query = $this->db->get($this->table);
            return $query->result_array();
    }

	public function list_img_menu()
    {
            $this->db->where('status', 1);
            $this->db->where('trash', 1);
			$this->db->order_by('id', 'desc');
            $query = $this->db->get($this->table, 4);
            return $query->result_array();
    }

	public function list_img_quan()
    {
            $this->db->where('status', 1);
            $this->db->where('trash', 1);
			$this->db->where('type', 1);
            $query = $this->db->get($this->table);
            return $query->result_array();
    }

	public function sp_count()
    {
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

	public function sp_list_home($limit,$first){
        $this->db->where('trash', 1);
        $this->db->where('status', 1);
        $this->db->order_by('created', 'desc');
        $query=$this->db->get($this->table, $limit,$first);
        return $query->result_array();
    }

	public function sp_get_detail($id){
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->where('id', $id);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        return $query->row_array();
    }
}

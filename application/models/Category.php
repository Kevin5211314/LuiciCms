<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Category 分类模型
 */
class Category extends CI_Model
{   

    
    public function getCountCategory()
    {
        return $this->db->count_all('category');
    }

    // echo $this->db->last_query();die;
    public function get_carousel_list($page, $limit, $searchParam = '')
    {   
        if ($searchParam) {
            $query = $this->db->select("*")->from("category")->limit($limit, $page)->like($searchParam)->get();
            return $query->result_array();
        } else {
            $query = $this->db->select("*")->from("category")->order_by("id", "desc")->limit($limit, $page)->get();
            return $query->result_array();
        }
    }   

    public function get_count_carousel_list()
    {
        return $this->db->count_all("category");
    }
    
    // insert_entry 增加数据入口
    public function insert_entry($data)
    {   
        $data['create_time'] = time();
        $data['update_time'] = time();
        $this->db->insert('category', $data);
        return $this->db->insert_id('category', $data);
    }

    // update_entry 修改数据入口
    public function update_entry($id, $data)
    {   
        $data['update_time'] = time();
        return $this->db->update('category', $data, array('id' => $id));
    }

    /**
     * [delete_entry 删除数据入口]
     */
    public function delete_entry($id)
    {
        return $this->db->delete('category',array('id'=>$id));
    }
}

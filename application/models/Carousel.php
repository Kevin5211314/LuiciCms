<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Carousel 轮播图模型
 */
class Carousel extends CI_Model
{   
    //获取轮播图总数
    public function get_carousel_count()
    {
        return $this->db->count_all("carousel");
    }

    //获取轮播图列表
    public function get_carousel_list($page, $limit, $searchParam = '')
    {   
        if ($searchParam) {
            $query = $this->db->select("*")->from("carousel")->limit($limit, $page)->like($searchParam)->get();
            return $query->result_array();
        } else {
            $query = $this->db->select("*")->from("carousel")->order_by("id", "desc")->limit($limit, $page)->get();
            return $query->result_array();
        }
    }
    /**
     * insert_entry 增加数据入口
     */
    public function insert_entry($data)
    {   
        $this->db->insert('carousel', $data);
        return $this->db->insert_id('carousel', $data);
    }

    /**
     * update_entry 修改数据入口
     */
    public function update_entry($id, $data)
    {   
        return $this->db->update('carousel', $data, array('id' => $id));
    }

    /**
     * delete_entry 删除数据入口
     */
    public function delete_entry($id)
    {
        return $this->db->delete('carousel',array('id'=>$id));
    }

}

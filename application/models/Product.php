<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Product 商品模型
 */
class Product extends CI_Model
{   

    //获取管理员列表总数
    public function get_product_list_count()
    {
         return $this->db->count_all("product");
    }

    //获取管理员信息
    public function get_admin_info($where = '')
    {
        $query = $this->db->select("*")->from("product")
                    ->where($where)
                    ->get();
        return $query->row_array();
    }

    //根据where条件获取管理员信息
    public function get_where_admin_info($where = array())
    {
        $query = $this->db->select("*")->from("product")->where($where)->get();
        return $query->row_array();
    }

    //获取文章信息
    public function getArticleInfo($id='')
    {   
        $query = $this->db->select("*")->from("product")->where('id', $id)->get();
        return $query->row_array();
    }

    //获取管理员列表
    public function get_admin_list($page, $limit, $searchParam = '')
    {    
        if ($searchParam) {
            $query = $this->db->select("*, product.id as id, category.category_name as cname")->from("product")
                                ->join('category', 'categorp.id = product.pid', 'left')
                                ->limit($limit, $page)->like($searchParam)->get();
            return $query->result_array();
        } else {
            $query = $this->db->select("*, product.id as id, category.category_name as cname")->from("product")
                                ->join('category', 'category.id = product.pid', 'left')
                                ->limit($limit, $page)->get();
            return $query->result_array();
        }
    }
    
    /**
     * insert_entry 增加数据入口
     */
    public function insert_entry($data)
    {   
        $data['create_time'] = time();
        $data['update_time'] = time();
        $this->db->insert('product', $data);
        return $this->db->insert_id('product', $data);
    }

    /**
     * update_entry 修改数据入口
     */
    public function update_entry($id, $data)
    {   
        $data['update_time'] = time();
        return $this->db->update('product', $data, array('id' => $id));
    }

    /**
     * delete_entry 删除数据入口
     */
    public function delete_entry($id)
    {
        return $this->db->delete('product',array('id'=>$id));
    }

}

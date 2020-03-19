<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Article 文章模型
 */
class Article extends CI_Model
{   
    //获取文章总数
    public function getArticleCount()
    {
        return $this->db->count_all('article');
    }

    // 获取文章详情
    public function getArticleInfo($id='')
    {   
        $query = $this->db->select("*")->from("article")->where('id', $id)->get();
        return $query->row_array();
    }

    // echo $this->db->last_query();die;
    public function get_carousel_list($page, $limit, $searchParam = '')
    {   
        if ($searchParam) {
            $query = $this->db->select("*")->from("article")->limit($limit, $page)->like($searchParam)->get();
            return $query->result_array();
        } else {
            $query = $this->db->select("*")->from("article")->order_by("id", "desc")->limit($limit, $page)->get();
            return $query->result_array();
        }
    }

    // insert_entry 增加数据入口
    public function insert_entry($data)
    {   
        $data['create_time'] = time();
        $data['update_time'] = time();
        $this->db->insert('article', $data);
        return $this->db->insert_id('article', $data);
    }

    // update_entry 修改数据入口
    public function update_entry($id, $data)
    {   
        $data['update_time'] = time();
        return $this->db->update('article', $data, array('id' => $id));
    }

    /**
     * delete_entry 删除数据入口
     */
    public function delete_entry($id)
    {
        return $this->db->delete('article',array('id'=>$id));
    }

}

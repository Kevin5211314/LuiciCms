<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Carouse 轮播图控制器
 */
class Carouse extends Base_Controller
{
    private $_count = 0; // 数据总数

    /**
     * 架构方法 设置参数
     * @access public
     * @param  array $config 配置参数
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('carousel', '', true);
        $this->_count = $this->carousel->get_carousel_count();
    }

    public function index() // 载入类库
    {
        $this->hulk_template->parse('/carousel/index');
    }

    public function list() 
    {
        $result = $this->carousel->get_carousel_list($this->_page, $this->_limit, $this->_searchParams);
        sendSuccess('数据获取成功', $result, $this->_count);
    }

    public function add()
    {   
        $this->hulk_template->parse('/carousel/add');
    }

    public function adddata()
    {
        $param = $this->input->post('data');
        unset($param['file']);
        unset($param['ci_csrf_token']);
        $result = $this->carousel->insert_entry($param);
        sendSuccess('数据添加成功', $result, $this->_count);
    }

    public function edit()
    {   
        $this->hulk_template->parse('/carousel/edit'); 
    }

    public function editdata()
    {   
        $param = $this->input->post('data');
        $id = $param['id'];
        unset($param['id']);
        unset($param['file']);
        unset($param['ci_csrf_token']);
        $result = $this->carousel->update_entry($id,$param);
        sendSuccess('数据修改成功', $result);
    }   

    public function detele()
    {
       $id = $this->input->post('id'); 
       $result = $this->carousel->delete_entry($id);
       sendSuccess('数据删除成功', $result);
    }

    public function detele_all()
    {
        $ids = $this->input->post('data');
        $result = [];
        foreach ($ids as $key => $value) {
            $result[$key] = $this->user->delete_entry($value['id']);
        }
        sendSuccess('数据删除成功', $result);
    }
}

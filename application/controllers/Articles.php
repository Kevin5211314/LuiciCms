<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Articles  文章控制器
 */
class Articles extends Base_Controller
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
        $this->load->model('article', '', true);
        $this->_count = $this->article->getArticleCount();
    }

    public function index()
    {
        $this->hulk_template->parse('/article/index');
    }

    public function list() {
        $result = $this->article->get_carousel_list($this->_page, $this->_limit, $this->_searchParams);
        sendSuccess('获取列表', $result, $this->_count);
    }

    public function add()
    {
        $this->hulk_template->parse('/article/add');
    }

    public function adddata()
    {
        $param = $this->input->post('data');
        unset($param['file']);
        unset($param['ci_csrf_token']);
        $result = $this->article->insert_entry($param);
        return_json_data(0, '数据添加成功', $result);
    }

    public function edit()
    {
        $this->hulk_template->parse('/article/edit');
    }

    public function editdata()
    {
        $param = $this->input->post('data');
        $id    = $param['id'];
        unset($param['id']);
        unset($param['file']);
        unset($param['ci_csrf_token']);
        $result = $this->article->update_entry($id, $param);
        return_json_data(0, '数据修改成功', $result);
    }

    public function getArticleInfo()
    {
        $id     = $this->input->post('id');
        $result = $this->article->getArticleInfo($id);
        return_json_data(0, '数据获取成功', $result);
    }

    public function detele()
    {
        $id     = $this->input->post('id');
        $result = $this->article->delete_entry($id);
        return_json_data(0, '数据删除成功', $result);
    }

    public function detele_all()
    {
        $ids    = $this->input->post('data');
        $result = [];
        foreach ($ids as $key => $value) {
            $result[$key] = $this->article->delete_entry($value['id']);
        }
        return_json_data(0, '数据删除成功', $result);
    }

}

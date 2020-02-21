<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Groups 权限组管理
 */
class Groups extends Base_Controller
{
    private $_count  = 0;  //数据列表总数

    /**
     * 架构方法 设置参数
     * @access public
     * @param  array $config 配置参数
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('auth_group');
        $this->_count = $this->auth_group->get_auth_group_count();
    }

    // 权限组
    public function index()
    {   
        $this->hulk_template->parse('/group/index');
    }

    // 权限组列表
    public function list() 
    { 
        $result = $this->auth_group->get_auth_group_list($this->_page, $this->_limit, $this->_searchParams);
        sendSuccess('获取列表数据', $result, $this->_count);
    }

    public function rulelist()
    {
        $result = $this->auth_rule->get_auth_rule_list();
        sendSuccess('数据获取成功', $result, $this->_count);
    }

    public function add()
    {
        $this->hulk_template->parse('/group/add');
    }

    // 权限规则添加
    public function addgroupdata()
    {
        $param = $this->input->post('data');

        $data['name']        = $param['name'];
        $data['status']      = $param['status'];
        $data['description'] = $param['description'];
        unset($param['name']);
        unset($param['status']);
        unset($param['description']);
        $data['rules'] = implode(',', $param);

        $result = $this->auth_group->insert_entry($data);
        sendSuccess('规则添加成功', $result, $this->_count);
    }

    public function edit()
    {   
        $id = $this->input->get('id');
        $result = $this->auth_group->get_auth_group_info(['id' => $id]);
        $this->hulk_template->parse('/group/edit', $result);
    }

    public function editgroupdata()
    {
        $id = $this->input->get('id');
        $param = $this->input->post('data');

        $data['name'] = $param['name'];
        $data['status'] = $param['status'];
        $data['description'] = $param['description'];
        unset($param['name']);
        unset($param['status']);
        unset($param['description']);
        $data['rules'] = implode(',', $param);

        $result = $this->auth_group->update_entry($id, $data);
        sendSuccess('修改成功', $result, $this->_count);
    }

    public function editGroupStatus()
    {
        $id = $this->input->get('id');
        $data['status'] =  $this->input->post('data');
        $result = $this->auth_group->update_entry($id, $data);
        sendSuccess('修改成功', $result, $this->_count);
    }

    public function detele_group()
    {
        $id     = $this->input->post('id');
        $result = $this->auth_group->delete_entry($id);
        sendSuccess('删除成功', $result, $this->_count);
    }

    public function detele_all_group()
    {
        $ids = $this->input->post('data');
        $result = [];
        foreach ($ids as $key => $value) {
            $result[$key] = $this->auth_group->delete_entry($value['id']);
        }
        sendSuccess('数据删除成功', $result, $this->_count);
    }

}

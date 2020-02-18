<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Products 管理员控制器
 */
class Products extends Base_Controller
{

    protected $_count  = 0;  //数据列表总数

    /**
     * 架构方法 设置参数
     * @access public
     * @param  array $config 配置参数
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('product');
        $this->_count  = $this->product->get_product_list_count();
    }

    public function index()
    {   
        $this->hulk_template->parse('/product/index');
    }

    public function list() 
    {
        $result = $this->product->get_admin_list($this->_page, $this->_limit, $this->_searchParams);
        sendSuccess('获取列表', $result, $this->_count);
    }

    public function add()
    {
        $this->hulk_template->parse('/product/add');
    }

    public function adddata()
    {
        $param            = $this->input->post('data');
        $permission_group = $param['permission_group'];
        unset($param['permission_group']);

        $this->db->trans_begin();

        $data['uid']      = $this->admin->insert_entry($param);
        $data['group_id'] = $permission_group;
        $this->load->model('authgroupaccess', '', true);
        $this->authgroupaccess->insert_entry($data);

        if ($this->db->trans_status() === FALSE)
        {
            $this->db->trans_rollback();
        }
        else
        {
            $this->db->trans_commit();
            sendSuccess('数据添加成功', '', $this->_count);
        }    
    }

    public function edit()
    {
        $this->hulk_template->parse('/product/edit');
    }

    public function editdata()
    {
        $param = $this->input->post('data');
        $id    = $param['id'];
        unset($param['id']);
        $permission_group = $param['permission_group'];
        unset($param['permission_group']);

        $this->db->trans_begin();
        $this->product->update_entry($id, $param);

        $data['group_id'] = $permission_group;
        $this->load->model('authgroupaccess', '', true);
        $this->authgroupaccess->update_entry($id, $data);

        if ($this->db->trans_status() === FALSE)
        {
            $this->db->trans_rollback();
        }
        else
        {
            $this->db->trans_commit();
            sendSuccess('数据修改成功', '', $this->_count);
        }  
    }

    public function detele()
    {
        $id     = $this->input->post('id');
        $result = $this->product->delete_entry($id);
        sendSuccess('数据删除成功', $result, $this->_count);
    }

    public function detele_all()
    {
        $ids    = $this->input->post('data');
        $result = [];
        foreach ($ids as $key => $value) {
            $result[$key] = $this->product->delete_entry($value['id']);
        }
        sendSuccess('数据删除成功', $result, $this->_count);
    }

}

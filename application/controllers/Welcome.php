<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * LuiciCms Welcome index
 */
class Welcome extends Base_Controller
{

    private $_count = 0;  // 数据总数

    /**
     * 架构方法 设置参数
     * @access public
     * @param  array $config 配置参数
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('user', '', true);
        $this->load->model('category', '', true);
        $this->load->model('product', '', true);
        $this->_count = $this->user->get_count_users();
        $this->_admin_count = $this->admin->get_admin_list_count();
    }

    public function index()
    {      
        $this->load->view('/welcome/index');
    }

    public function home()
    {   
        $categoryCount = $this->category->getCountCategory();
        $productCount  = $this->product->get_product_list_count();

        $data['userscount'] = $this->_count;
        $data['categorycount'] = $categoryCount;
        $data['productCount'] = $productCount;
        $this->load->view('/welcome/welcome', $data);
    }

    //登出
    public function loginout()
    {
        $aid = $this->input->post('aid');
        $result = $this->session->unset_userdata('admin_auth');
        sendSuccess('登出成功', $result, $this->_admin_count);
    }

    //获取管理员
    public function getUserAdmin()
    {
        $username = $this->input->get('username');
        $result   = $this->admin->get_user_info(['username' => $username]);
        sendSuccess('获取成功', $result, $this->_admin_count);
    }


    //基本信息
    public function setting()
    {
        $this->load->view('/welcome/userSetting');
    }

    public function updateUserAdmin()
    {
        $data      = $this->input->post('data');
        $adminInfo = $this->admin->get_where_admin_info(['username' => $data['username']]);
        if ($adminInfo) {
            unset($data['username']);
            $result = $this->admin->update_entry($adminInfo['id'], $data);
            sendSuccess('数据修改成功', $result);
        }
    }

    //修改密码
    public function uppass()
    {
        $this->load->view('/welcome/userPassword');
    }
    
    public function updatePassword()
    {
        $param          = $this->input->post('data');
        $old_password   = $param['old_password'];
        $new_password   = $param['new_password'];
        $again_password = $param['again_password'];
        $result         = $this->admin->get_user_info(['id' => $this->session->admin_auth]);
        if (md5($old_password) === $result['password'] && $new_password === $again_password) {
            $newpass = ['password' => md5($new_password)];
            $result  = $this->admin->update_entry($result['id'], $newpass);
            sendSuccess('数据修改成功', $result);
        } else {
            sendError('密码错误或新密码不一致');
        }
    }


}

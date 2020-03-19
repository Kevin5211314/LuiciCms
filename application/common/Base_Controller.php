<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * 基础控制器，用于公共检查
 */
class Base_Controller extends CI_Controller
{

    protected $_page = 0; // 分页

    protected $_limit = 0; // 分页

    protected $_searchParams = ''; // 搜索内容

    protected $noLogin = []; // 不用登录的方法

    protected $noAuth  = ['welcome/index', 'welcome/loginout', 'welcome/setting', 'welcome/uppass','welcome/clearruntime', 'welcome/getmenu']; // 不用权限认证的方法

    /**
     * 架构方法 设置参数
     * @access public
     * @param  array $config 配置参数
     */
    public function __construct()
    {
        parent::__construct();

        $this->load->helper('common');
        $this->load->library('session');
        $this->load->library('hulk_template');

        $this->load->model('admin');
        $this->load->model('auth_rule');
        $this->load->model('auth_group_access','',true);

        $this->initPage();
        !$this->checkLogin() && header("Location: " . '/login/index');
        !$this->checkAuth() &&  sendError('no permission, please contact the administrator.');
    }

    //初始化分页
    public function initPage()
    {
        $this->_limit        = $this->input->get('limit');
        $this->_searchParams = json_decode($this->input->get('searchParams'), true);
        $this->_page         = $this->input->get('page') - 1 ? ($this->input->get('page') - 1) * $this->_limit : 0;
    }

    // 检查登录
    public function checkLogin()
    {
        if (!$this->is_admin_login() && !in_array($this->router->fetch_method(), $this->noLogin)) {
            return false;
        }
        $this->admin->update_entry($this->session->admin_auth, ['last_login_ip'=>getClientIp(),'last_login_time'=>time()]);
        return true;
    }

    /*
     * 检测管理员是否登录
     * @return integer 0/管理员ID
     */
    public function is_admin_login()
    {
        if (isset($this->session->admin_auth) && empty($this->session->admin_auth)) {
            return false;
        } else {
            $admin = $this->session->admin_auth;
            return $this->session->admin_auth_sign == data_auth_sign($admin) ? $admin : false;
        }
    }

    //检查菜单权限
    public function checkMenu()
    {   
        $adminAuthList = $this->getAdminAuthList();
        $authArr = array();
        foreach($adminAuthList as $key => $value)
        {
            $authArr[$key] = '/'.$value.'.html';
        }
        return $authArr;
    }

    //获取用户权限
    public function getAdminAuthList()
    {
        $uid_auth_rules = $this->auth_group_access->get_uid_auth_group_access_list($this->session->admin_auth);
        $rules_array = array();
        foreach (explode(',', $uid_auth_rules['rules']) as $key => $value) {
            $result            = $this->auth_rule->get_auth_rule_info(['authorityId' => $value], 'menuUrl');
            $rules_array[$key] = $result['menuUrl'];
        }
        return $rules_array;
    }

    // 权限认证
    public function checkAuth()
    {
        $class  = $this->router->fetch_class();
        $method = $this->router->fetch_method();
        $rules_array = $this->getAdminAuthList();
        if (!$this->checkNoAuth()) {
            return in_array($class.'/'.$method, $rules_array) ? true : false;
        }
        return true;
    }

    // 权限免认证
    public function checkNoAuth()
    {
        $class  = $this->router->fetch_class();
        $method = $this->router->fetch_method();
        return in_array($class.'/'.$method, $this->noAuth) ? true : false;
    }

}

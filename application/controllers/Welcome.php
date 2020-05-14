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
        $this->load->model('menu','',true);
        $this->load->model('user', '', true);
        $this->load->model('product', '', true);
        $this->load->model('category', '', true);
        $this->_count = $this->user->get_count_users();
        $this->_admin_count = $this->admin->get_admin_list_count();
    }

    // 主页
    public function index()
    {      
        $this->load->view('/welcome/index');
    }

    // 控制台
    public function home()
    {   
        $categoryCount = $this->category->getCountCategory();
        $productCount  = $this->product->get_product_list_count();

        $data['userscount'] = $this->_count;
        $data['productCount'] = $productCount;
        $data['categorycount'] = $categoryCount;

        $this->hulk_template->parse('/welcome/google', $data); // 谷歌广告
        // $this->hulk_template->parse('/welcome/welcome', $data);
    }

    public function getmenu()
    {
        $menuList['homeInfo']['title'] = "首页";
        $menuList['homeInfo']['icon'] = "fa fa-home";
        $menuList['homeInfo']['href'] = "/welcome/home.html?mpi=m-p-i-0";

        $menuList['logoInfo']['title'] = "LuiciCMS";
        $menuList['logoInfo']['image'] = "/resource/images/logo.png";
        $menuList['logoInfo']['href'] = "/welcome/index";

        $menuList['clearInfo']['clearUrl'] = "/welcome/clearruntime";

        $menuList['menuInfo'] = $this->getMenuList();

        sendSuccess('获取列表', $menuList, $this->_count);
    }

    //获取菜单
    public function getMenuList()
    {
        $result = $this->menu->get_menu_list($this->_page, $this->_limit, $this->_searchParams);
        $reply = array();
        foreach ($result as $key => $value) {
             if($value['pid'] == 0)
             {  
                $reply[$value['nickname']]['icon']  = $value['icon'];
                $reply[$value['nickname']]['title'] = $value['title'];
                foreach ($result as $k => $val) {
                     if($val['pid'] == $value['id'])
                     {  
                        if( in_array($val['href'], $this->checkMenu()) )
                        {
                            $childArr[] = $val;
                        }else{
                            unset($val);
                        }
                     }
                }
                if( !empty($childArr) )
                {
                    $reply[$value['nickname']]['child'] = $childArr;
                    $childArr = array();
                }else{
                    unset($reply[$value['nickname']]);
                }
             }
        }
        return $reply; 
    }

    // 登出
    public function loginout()
    {
        $result = $this->session->unset_userdata('admin_auth');
        sendSuccess('登出成功', $result, $this->_admin_count);
    }

    // 获取管理员
    public function getUserAdmin()
    {
        $username = $this->input->get('username');
        $result   = $this->admin->get_user_info(['username' => $username]);
        sendSuccess('获取成功', $result, $this->_admin_count);
    }


    // 基本信息
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

    // 修改密码
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

    //清除浏览器缓存
    public function clearRuntime()
    {
        header("Last-Modified: " . gmdate( "D, d M Y H:i:s" ) . "GMT" );  
        header("Cache-Control: no-cache, must-revalidate" );  
        echo json_encode(array('code' => 1, 'msg' => '服务端清理缓存成功'));
    }

}

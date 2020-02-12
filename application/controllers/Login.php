<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  Login  登陆管理
 */
class Login extends CI_Controller
{   
    private $captcha_config = [
        'seKey'    => 'Zell Dincht', // 验证码加密密钥
        'codeSet'  => '2345678abcdefhijkmnpqrstuvwxyzABCDEFGHJKLMNPQRTUVWXY', // 验证码字符集合
        'expire'   => 1800, // 验证码过期时间（s）
        'useZh'    => false, // 使用中文验证码
        'useImgBg' => false, // 使用背景图片
        'fontSize' => 16, // 验证码字体大小(px)
        'useCurve' => false, // 是否画混淆曲线
        'useNoise' => true, // 是否添加杂点
        'imageW'   => 0, // 验证码图片宽度
        'imageH'   => 40, // 验证码图片高度
        'length'   => 4, // 验证码位数
        'fontttf'  => '', // 验证码字体，不设置随机获取
        'bg'       => array(243, 251, 254), // 背景颜色
        'reset'    => true, // 验证成功后是否重置
    ];

    /**
     * 架构方法 设置参数
     * @access public
     * @param  array $config 配置参数
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->library('captcha');
        $this->load->library('form_validation');
        $this->load->helper('common');
        $this->load->helper(array('form', 'url'));
        $this->load->model('admin', '', true);
    }

    /**
     * [login description]
     * @author   Ding Jingfei  <794783766@qq.com>
     * @datetime 2019-10-17T22:04:38+0800
     * @return   [type]                   [description]
     */
    public function index()
    {
        $this->load->view('/login/login');
    }

    //获取验证码
    public function generate_captcha()
    {
        $captcha = new Captcha($this->captcha_config);
        $captcha->generate();
    }

    /**
     * checkUserNameIsset   检查用户信息是否存在
     * @author   Ding Jingfei   794783766@qq.com
     * @datetime 2019-10-23T22:25:42+0800
     * @param    string     $username   检查用户名是否存在
     */
    public function checkUserNameIsset($username = '')
    {
        $where['username'] = $username;
        $usr_result        = $this->admin->get_where_admin_info($where);
        if (!$usr_result) {
            sendError("no userinfo, please contact the administrator. 没有账户信息，请联系管理员。");
        }
        return true;
    }

    /**
     * checkUserPermissions   检查用户权限，账户是否禁用
     * @author   Ding Jingfei   794783766@qq.com
     * @datetime 2019-10-23T22:28:10+0800
     * @return   [type]        [description]
     */
    public function checkUserPermissions($username = '')
    {
        $where['status']   = 1;
        $where['username'] = $username;
        //检查权限
        $auth_result = $this->admin->get_where_admin_info($where);
        if (!$auth_result) {
            sendError("no permission, please contact the administrator. 暂无权限，请联系管理员。");
        }
        return true;
    }

    /**
     * userInfoWrittenSession  用户信息写入session
     * @author   Ding Jingfei  <794783766@qq.com>
     * @datetime 2019-10-23T23:13:47+0800
     * @param    string      $id [description]
     * @return   [type]                       [description]
     */
    public function userInfoWrittenSession($userinfo = '')
    {   
        $udata['admin_name']      = $userinfo['username'];
        $udata['admin_auth']      = $userinfo['id'];
        $udata['admin_auth_sign'] = data_auth_sign($userinfo['id']);
        $this->session->set_userdata($udata);
    }

    /**
     * [checkValidationCode 检查验证码是否正确]
     * @author   Ding Jingfei  <794783766@qq.com>
     * @param    string        $captchacode   验证码
     * @return   [type]                   结果集
     */
    public function checkValidationCode($captchacode = '')
    {
        if (!empty($captchacode)) {
            $captcha = new Captcha($this->captcha_config);
            $result  = $captcha->validate($captchacode); // 验证
            if (!$result) {
                sendError("captcha error, please contact the administrator. 验证码错误，请联系管理员。");
            }
            return true;
        }
    }

    /**
     * [checklogin from提交的表单]
     * @author   Ding Jingfei  <794783766@qq.com>
     * @datetime 2019-10-23T20:31:38+0800
     * @return   [type]                   [description]
     */
    public function checklogin()
    {
        if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $data = $this->input->post('data');
            $this->form_validation->set_data($data);
            $this->form_validation->set_rules('username', 'username', 'trim|required');
            $this->form_validation->set_rules('password', 'password', 'trim|required');
            $this->form_validation->set_rules('captcha', 'captcha', 'trim|required');
            if ($this->form_validation->run() == false) {
                sendError("Vul alle velden in");
            } else {
                !$this->checkUserNameIsset($data['username']); //check if username and password is correct
                !$this->checkValidationCode($data['captcha']); //validation captcha
                !$this->checkUserPermissions($data['username']); //check user permissions

                //check user info isset
                $where['status']   = 1;
                $where['username'] = $data['username'];
                $where['password'] = md5($data['password']);
                $usr_result        = $this->admin->get_where_admin_info($where);
                if (!$usr_result) {
                    sendError("password error, please contact the administrator. 密码错误，请联系管理员。");
                }

                $this->userInfoWrittenSession($usr_result); // user information written to session
                sendSuccess("登陆成功", $usr_result);
            }
        }
    }
}

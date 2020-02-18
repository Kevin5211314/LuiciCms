<?php /* HULK template engine v0.3
a:2:{s:10:"/admin/add";i:1581028662;s:10:"admin/from";i:1581028635;}
*/ ?>
<!DOCTYPE html>
<html>
<head>
    <title>LuiciCms - 基于LUI和CI框架的后台管理系统</title>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/resource/lib/layui-v2.5.4/css/layui.css" media="all">
    <link rel="stylesheet" href="/resource/css/public.css" media="all">
</head>
<body>

            <div class="layuimini-container">
            <div class="layuimini-main">
                 
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 25px;">
            <legend>添加信息</legend>
        </fieldset>
                    <form class="layui-form">
                    <div class="layui-form-item">
                        <label class="layui-form-label">管理员名称</label>
                        <div class="layui-input-block">
                            <input type="text" name="username" lay-verify="username" autocomplete="off" placeholder="请输入管理员名称" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">管理员密码</label>
                        <div class="layui-input-block">
                            <input type="text" name="password" lay-verify="password" autocomplete="off" placeholder="请输入管理员密码" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">手机号</label>
                        <div class="layui-input-block">
                            <input type="text" name="mobile" lay-verify="mobile" autocomplete="off" placeholder="请输入手机号" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">邮箱</label>
                        <div class="layui-input-block">
                            <input type="text" name="email" lay-verify="email" autocomplete="off" placeholder="请输入邮箱" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">所属权限组</label>
                        <div class="layui-input-block">
                            <select name="permission_group" lay-filter="aihao">
                            </select>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">活动状态</label>
                        <div class="layui-input-block">
                            <input type="radio" name="status" value="1" title="启用" checked="">
                            <input type="radio" name="status" value="0" title="禁用">
                        </div>
                    </div>
                    
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            <button id="return1" class="layui-btn layui-btn-primary" >返回</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    
        <script type="text/javascript" src="/resource/lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="/resource/lib/layui-v2.5.4/layui.js" charset="utf-8" ></script>
    <script type="text/javascript">
        layui.use(['form', 'layedit', 'laydate'], function () {
            var form = layui.form
                , layer = layui.layer;
            
            //自定义验证规则
            form.verify({
                username: function (value) {
                    if (value.length < 2) {
                        return '管理员名称需要至少2个字符啊';
                    }
                },
                mobile: function (value){
                    if (value.length < 10) {
                        return '手机号需要11个字符啊';
                    }
                },
                email: function (value) {
                    if (value.length < 2) {
                        return '邮箱至少得2个字符啊';
                    }
                }
            });

            $(function(){
                $.ajax({
                     type: "POST",
                     url: "/admins/getauthgroup",
                     data: {},
                     dataType: "json",
                     success: function(data){
                        var res = data.data;  var str = '';
                        for (var i=0; i < res.length; i++)
                        {   
                            str += '<option value="'+res[i].id+'">'+res[i].name+'</option>'; 
                        }
                        $('select[name=permission_group]').append(str);  
                        layui.form.render("select");   
                     }
                });
            });

            // 进行提交操作
            form.on('submit(demo1)', function (data) {
                $.ajax({
                    type: "POST",
                    url: "/admins/adddata",
                    data: {data:data.field},
                    dataType: "json",
                    beforeSend: function (request) {
                        sub = layer.load();
                    },
                    success: function (data) {
                        layer.close(sub);
                        layer.msg(data.message, {icon: 1,time: 2000 }, function(){
                            window.location.href = '/admins/index.html';
                        });  
                    },
                    error: function (data) {
                        layer.alert(JSON.stringify(data));
                        console.log(data)
                    }
                });
                return false;
            });
        });
    </script>
    
    <script type="text/javascript">
        $('#return1').on('click', function(){
             parent.location.reload()//刷新父亲对象（用于框架）
        });
    </script>

</body>
</html>
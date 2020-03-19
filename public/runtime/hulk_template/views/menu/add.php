<?php /* HULK template engine v0.3
a:2:{s:9:"/menu/add";i:1584000116;s:9:"menu/from";i:1584002818;}
*/ ?>
<!DOCTYPE html>
<html>
<head>
    <title>LCADMIN - 基于LUI和CI框架的后台管理系统</title>
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
            <legend>添加菜单</legend>
        </fieldset>
                    <form class="layui-form">

                    <div class="layui-form-item">
                        <label class="layui-form-label">父级（级别）</label>
                        <div class="layui-input-block">
                            <input type="text" name="pid" lay-verify="pid" class="layui-input" value='<?php if(isset($pid)){echo $pid;} ?>' placeholder="请输入级别 0 为父级">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">标题</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" lay-verify="title" class="layui-input" value='<?php if(isset($title)){echo $title;} ?>' placeholder="请输入标题">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">链接</label>
                        <div class="layui-input-block">
                            <input type="text" name="href" lay-verify="href"  class="layui-input" value='<?php if(isset($href)){echo $href;} ?>' placeholder="请输入链接">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">图标</label>
                        <div class="layui-input-block">
                            <input type="text" name="icon" lay-verify="icon" class="layui-input" value='<?php if(isset($icon))  { echo $icon; } ?>' placeholder="请输入图标">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">跳转方式</label>
                        <div class="layui-input-block">
                            <input type="text" name="target" lay-verify="target" class="layui-input" value='<?php if(isset($target)) { echo $target; } ?>' placeholder="请输入跳转方式">
                        </div>
                    </div>
                    
                    <div class="layui-form-item">
                        <label class="layui-form-label">昵称</label>
                        <div class="layui-input-block">
                            <input type="text" name="nickname" lay-verify="nickname" class="layui-input" value='<?php if(isset($nickname)) { echo $nickname; } ?>' placeholder="请输入昵称">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">状态</label>
                        <div class="layui-input-block">
                            <?php 
                                if(isset($status) && $status == 0)
                                {   
                                    echo '<input type="radio" name="status" value="1" title="启用" ><input type="radio" name="status" value="0" title="禁用" checked="">';
                                }else{
                                    echo '<input type="radio" name="status" value="1" title="启用" checked=""><input type="radio" name="status" value="0" title="禁用" >';
                                }
                            ?>
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
        layui.use(['form', 'layedit', 'laydate', 'upload'], function () {
            var form = layui.form
                , layer = layui.layer
                , upload  = layui.upload;

            //自定义验证规则
            form.verify({
                username: function (value) {
                    if (value.length < 2) {
                        return '用户名至少得2个字符啊';
                    }
                },
                mobile: function (value) {
                    if (value.length < 11) {
                        return '手机号得11个字符啊';
                    }
                },
                password: function (value) {
                    if (value.length < 6) {
                        return '密码不能为空，必须要6位';
                    }
                }
            });

            // 进行提交操作
            form.on('submit(demo1)', function (data) {
                $.ajax({
                    type: "POST",
                    url: "/users/adddata",
                    data: {data:data.field},
                    dataType: "json",
                    beforeSend: function (request) {
                        index = layer.load();
                    },
                    success: function (data) {
                        layer.close(index);
                        layer.msg(data.message, {icon: 1,time: 2000}, function(){
                            window.location.href = '/users/index.html';
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
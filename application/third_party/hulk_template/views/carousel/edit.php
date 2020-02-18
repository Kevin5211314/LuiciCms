<?php /* HULK template engine v0.3
a:2:{s:14:"/carousel/edit";i:1578485550;s:13:"carousel/from";i:1578485715;}
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
            <legend>编辑信息</legend>
        </fieldset>
                    <form class="layui-form">
                    <div class="layui-form-item">
                        <label class="layui-form-label">分类</label>
                        <div class="layui-input-block">
                            <input type="text" name="category" lay-verify="category" autocomplete="off" placeholder="请输入分类" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">分类名称</label>
                        <div class="layui-input-block">
                            <input type="text" name="name" lay-verify="name" autocomplete="off" placeholder="请输入分类名称" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">描述</label>
                        <div class="layui-input-block">
                            <input type="text" name="description" lay-verify="description" autocomplete="off" placeholder="请输入描述" class="layui-input">
                        </div>
                    </div>


                    <div class="layui-form-item">
                        <label class="layui-form-label">链接</label>
                        <div class="layui-input-block">
                            <input type="text" name="url" autocomplete="off" placeholder="上传链接" class="layui-input" style="width: 88%;" value="" />
                            <button type="button" class="layui-btn" id="url" style="float: right; margin-top: -38px;">
                                <i class="layui-icon">&#xe67c;</i>上传图片
                            </button>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">打开方式</label>
                        <div class="layui-input-block">
                            <input type="text" name="target" lay-verify="target" autocomplete="off" placeholder="请输入打开方式" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">图片</label>
                        <div class="layui-input-block">
                            <input type="text" name="image" lay-verify="image" autocomplete="off" placeholder="请输入图片" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">排序</label>
                        <div class="layui-input-block">
                            <input type="text" name="sort_order" lay-verify="sort_order" autocomplete="off" placeholder="请输入排序" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">活动状态</label>
                        <div class="layui-input-block">
                            <input type="radio" name="status" value="1" title="启用" checked="">
                            <input type="radio" name="status" value="0" title="禁用">
                        </div>
                    </div>

                    <input type="text" name="id" lay-verify="title" class="layui-input" style="display: none;" value="" />
                    <input type="text" name="<?php echo $this->security->get_csrf_token_name(); ?>" lay-verify="title" class="layui-input" style="display: none;" value="<?php echo $this->security->get_csrf_hash(); ?>">

                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    
        <script type="text/javascript" src="/resource/lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="/resource/lib/layui-v2.5.4/layui.js" charset="utf-8" ></script>
    <script type="text/javascript">
        function child(obj){
            console.log(obj);//获取父界面的传值
            $('input[name=id]').val(obj.id)
            $('input[name=category]').val(obj.category)
            $('input[name=name]').val(obj.name)
            $('input[name=description]').val(obj.description)
            $('input[name=url]').val(obj.url)
            $('input[name=target]').val(obj.target)
            $('input[name=image]').val(obj.image)
            $('input[name=sort_order]').val(obj.sort_order)
            $('input[name=status]').val(obj.status)
        }
        layui.use(['form', 'layedit', 'laydate', 'upload'], function () {
            var form = layui.form
                , layer = layui.layer
                , upload  = layui.upload;

            //自定义验证规则
            form.verify({
                category: function (value) {
                    if (value.length < 2) {
                        return '分类至少得2个字符啊';
                    }
                },
                name: function (value) {
                    if (value.length < 2) {
                        return '名称至少得2个字符啊';
                    }
                },
                description: function (value) {
                    if (value.length < 2) {
                        return '描述至少得2个字符啊';
                    }
                },
                url: function (value) {
                    if (value.length < 2) {
                        return '链接至少得2个字符啊';
                    }
                },
                target: function (value) {
                    if (value.length < 2) {
                        return '打开方式至少得2个字符啊';
                    }
                },
                image: function (value) {
                    if (value.length < 5) {
                        return '图片至少得5个字符啊';
                    }
                },
                sort_order: function (value) {
                    if (value.length < 1) {
                        return '排序至少得1个字符';
                    }
                }
            });

            var uploadInst = upload.render({
                elem: '#url' //绑定元素
                ,url: '/upload/do_upload' //上传接口
                ,method: 'POST'
                ,multiple: true
                ,accept: 'file'
                ,data: {"<?php echo $this->security->get_csrf_token_name(); ?>":"<?php echo $this->security->get_csrf_hash(); ?>"}
                ,before: function(obj){
                    index = layer.load();
                },
                done: function(res){ //上传完毕回调
                    layer.close(index);
                    $('input[name=url]').val(res.data);
                    $('input[name=image]').val(res.data);
                    layer.msg(res.msg);
                }
                ,error: function(data){ //请求异常回调
                    layer.alert(JSON.stringify(data));
                }
            });
            // 进行提交操作
            form.on('submit(demo1)', function (data) {
                console.log(data)
                $.ajax({
                    type: "POST",
                    url: "/carouse/editdata",
                    data: {data:data.field,"<?php echo $this->security->get_csrf_token_name(); ?>":"<?php echo $this->security->get_csrf_hash(); ?>"},
                    dataType: "json",
                    beforeSend: function (request) {
                        sub = layer.load();
                    },
                    success: function (data) {
                        layer.close(sub);
                        layer.msg(data.msg, {
                              icon: 1,
                              time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                            parent.GetValue('true'); 
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
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
    
</body>
</html>
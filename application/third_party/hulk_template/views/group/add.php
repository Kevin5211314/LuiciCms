<?php /* HULK template engine v0.3
a:2:{s:10:"/group/add";i:1582054539;s:10:"group/from";i:1581221681;}
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
            <legend>添加权限组</legend>
        </fieldset>
                    <form class="layui-form">
                    <div class="layui-form-item">
                        <label class="layui-form-label">权限组名称</label>
                        <div class="layui-input-block">
                            <input type="text" name="name" lay-verify="name" autocomplete="off" placeholder="请输入权限组名称" class="layui-input" value="<?php if(isset($name)){ echo $name; } ?>">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">权限组描述</label>
                        <div class="layui-input-block">
                            <input type="text" name="description" lay-verify="description" autocomplete="off" placeholder="请输入权限组描述" class="layui-input" value="<?php if(isset($description)){ echo $description; }?>">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">授权</label>
                        <div class="layui-input-block">
                            <div class="ztree" id="authRule"> 
                                <input lay-skin="primary" type="checkbox" id="checkall" title="全选" lay-filter="allChoose" /><br>
                            </div>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">权限状态</label>
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
        $(function(){
            $.ajax({
                type: "POST",
                url: "/rules/list",
                data: {limit:100, page:0 },
                dataType: "json", 
                success: function (res) {
                    var str = '';
                    for (var i=0; i<res.data.length; i++)
                    {
                        if( res.data[i].parentId == '-1' )
                        {
                            str += '<input type="checkbox" lay-skin="primary" name="'+res.data[i].authorityId+'" title="'+res.data[i].authorityName+'" value="'+res.data[i].authorityId+'">'; 
                            for (var j = 0; j < res.data.length; j++) {
                                if( res.data[i].authorityId == res.data[j].parentId )
                                {
                                    str += '<div class="layui-input-block">'+
                                                    '<input type="checkbox" lay-skin="primary" title="'+res.data[j].authorityName+'" name="'+res.data[j].authorityId+'" value="'+res.data[j].authorityId+'">'+
                                            '</div>' ;
                                    for ( var h = 0; h < res.data.length; h++)
                                    {
                                        if( res.data[j].authorityId == res.data[h].parentId)
                                        {
                                            str +=  '<div class="layui-input-block">' +
                                                        '<div class="layui-input-block">' +
                                                            '<input type="checkbox" lay-skin="primary" title="'+res.data[h].authorityName+'" name="'+res.data[h].authorityId+'" value="'+res.data[h].authorityId+'">' +
                                                        '</div>'+
                                                    '</div>';
                                        }
                                    }
                                } 
                            }
                        }
                    }
                    $('#authRule').append(str);
                }
            });
        })
        layui.use(['form', 'layedit', 'laydate', 'upload'], function () {
            var form = layui.form
                , layer = layui.layer
                , upload  = layui.upload;

            $('#return1').on('click', function(){
                 parent.location.reload()//刷新父亲对象（用于框架）
            });

            //自定义验证规则
            form.verify({
                name: function (value) {
                    if (value.length < 2) {
                        return '权限组名称需要至少2个字符啊';
                    }
                },
                description: function (value){
                    if (value.length < 2) {
                        return '权限组描述至少需要2个字符啊';
                    }
                }
            });
            
            form.on('checkbox(allChoose)', function (data) {
                var child = $("#authRule input[type='checkbox']");
                child.each(function (index, item) {
                    item.checked = data.elem.checked;
                });
                form.render('checkbox');
            });

            // 进行提交操作
            form.on('submit(demo1)', function (data) {
                console.log(data)
                $.ajax({
                    type: "POST",
                    url: "/groups/addgroupdata",
                    data: {data:data.field},
                    dataType: "json",
                    beforeSend: function (request) {
                        index = layer.load();
                    },
                    success: function (resource) {
                        layer.close(index);
                        layer.msg(resource.message, {icon: 1,time: 2000 }, function(){
                            parent.location.reload()//刷新父亲对象（用于框架）
                        });  
                    },
                    error: function (resource) {
                        layer.alert(JSON.stringify(resource));
                        console.log(resource)
                    }
                });
                return false;
            });
        });
    </script>

    <script type="text/javascript">
         $('#return1').on('click', function(){
             parent.location.reload()//刷新父亲对象（用于框架）
         })
    </script> 
</body>
</html>
<# extends article/from #>

<# block cententFrom #>
    <# parent #>
    <# slot title #> 
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 25px;">
            <legend>编辑信息</legend>
        </fieldset>
    <# /slot #>
<# /block #>

<# block carouseJs #>
    <script type="text/javascript" src="/resource/lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="/resource/lib/layui-v2.5.4/layui.js" charset="utf-8" ></script>
    <script src="/resource/js/lay-config.js?v=1.0.4" charset="utf-8"></script>
    <script type="text/javascript">
        layui.use(['form', 'layer', 'upload', 'layuimini'], function () {
            var form = layui.form
                , layer = layui.layer
                , upload  = layui.upload
                , layuiimini = layui.layuimini;
                
            $('#return1').on('click', function(){
                 parent.location.reload()//刷新父亲对象（用于框架）
            }); 
            //自定义验证规则
            form.verify({
                title: function (value) {
                    if (value.length < 2) {
                        return '标题至少得2个字符啊';
                    }
                },
                author: function (value) {
                    if (value.length < 2) {
                        return '作者至少得2个字符啊';
                    }
                },
                summary: function (value) {
                    if (value.length < 2) {
                        return '简介至少得2个字符啊';
                    }
                },
                content: function (value) {
                    if (value.length < 2) {
                        return '内容至少得2个字符啊';
                    }
                },
                description: function (value) {
                    if (value.length < 5) {
                        return '描述至少得5个字符啊';
                    }
                },
                keywords: function (value) {
                    if (value.length < 1) {
                        return '关键字至少得1个字符';
                    }
                },
                fabulous: function (value) {
                    if (value.length < 1) {
                        return '点赞数至少得1个字符';
                    }
                }
            });
            //自动执行jQuery
            var query = window.location.search.substring(1);
            var id = layuimini.getQueryVariable(query, 'id');
            $.ajax({
                    type: "POST",
                    url: "/articles/getArticleInfo",
                    data: {id:id,"<?php echo $this->security->get_csrf_token_name(); ?>":"<?php echo $this->security->get_csrf_hash(); ?>"},
                    dataType: "json",
                    beforeSend: function (request) {
                        sub = layer.load();
                    },
                    success: function (data) {
                        layer.close(sub);
                        var obj = data.data;
                        $('input[name=id]').val(obj.id)
                        $('input[name=cid]').val(obj.cid)
                        $('input[name=title]').val(obj.title)
                        $('input[name=image]').val(obj.image)
                        $('input[name=author]').val(obj.author)
                        $('input[name=summary]').val(obj.summary)
                        $('input[name=photo]').val(obj.photo)
                        $('input[name=content]').val(obj.content)
                        $('input[name=view]').val(obj.view)
                        $('input[name=is_top]').val(obj.is_top)
                        $('input[name=is_hot]').val(obj.is_hot)
                        $('input[name=status]').val(obj.status)
                        $('input[name=sort_order]').val(obj.sort_order)
                        $('input[name=keywords]').val(obj.keywords)
                        $('input[name=description]').val(obj.description)
                        $('input[name=fabulous]').val(obj.fabulous)
                    },
                    error: function (data) {
                        layer.alert(JSON.stringify(data));
                        console.log(data)
                    }
            });
            //上传文件
            var uploadInst = upload.render({
                elem: '#image' //绑定元素
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
                    $('input[name=image]').val(res.data);
                    $('input[name=photo]').val(res.data);
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
                    url: "/articles/editdata",
                    data: {data:data.field,"<?php echo $this->security->get_csrf_token_name(); ?>":"<?php echo $this->security->get_csrf_hash(); ?>"},
                    dataType: "json",
                    beforeSend: function (request) {
                        sub = layer.load();
                    },
                    success: function (data) {
                        layer.close(sub);
                        layer.msg(data.msg, {icon: 1, time: 2000}, function(){
                            window.location.href = '/articles/index.html';
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
<# /block #>
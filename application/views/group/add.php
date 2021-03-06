<# extends group/from #>

<# block cententFrom #>
    <# parent #>
    <# slot title #> 
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 25px;">
            <legend>添加权限组</legend>
        </fieldset>
    <# /slot #>
<# /block #>

<# block carouseJs #>

    <script type="text/javascript" src="/resource/lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="/resource/lib/layui-v2.5.4/layui.js" charset="utf-8" ></script>

    <script type="text/javascript">
        $(function(){
            $.ajax({
                type: "POST",
                url: "/rules/list",
                data: {limit:1000, page:0 },
                dataType: "json", 
                success: function (res) {
                    var resultArr = res.data;
                    var str = '';
                    for (var i=0; i< resultArr.length; i++)
                    {
                        if( resultArr[i].parentId == '-1' )
                        {
                            str += '<input type="checkbox" lay-skin="primary" name="'+resultArr[i].authorityId+'" title="'+resultArr[i].authorityName+'" value="'+resultArr[i].authorityId+'">'; 
                            for (var j = 0; j < resultArr.length; j++) {
                                if( resultArr[i].authorityId == resultArr[j].parentId )
                                {
                                    str += '<div class="layui-input-block">'+
                                                    '<input type="checkbox" lay-skin="primary" title="'+resultArr[j].authorityName+'" name="'+resultArr[j].authorityId+'" value="'+resultArr[j].authorityId+'">'+
                                            '</div>' ;
                                    for ( var h = 0; h < resultArr.length; h++)
                                    {
                                        if( resultArr[j].authorityId == resultArr[h].parentId)
                                        {
                                            str +=  '<div class="layui-input-block">' +
                                                        '<div class="layui-input-block">' +
                                                            '<input type="checkbox" lay-skin="primary" title="'+resultArr[h].authorityName+'" name="'+resultArr[h].authorityId+'" value="'+resultArr[h].authorityId+'">' +
                                                        '</div>'+
                                                    '</div>';
                                        }
                                    }
                                } 
                            }
                        }
                    }
                    $('#authRule').append(str);
                    layui.form.render("checkbox");
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
<# /block #>
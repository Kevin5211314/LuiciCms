<# extends group/from #>

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
        $(document).ready(function(){
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
                    layui.form.render("checkbox");
                }
            });
        });
        
        layui.use(['form', 'layuimini'], function () {
            var form = layui.form
                , layer = layui.layer
                , layuiimini = layui.layuimini;

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
                    url: "/groups/editgroupdata?id="+"<?php echo $id;?>",
                    data: {data:data.field},
                    dataType: "json",
                    beforeSend: function (request) {
                        index = layer.load();
                    },
                    success: function (resource) {
                        layer.close(index);
                        layer.msg(resource.message, { icon: 1, time: 2000 }, function(){
                             parent.location.reload()//刷新父亲对象（用于框架）
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
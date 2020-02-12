<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>图标选择器</title>
    <link rel="stylesheet" href="/resource/lib/layui-v2.5.4/css/layui.css" media="all">
    <link rel="stylesheet" href="/resource/lib/font-awesome-4.7.0/css/font-awesome.min.css" media="all">
    <link rel="stylesheet" href="/resource/css/public.css" media="all">
    <style>
        .layui-iconpicker-body.layui-iconpicker-body-page .hide {display: none;}
    </style>
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">

        <blockquote class="layui-elem-quote">
            fa图标选择器根据开源Layui-IconPicker插件修改而来。<br>
            不同的参数的地方是，去掉了type参数，新增url参数，url参数为fa图标less/variables.less文件路径。<br>
            <a href="https://gitee.com/wujiawei0926/iconpicker" target="_blank" class="layui-btn layui-btn-danger">Layui-IconPicker</a>
        </blockquote>

        <div class="layui-form">
            <div class="layui-form-item">
                <label for="" class="layui-form-label">默认图标</label>
                <div class="layui-input-block">
                    <input type="text" id="iconPicker" lay-filter="iconPicker" class="hide">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="" class="layui-form-label">自定义图标</label>
                <div class="layui-input-block">
                    <input type="text" id="iconPicker1" value="fa-arrows" lay-filter="iconPicker2" class="hide">
                </div>
            </div>
        </div>

        <pre class="layui-code">
        iconPickerFa.render({
            // 选择器，推荐使用input
            elem: '#iconPicker',
            // fa 图标接口
            url: "/lib/font-awesome-4.7.0/less/variables.less",
            // 是否开启搜索：true/false，默认true
            search: true,
            // 是否开启分页：true/false，默认true
            page: true,
            // 每页显示数量，默认12
            limit: 12,
            // 点击回调
            click: function (data) {
                console.log(data);
            },
            // 渲染成功后的回调
            success: function (d) {
                console.log(d);
            }
        });
        </pre>

    </div>
</div>
<script src="/resource/lib/layui-v2.5.4/layui.js" charset="utf-8"></script>
<script src="/resource/js/lay-config.js?v=1.0.4" charset="utf-8"></script>
<script>
    layui.use(['iconPickerFa', 'form', 'layer'], function () {
        var iconPickerFa = layui.iconPickerFa,
            form = layui.form,
            layer = layui.layer,
            $ = layui.$;

        iconPickerFa.render({
            // 选择器，推荐使用input
            elem: '#iconPicker',
            // fa 图标接口
            url: "/resource/lib/font-awesome-4.7.0/less/variables.less",
            // 是否开启搜索：true/false，默认true
            search: true,
            // 是否开启分页：true/false，默认true
            page: true,
            // 每页显示数量，默认12
            limit: 12,
            // 点击回调
            click: function (data) {
                console.log(data);
            },
            // 渲染成功后的回调
            success: function (d) {
                console.log(d);
            }
        });

        iconPickerFa.render({
            // 选择器，推荐使用input
            elem: '#iconPicker1',
            // fa 图标接口
            url: "/resource/lib/font-awesome-4.7.0/less/variables.less",
            // 是否开启搜索：true/false
            search: true,
            // 是否开启分页
            page: true,
            // 每页显示数量，默认12
            limit: 12,
            // 点击回调
            click: function (data) {
                console.log(data);
            },
            // 渲染成功后的回调
            success: function (d) {
                console.log(d);
            }
        });

    });

</script>
</body>
</html>
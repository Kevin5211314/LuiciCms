/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : luicicms

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 19/02/2020 03:55:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ad_admin
-- ----------------------------
DROP TABLE IF EXISTS `ad_admin`;
CREATE TABLE `ad_admin` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '管理员用户名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '管理员密码',
  `mobile` char(20) DEFAULT '0' COMMENT '手机号',
  `email` varchar(255) DEFAULT '0' COMMENT '邮箱',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0禁用/1启动',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` varchar(16) NOT NULL DEFAULT '' COMMENT '上次登录IP',
  `login_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of ad_admin
-- ----------------------------
BEGIN;
INSERT INTO `ad_admin` VALUES (6, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '13800138000', '799788777@qq.com', 1, 1582055482, '127.0.0.1', 0, 1579584689, 1582055482);
INSERT INTO `ad_admin` VALUES (7, 'demo', 'e10adc3949ba59abbe56e057f20f883e', '13800139000', '7777777@qq.com', 1, 1579584732, '127.0.0.1', 0, 1579584732, 1579584732);
INSERT INTO `ad_admin` VALUES (11, 'jingFei', 'e10adc3949ba59abbe56e057f20f883e', '13800138000', '794783766@qq.com', 1, 1582010824, '127.0.0.1', 0, 1580799426, 1582010824);
INSERT INTO `ad_admin` VALUES (13, 'pross', 'e10adc3949ba59abbe56e057f20f883e', '13800138000', '777777777@qq.com', 1, 1582010852, '127.0.0.1', 0, 1580800237, 1582010852);
COMMIT;

-- ----------------------------
-- Table structure for ad_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `ad_admin_log`;
CREATE TABLE `ad_admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '管理员用户名',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `ip` varchar(16) NOT NULL DEFAULT '' COMMENT 'ip地址',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '请求链接',
  `method` varchar(32) NOT NULL DEFAULT '' COMMENT '请求类型',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '资源类型',
  `param` text NOT NULL COMMENT '请求参数',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '日志备注',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COMMENT='管理员日志';

-- ----------------------------
-- Records of ad_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `ad_admin_log` VALUES (1, 1, 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0) Gecko/20100101 Firefox/68.0', '111.194.45.32', 'http://blog.kevinfei.com/admin/index/clear.html', 'POST', 'json', '[]', '清除了系统缓存', 1565703734);
INSERT INTO `ad_admin_log` VALUES (2, 1, 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0) Gecko/20100101 Firefox/68.0', '111.194.45.32', 'http://blog.kevinfei.com/admin/config/setting.html', 'POST', 'json', '{\"4q2VolejRejNmGQB\":\"\",\"O3GWpmbk5ezJn4KR\":\"KevinFei-Blog\",\"PQZOpnel5aKBzyVX\":\"KevinFei\\u535a\\u5ba2\",\"rm0wMvbmOeYAlO1n\":\"KevinFei\\uff0c\\u535a\\u5ba2\\uff0cblog\\uff0c\\u6210\\u957f\\u7684\\u5c0f\\u767d\\u83dc\\uff0c\",\"VvJ4openRe7Az1XP\":\"KevinFei\\uff0c\\u535a\\u5ba2\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cblog\\uff0ckevinfei\\uff0cjingfei\\uff0c\\u535a\\u5ba2\\uff0c\\u51ef\\u6587\\uff0c\\u6210\\u957f\\u7684\\u5c0f\\u767d\\u83dc\",\"QABWJxbojagwOL0E\":\"http:\\/\\/blog.kevinfei.com\\/\",\"WYxk8mep2bMyJNjQ\":\"\\u535a\\u5ba2\\u540e\\u53f0\\u7ba1\\u7406\\u7cfb\\u7edf-\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae-\\u53d1\\u5e03\",\"M7Vl4zbq2dprOZqE\":\"\\u4eacICP\\u590716022068\\u53f7\",\"3VXyMYerEdOBQn6L\":\"<a href=\\\"http:\\/\\/www.cnzz.com\\/stat\\/website.php?web_id=1272900957\\\" target=\\\"_blank\\\" title=\\\"\\u7ad9\\u957f\\u7edf\\u8ba1\\\">\\u7ad9\\u957f\\u7edf\\u8ba1<\\/a>\"}', '更新基本设置', 1565703752);
INSERT INTO `ad_admin_log` VALUES (3, 1, 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0) Gecko/20100101 Firefox/68.0', '111.194.45.32', 'http://blog.kevinfei.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"bxwf\"}', '登录了后台系统', 1565705880);
INSERT INTO `ad_admin_log` VALUES (4, 1, 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0) Gecko/20100101 Firefox/68.0', '111.194.45.32', 'http://blog.kevinfei.com/admin/config/setting.html', 'POST', 'json', '{\"4q2VolejRejNmGQB\":\"\",\"O3GWpmbk5ezJn4KR\":\"KevinFei-Blog\",\"PQZOpnel5aKBzyVX\":\"KevinFei\\u535a\\u5ba2\",\"rm0wMvbmOeYAlO1n\":\"KevinFei\\uff0c\\u535a\\u5ba2\\uff0cblog\\uff0c\\u6210\\u957f\\u7684\\u5c0f\\u767d\\u83dc\\uff0c\",\"VvJ4openRe7Az1XP\":\"KevinFei\\uff0c\\u535a\\u5ba2\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cblog\\uff0ckevinfei\\uff0cjingfei\\uff0c\\u535a\\u5ba2\\uff0c\\u51ef\\u6587\\uff0c\\u6210\\u957f\\u7684\\u5c0f\\u767d\\u83dc\",\"QABWJxbojagwOL0E\":\"http:\\/\\/blog.kevinfei.com\\/\",\"WYxk8mep2bMyJNjQ\":\"\\u535a\\u5ba2\\u540e\\u53f0\\u7ba1\\u7406\\u7cfb\\u7edf-\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae-\\u53d1\\u5e03\",\"M7Vl4zbq2dprOZqE\":\"\\u4eacICP\\u590716022068\\u53f7\",\"3VXyMYerEdOBQn6L\":\"<a href=\\\"https:\\/\\/www.cnzz.com\\/stat\\/website.php?web_id=1277360007\\\" target=\\\"_blank\\\" title=\\\"\\u7ad9\\u957f\\u7edf\\u8ba1\\\">\\u7ad9\\u957f\\u7edf\\u8ba1<\\/a>\"}', '更新基本设置', 1565706076);
INSERT INTO `ad_admin_log` VALUES (5, 1, 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0) Gecko/20100101 Firefox/68.0', '111.194.45.32', 'http://blog.kevinfei.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"cqqc\"}', '登录了后台系统', 1565714614);
INSERT INTO `ad_admin_log` VALUES (6, 1, 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '111.194.45.32', 'http://blog.kevinfei.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"bhq8\"}', '登录了后台系统', 1565720507);
INSERT INTO `ad_admin_log` VALUES (144, 1, 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '111.194.44.53', 'https://blog.kevinfei.com/admin.html', 'POST', 'json', '{\"username\":\"admin\",\"password\":\"123456\",\"captcha\":\"pb3p\"}', '登录了后台系统', 1577724772);
INSERT INTO `ad_admin_log` VALUES (145, 1, 'admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '111.194.44.53', 'https://blog.kevinfei.com/admin/index/clear.html', 'POST', 'json', '[]', '清除了系统缓存', 1577724787);
COMMIT;

-- ----------------------------
-- Table structure for ad_article
-- ----------------------------
DROP TABLE IF EXISTS `ad_article`;
CREATE TABLE `ad_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `image` varchar(255) DEFAULT '' COMMENT '图片',
  `author` varchar(255) DEFAULT '' COMMENT '作者',
  `summary` text COMMENT '简介',
  `photo` text COMMENT '相册',
  `content` longtext COMMENT '内容',
  `view` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `is_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `sort_order` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `fabulous` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='文章';

-- ----------------------------
-- Records of ad_article
-- ----------------------------
BEGIN;
INSERT INTO `ad_article` VALUES (17, 2, 'php strlen mb_strlen计算中英文混排字符串长度', '', '成长的小白菜', '本文主要是介绍 在php中常见的计算字符串长度的函数有：strlen 和 mb_strlen，下面是对这两个函数的比较说明（编码方式UTF8）', '', '<p>在php中常见的计算字符串长度的函数有：strlen和mb_strlen，下面是对这两个函数的比较说明（编码方式UTF8）</p><p><br/></p><p>比较strlen和mb_strlen</p><p><br/>当字符全是英文字符的时候，两者是一样。这里主要比较一下，中英文混排的时候，两个计算结果。（测试时编码方式是UTF8）</p><p><br/>&lt;?php <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;$str=‘中文a字1符‘; <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo strlen($str); <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo ‘‘; <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo mb_strlen($str,‘UTF8‘); <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//输出结果 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//14 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//6 <br/>?> <br/></p><p><br/>结果分析：在strlen计算时，对待一个UTF8的中文字符是3个长度，所以“中文a字1符”长度是3*4+2=14 <br/>在mb_strlen计算时，选定内码为UTF8，则会将一个中文字符当作长度1来计算，所以“中文a字1符”长度是6 <br/>关于中英文混排串的占位符计算： <br/>利用这两个函数则可以联合计算出一个中英文混排的串的占位是多少（一个中文字符的占位是2，英文字符是1），计算的方法是：如果一个混排字符串有a个中文，b个英文，占位是: <br/></p><p><br/></p><p><br/>&lt;?php <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$str=‘中文a字1符‘; <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//计算如下 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo (strlen($str) + mb_strlen($str,‘UTF8‘)) / 2; <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//输出结果 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//10 <br/>?> <br/></p><p><br/>例如 “中文a字1符” 的strlen($str)值是14，mb_strlen($str)值是6，则可以计算出“中文a字1符”的占位是10. <br/>附网站的一篇文章：<br/>还是有关中文的问题。PHP内置的字符串长度函数strlen无法正确处理中文字符串，它得到的只是字符串所占的字节数。对于GB2312的中文编码，strlen得到的值是汉字个数的2倍，而对于UTF-8编码的中文，就是3倍的差异了（在UTF-8编码下，一个汉字占3个字节）。 <br/><br/>采用mb_strlen函数可以较好地解决这个问题。mb_strlen的用法和strlen类似，只不过它有第二个可选参数用于指定字符编码。例如得到UTF-8的字符串$str长度，可以用mb_strlen($str,&#39;UTF-8&#39;)。如果省略第二个参数，则会使用PHP的内部编码。内部编码可以通过mb_internal_encoding()函数得到。需要注意的是，mb_strlen并不是PHP核心函数，使用前需要确保在php.ini中加载了php_mbstring.dll，即确保“extension=php_mbstring.dll”这一行存在并且没有被注释掉，否则会出现未定义函数的问题。</p><p>&nbsp;</p>', 269, 0, 0, 1, 100, 'strlen，string，php，mb_strlen', '计算中英文混排字符串长度', 0, 1553226602, 1566846224);
INSERT INTO `ad_article` VALUES (18, 2, 'git利用post-receive自动化部署', '/public/upload/image/20190417/7676e689b32b762112274b6f795054f0.jpg', '成长的小白菜', '实现git利用post-receive自动化部署项目，git push 直接完成代码部署到服务器的目录，利用git的hooks中的post-receive来实现代码提交完成之后的动作。将仓库指定一个--work-tree然后进行检出操作checkout --force...', '', '<p>我自己的项目结构是这样的，每一个仓库对应一个项目，例如<code>public/wx</code>项目对应<code>repo/wx.git</code>仓库</p><pre class=\"hljs typescript\">.\r\n├──&nbsp;public\r\n&nbsp;&nbsp;&nbsp;&nbsp;└──&nbsp;wx&nbsp;&nbsp;&nbsp;//&nbsp;这是我们的web代码部署目录\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|──&nbsp;index.php\r\n│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;test2.ph\r\n│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;test3.php\r\n│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└──&nbsp;test.php\r\n└──&nbsp;repo&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;这个是我们的仓库目录\r\n&nbsp;&nbsp;&nbsp;&nbsp;└──&nbsp;wx.git&nbsp;//&nbsp;这个对应wx项目的仓库\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;branches\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;config\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;description\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;HEAD\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;hooks&nbsp;//&nbsp;post-receive钩子代码写在这里面\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;index\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;info\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;objects\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└──&nbsp;refs</pre><p>再看下hooks文件目录</p><pre class=\"hljs css\">.\r\n├──&nbsp;applypatch-msg.sample\r\n├──&nbsp;commit-msg.sample\r\n├──&nbsp;post-commit.sample\r\n├──&nbsp;post-receive\r\n├──&nbsp;post-receive.sample\r\n├──&nbsp;post-update.sample\r\n├──&nbsp;pre-applypatch.sample\r\n├──&nbsp;pre-commit.sample\r\n├──&nbsp;prepare-commit-msg.sample\r\n├──&nbsp;pre-rebase.sample\r\n└──&nbsp;update.sample</pre><p>我们将<code>post-receive.sample</code>复制一份<code>post-receive</code>，并且编写代码如下</p><pre class=\"hljs properties\">#&nbsp;指定我的代码检出目录DIR=/www/public/wxgit&nbsp;--work-tree=${DIR}&nbsp;clean&nbsp;-fd\r\n\r\n#&nbsp;直接强制检出git&nbsp;--work-tree=${DIR}&nbsp;checkout&nbsp;--force</pre><h2>如何生成目录</h2><p>上面看到的repo目录中的<code>wx.git</code>实际上是一个裸仓库，我们用下面的命令来生成这样一个仓库。</p><pre class=\"hljs properties\">cd&nbsp;/www/repo\r\n\r\ngit&nbsp;init&nbsp;--bare&nbsp;wx.git</pre><p>对于代码部署目录和仓库我们已经通过<code>post-receive</code>进行了关联了，因为我们一旦将代码push到仓库，那么会自动检出到<code>publish/wx</code>目录下。</p><h2>远程部署</h2><p>在本地电脑上，我们添加远程仓库</p><pre class=\"hljs groovy\">git&nbsp;init\r\n\r\ngit&nbsp;remote&nbsp;add&nbsp;origin&nbsp;git@xxx.xxx.xxx.xxx:/www/repo/wx.git</pre><p>这个时候我们添加了远程仓库，那么我们来测试下<code>push</code>操作</p><pre class=\"hljs properties\">touch&nbsp;index.php\r\n\r\ngit&nbsp;add&nbsp;.\r\n\r\ngit&nbsp;commit&nbsp;-m&nbsp;&#39;test&#39;\r\n\r\ngit&nbsp;push&nbsp;origin&nbsp;master</pre><p>可能会提示一个<code>--set-upstream</code>，直接执行下就好了。执行完之后我们登陆服务器，会发现文件已经出现在<code>public/wx/index.php</code></p><h2>注意点</h2><ol class=\" list-paddingleft-2\"><li><p><span style=\"color: rgb(255, 0, 0);\">如果我们没有配置</span><code><span style=\"color: rgb(255, 0, 0);\">ssh免密码登陆</span></code><span style=\"color: rgb(255, 0, 0);\">的话，我们需要在</span><code><span style=\"color: rgb(255, 0, 0);\">push</span></code><span style=\"color: rgb(255, 0, 0);\">代码的时候输入密码</span></p></li><li><p><span style=\"color: rgb(255, 0, 0);\">如果我们添加的远程仓库不是</span><code><span style=\"color: rgb(255, 0, 0);\">root@xxx.xxx.xx.xx</span></code><span style=\"color: rgb(255, 0, 0);\">，例如是<code>git</code></span><code><span style=\"color: rgb(255, 0, 0);\">@xx.xx.xx.xx</span></code><span style=\"color: rgb(255, 0, 0);\">，那么我们要确保 git</span><span style=\"color: rgb(255, 0, 0);\">用户对</span><code><span style=\"color: rgb(255, 0, 0);\">wx.git</span></code><span style=\"color: rgb(255, 0, 0);\">目录下的文件有</span><code><span style=\"color: rgb(255, 0, 0);\">777</span></code><span style=\"color: rgb(255, 0, 0);\">权限。</span></p></li></ol><h3>新增仓库</h3><ol class=\" list-paddingleft-2\"><li><p>需要登陆远程服务器进行初始化<code>repo_name.git</code>仓库</p></li><li><p>需要手动创建<code>public/repo_name</code>文件夹，并且修改权限为777</p></li><li><p>需要重新编写<code>hooks/post-recieve</code>文件，修改里面的DIR路径为<code>public/repo_name</code></p></li></ol><p><br/></p>', 505, 0, 0, 1, 100, 'git自动化部署，post-receive', 'git自动化部署，post-receive，git利用post-receive自动化部署', 0, 1554712984, 1566174378);
INSERT INTO `ad_article` VALUES (19, 12, '博客声明', '', '成长的小白菜', '本博客属个人所有，不涉及商业目的。遵守中华人民共和国法律法规、中华民族基本道德和基本网络道德规范，尊重有节制的言论自由和意识形态自由，反对激进、破坏、低俗、广告、投机等不负责任的言行...', '', '<p style=\"line-height:22px;\"><br/></p><p style=\"line-height:22px;\">本博客属个人所有，不涉及商业目的。遵守中华人民共和国法律法规、中华民族基本道德和基本网络道德规范，尊重有节制的言论自由和意识形态自由，反对激进、破坏、低俗、广告、投机等不负责任的言行。所有转载的文撰写页面章、图片仅用于说明性目的，被要求或认为适当时，将标注署名与来源。避免转载有明确“不予转载”声明的作品。若不愿某一作品被转用，请及时通知本人。对于无版权或自由版权作品，本博客有权进行修改和传播，一旦涉及实质性修改，本博客将对修改后的作品享有相当的版权。二次转载者请再次确认原作者所给予的权力范围。<br/>本博客所有原创作品，包括文字、资料、图片、网页格式，转载时请标注作者与来源。非经允许，不得用于赢利目的。本博客受中国知识产权、互联网法规和知识共享条例保护和保障，任何人不得进行旨在破坏或牟取私利的行为。本博客声明以简体中文版为准，不对其他语言版本负责。</p><p style=\"line-height:22px;\"><br/></p><p><img src=\"http://creativecommons.org/images/public/somerights20.png\" alt=\"Creative Commons License\"/> 本博客的所有原创作品采用<a href=\"http://cn.creativecommons.org/\" style=\"text-decoration: underline; font-size: 16px;\"><span style=\"font-size: 16px;\"><strong>“知识共享”</strong></span></a><a href=\"http://creativecommons.org/licenses/by-nc-sa/2.5/\" style=\"text-decoration: underline; font-size: 16px;\"><span style=\"font-size: 16px;\"><strong>署名-非商业性使用-相同方式共享2.5协议</strong></span></a>进行许可</p><p><br/></p><p>Boke statement</p><p>The Boke is own by person, without commercial purposes. It compliances \r\nwith the PRC laws and regulations, the Chinese nation and the basic \r\nnetworks basic moral ethics. It respects for freedom of expression and \r\nideological freedom restraint, but against the radical opposition, \r\ndestruction, entertainment, advertising or irresponsible speculation \r\nwords and deeds. All reproduced articles and pictures are for \r\nillustrative purposes only. if it’s required or deemed appropriate, the \r\nsource will be identified and signed. Avoid reproduced clearly “not \r\nreproduced” statement works. If not a diversion works, please timely \r\nnotification me. For copyright-free or free of copyright works, the \r\nright to revise and dissemination Boke, once involving substantive \r\nchanges to the revised Boke will enjoy considerable copyright works. \r\nSecond reproduced please reconfirmed either the original authors for \r\ntheir power. The Boke of all original works, including text, data, \r\npictures, web page format, reproduced with the author, please indicate \r\nthe source. ECA permit may not be used for profitable purposes. The Boke\r\n of Chinese intellectual property, the laws and regulations to protect \r\nand safeguard knowledge-sharing, aimed at the destruction of any person \r\nshall conduct or seek personal gain. Boke to Simplified Chinese version \r\nof this statement is that no other language versions.</p><p><br/></p><p><br/></p>', 473, 0, 0, 1, 100, '博客声明，关键字', '博客声明，描述', 1, 1554945001, 1559815799);
INSERT INTO `ad_article` VALUES (20, 9, '分布式数据库拆表拆库的常用策略', '', '成长的小白菜', '在大容量，高负荷的web系统中，对数据库进行一系列拆分，可有效提升数据库容量和性能。在初学程序的早期，程序员通常都喜欢按传统数据库设计模式，设计为单库和单一功能表的结构，这样的结构在数据量和并发量达到一定程度之后，会出现严重性能问题和维护问题...', '/public/upload/image/20190417/518eef98bcf2061022ba1e3be2b42efb.jpg', '<p><br/></p><p>在大容量，高负荷的web系统中，对数据库进行一系列拆分，可有效提升数据库容量和性能。在初学程序的早期，程序员通常都喜欢按传统数据库设计模式，设计为单库和单一功能表的结构，这样的结构在数据量和并发量达到一定程度之后，会出现严重性能问题和维护问题。在出现问题的时候才着手进行优化，会非常痛苦，所以应该在系统架设之初就考虑好之后会出现的问题。</p><p>目前有些数据库策略是采用单库结构，然后通过同步分发到数台服务器实现读写分离。个人觉得这样的策略非常笨拙，还是想办法将其分隔开来好，否则每台机器的内存都很容易超支。</p><p>一般只对数据量比较大的表进行拆分，这应该没有什么异议；还有一种是有可能会进行维护的比较重要的表，比如文章目录表，如果有从其它系统倒数据进来的可能的话，也要拆掉，不然倒数据时一不小心把目录表弄坏了，发现忘了备份，那真是欲哭无泪。</p><p>下面来分析一下：</p><p><strong>一、时间结构</strong></p><p>如果业务系统对时效性较高，比如新闻发布系统的文章表，可以把数据库设计成时间结构，按时间分有几种结构：</p><p>1) 平板式:<br/>表类似：<br/>article_200901<br/>article_200902<br/>article_200903</p><p>用年来分还是用月可自定，但用日期的话表就太多了，也没这必要。一般建议是按月分就可以。</p><p>这种分法，其难处在于，假设我要列20条数据，结果这三张表里都有2条，那么业务上很有可能要求读三次表。如果时间长了，有几十张表，而每张表是0条，那不就是要读完整个系统的表才行么？另外这个结构，要作分页是比较难实现的。</p><p>主键：在这个系统中，主键是11位带毫秒的时间戳，不要用自动编号，否则难以通过主键定位到表，也可以在查询时带上时间，但比较烦琐。</p><p>2) 归档式:</p><p>表类似：<br/>article_old<br/>article_new</p><p>为了解决平板式的缺点，可以采用时间归档式设计，可以看到这个系统只有两张表。一张是旧文章表，一张是新文章表，新文章表放2个月的信息，每天定期把2个月中的最早一天的文章归入旧表中。这样一方面可以解决性能问题，因为一般新闻发布系统读取的都是新的内容，旧的内容读取少；第二可以委婉地解决功能问题，比如平板式所说的问题，在归档式中最多也只需要读2张表就完成了。</p><p>归档式的缺点在于旧表容量还是相对比较大，如果业务允许，可对旧表中的超旧内容进行再归档或直接清理掉。<br/><strong><br/>二、版块结构</strong></p><p>如果按照文章的所属版块进行拆表，比如新闻、体育版块拆表，一方面可以使每个表数据量分离，另一方面是各版块之间相互影响可降到最低。假如新闻版块的数据表损坏或需要维护，并不会影响到体育版块的正常工作，从而降低了风险。版块结构同时常用于bbs这样的系统。</p><p>板块结构也有几种分法：</p><p>1) 对应式:</p><p>对于版块数量不多，而且较为固定的形式，就直接对应就好。比如新闻版块，可以分出新闻的目录表，新闻的文章表等。</p><p>news_category<br/>news_article<br/>sports_category<br/>sports_article</p><p>可看到每一个版块都对应着一组相同的表结构，好处就是一目了然。在功能上，因为版块之间还是有一些隔阂，所以需要联合查询的需求不多，开发上比时间结构的方式要轻松。</p><p>主键：依旧要考虑的，在这个系统中，主键是版块 时间戳，单纯的时间戳或自动编号也能用，查询时要记得带上版块用于定位表。</p><p>2) 冷热式:</p><p>对应式的缺点是，如果版块数量很大而且不确定，那要分出的表数量就太多了。举个例子：百度贴吧，如果按一个词条一个表设计，那得有多少张表呢？</p><p>用这样的方式吧。</p><p>tieba_汽车<br/>tieba_飞机<br/>tieba_火箭<br/>tieba__unite</p><p>这个表汽车、火箭表是属于热门表，定义为新建的版块放在unite表里面，待到其超过一万张主贴的时候才开对应表结构。因为在贴吧这种系统中，冷门版块肯定比热门版块多得多，这些冷门版块通常只有几张帖子，为它们开表也太浪费了；同时热门版块数量和访问量等，又比冷门版块多得多，非常有特点。</p><p>unite表还可以扩展成哈希表，利用词条的md5编码，可以分成n张表，我算了一下，md5前一位可分36张表，两位即是1296张表，足够了。</p><p>tieba_unite_ab<br/>tieba_unite_ac<br/>…<br/><strong><br/>三、哈希结构</strong></p><p>哈希结构通常用于博客之类的基于用户的场合，在博客这样的系统里有几个特点，1是用户数量非常多，2是每个用户发的文章数量都较少，3是用户发文章不定期，4是每个用户发得不多，但总量仍非常之大。基于这些特点，用以上所说的任何一种分表方式都不合适，一没有固定的时效不宜用时间拆，二用户很多，而且还偏偏都是冷门，所以也不宜用版块（用户）拆。</p><p>哈希结构在上面有所提及，既然按每个用户不好直接拆，那就把一群用户归进一个表好了。</p><p>blog_aa<br/>blog_ab<br/>blog_ac<br/>…</p><p>如上所说，md5取前两位哈希可以达到1296张表，如果觉得不够，那就再加一位，总数可达46656张表，还不够？</p><p>表的数量太多，要创建这些表也是挺麻烦的，可以考虑在程序里往数据库insert之前，多执行一句判断表存在与否并创建表的语句，很实用，消耗也并不很大。</p><p>主键：依旧要考虑的，在这个系统中，主键是用户ID 时间戳，单纯的时间戳或自动编号也能用，但查询时要记得带上用户名用于定位表。</p><p><strong>四、总分结构</strong></p><p>以上的这些结构，根据每个业务系统，能想出的估计还有很多。不过现在互联网业务越来越复杂了，有些时候，单一的拆分法还不能实现需求，需要几种拆分方案一起实施，多管齐下，这时候其中的逻辑会让人绕晕。我就开发过一个系统，仅仅是将哈希结构和时间结构混着一用，觉得逻辑就相当复杂。</p><p>所以，除了拆表之外，按最原始的单库单表，再建一个总表，是非常有利的架构。在这个架构中，每次往数据库会写入两倍数据，读取主要依赖拆表提升性能，总表用于实现拆表后难以实现的功能并且用于每天的定时备份；另外总表和分表还相互是一个完整的备份，任何一个分表损坏或数据不正常，都可以从总表中读到正确的数据并恢复，反之亦然。</p><p>在总分结构中，让人感到质疑的是总表的性能和可维护性。我的方案是总表可采用相对能保证稳定的一些服务软件和架构，例如oracle，或lvs \r\npgpool \r\nPostgreSQL，重点保证数据稳定；相对的，分表就用轻量级的mysql，重点在于速度。能够对总分表各采用不同的软件和方案，也是总分结构的一大特点</p><p>No related posts.</p><p><br/></p><p><br/></p>', 212, 0, 0, 1, 100, '', '', 0, 1492674064, 1568263962);
INSERT INTO `ad_article` VALUES (80, 3, '转载：深入理解PHP内存管理之谁动了我的内存', '', '成长的小白菜', 'php源码分析之深入理解PHP内存管理之谁动了我的内存，php内存管理。', '', '<p>首先让我们看一个问题: 如下代码的输出,</p><pre class=\"sh_php sh_sourceCode\">var_dump(memory_get_usage());\r\n$a&nbsp;=&nbsp;\"laruence\";\r\nvar_dump(memory_get_usage());\r\nunset($a);\r\nvar_dump(memory_get_usage());</pre><p>输出(在我的个人电脑上, 可能会因为系统,PHP版本,载入的扩展不同而不同):</p><pre class=\"sh_bash\">int(90440)\r\nint(90640)\r\nint(90472)</pre><p>注意到 90472-90440=32, 于是就有了各种的结论, 有的人说PHP的unset并不真正释放内存, 有的说, PHP的unset只是在释放大变量(大量字符串, 大数组)的时候才会真正free内存, 更有人说, 在PHP层面讨论内存是没有意义的.</p><p>那么, 到底unset会不会释放内存? 这32个字节跑哪里去了?</p><p>要回答这个问题, &nbsp;我将从俩个方面入手:</p><h3>这32个字节去哪里了</h3><p><strong>首先我们要打破一个思维: PHP不像C语言那样, 只有你显示的调用内存分配相关API才会有内存的分配. </strong><br/>也就是说, 在PHP中, 有很多我们看不到的内存分配过程.<br/>比如对于:</p><pre class=\"sh_php sh_sourceCode\">$a&nbsp;=&nbsp;\"laruence\";</pre><p>隐式的内存分配点就有:</p><pre class=\"sh_bash\">1.&nbsp;为变量名分配内存,&nbsp;存入符号表2.&nbsp;为变量值分配内存</pre><p>所以, 不能只看表象.<br/>第二, <strong>别怀疑,PHP的unset确实会释放内存</strong>(当然, 还要结合引用和计数, 这部分的内容请参看我之前的文章<a href=\"http://www.laruence.com/2008/09/19/520.html\">深入理解PHP原理之变量分离/引用</a>), 但这个释放不是C编程意义上的释放, 不是交回给OS.<br/>对于PHP来说, &nbsp;它自身提供了一套和C语言对内存分配相似的内存管理API:</p><pre class=\"sh_php sh_sourceCode\">emalloc(size_t&nbsp;size);\r\nefree(void&nbsp;*ptr);\r\necalloc(size_t&nbsp;nmemb,&nbsp;size_t&nbsp;size);\r\nerealloc(void&nbsp;*ptr,&nbsp;size_t&nbsp;size);\r\nestrdup(const&nbsp;char&nbsp;*s);\r\nestrndup(const&nbsp;char&nbsp;*s,&nbsp;unsigned&nbsp;int&nbsp;length);</pre><p>这些API和C的API意义对应, 在PHP内部都是通过这些API来管理内存的.</p><p>当我们调用emalloc申请内存的时候, PHP并不是简单的向OS要内存, 而是会像OS要一个大块的内存, 然后把其中的一块分配给申请者, 这样当再有逻辑来申请内存的时候, 就不再需要向OS申请内存了, 避免了频繁的系统调用.</p><p>比如如下的例子:</p><pre class=\"sh_php sh_sourceCode\"><?php\r\n&nbsp;&nbsp;&nbsp;&nbsp;var_dump(memory_get_usage(TRUE));&nbsp;//注意获取的是real_size\r\n&nbsp;&nbsp;&nbsp;&nbsp;$a&nbsp;=&nbsp;\"laruence\";\r\n&nbsp;&nbsp;&nbsp;&nbsp;var_dump(memory_get_usage(TRUE));\r\n&nbsp;&nbsp;&nbsp;&nbsp;unset($a);\r\n&nbsp;&nbsp;&nbsp;&nbsp;var_dump(memory_get_usage(TRUE));</pre><p>输出:</p><pre class=\"sh_bash\">int(262144)int(262144)int(262144)</pre><p>也就是我们在定义变量$a的时候, PHP并没有向系统申请新内存.</p><p>同样的, 在我们调用efree释放内存的时候, PHP也不会把内存还给OS, 而会把这块内存, 归入自己维护的空闲内存列表. \r\n而对于小块内存来说, 更可能的是, 把它放到内存缓存列表中去(后记, 某些版本的PHP, 比如我验证过的PHP5.2.4, 5.2.6, \r\n5.2.8, 在调用get_memory_usage()的时候, 不会减去内存缓存列表中的可用内存块大小, 导致看起来, \r\nunset以后内存不变, 见评论).</p><p>现在让我来回答这32个字节跑哪里去了, &nbsp;就向我刚才说的, 很多内存分配的过程不是显式的, 看了下面的代码你就明白了:</p><pre class=\"sh_php sh_sourceCode\"><br/></pre><p>输出:</p><pre class=\"sh_bash\">string(43)&nbsp;\"I&nbsp;am&nbsp;Laruence,&nbsp;From&nbsp;http://www.laruence.com\"int(90808)&nbsp;//赋值前\r\n\r\nint(90976)int(90808)&nbsp;//是的,&nbsp;内存正常释放了</pre><p>90808-90808 = 0, 正常了, 也就是说这32个字节是被输出函数给占用了(严格来说, 是被输出的Header占用了)</p><h3>只增不减的数组</h3><p>Hashtable是PHP的核心结构(了解Hashtable, 可以参看我之前的文章<a href=\"http://www.laruence.com/2009/08/23/1065.html\">深入理解PHP之数组(遍历顺序)</a>), 数组也是用她来表示的, 而符号表也是</p><p>一种关联数组, 对于如下代码:</p><pre class=\"sh_php sh_sourceCode\">var_dump(\"I&nbsp;am&nbsp;Laruence,&nbsp;From&nbsp;&nbsp;\r\nvar_dump(memory_get_usage());\r\n$array&nbsp;=&nbsp;array_fill(1,&nbsp;100,&nbsp;\"laruence\");\r\nforeach&nbsp;($array&nbsp;as&nbsp;$key&nbsp;=>&nbsp;$value)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;${$value&nbsp;.&nbsp;$key}&nbsp;=&nbsp;NULL;\r\n}\r\nvar_dump(memory_get_usage());\r\nforeach&nbsp;($array&nbsp;as&nbsp;$key=>&nbsp;$value)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;unset(${$value&nbsp;.&nbsp;$key});\r\n}\r\nvar_dump(memory_get_usage());</pre><p>我们定义了100个变量, &nbsp;然后又按个Unset了他们, 来看看输出:</p><pre class=\"sh_bash\">string(43)&nbsp;\"I&nbsp;am&nbsp;Laruence,&nbsp;From&nbsp;http://www.laruence.com\"int(93560)int(118848)int(104448)</pre><p>Wow, 怎么少了这么多内存?<br/>这是因为对于Hashtable来说, 定义它的时候, 不可能一次性分配足够多的内存块, 来保存未知个数的元素, 所以PHP会在初始化的时候, 只是分配</p><p>一小部分内存块给HashTable, 当不够用的时候再RESIZE扩容,</p><p>而Hashtable, 只能扩容, 不会减少, 对于上面的例子, 当我们存入100个变量的时候, 符号表不够用了, 做了一次扩容, \r\n而当我们依次unset掉这100</p><p>个变量以后, 变量占用的内存是释放了(118848 – 104448), 但是符号表并没有缩小, \r\n所以这些少的内存是被符号表本身占去了…</p><p>现在, 你是不是对PHP的内存管理有了一个初步的认识了呢?</p><p><br/></p>', 117, 0, 0, 1, 100, '内存管理之谁动了我的内存、php、内存、kevinFei、博客', '内存管理之谁动了我的内存、php、内存、kevinFei、博客', 0, 1564635845, 1564932578);
INSERT INTO `ad_article` VALUES (81, 3, '深入理解PHP之数组(遍历顺序)', '', '惠新辰', '转载鸟哥深入理解PHP之数组(遍历顺序)，本文章主要是解释php的foreach循环的编辑指针和遍历顺序的解释。欢迎大家查看和学习！', '', '<p>经常会有人问我, PHP的数组, 如果用foreach来访问, 遍历的顺序是固定的么? 以什么顺序遍历呢?<br/>比如:</p><pre class=\"sh_php sh_sourceCode\">&lt;?php\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr[&#39;laruence&#39;]&nbsp;=&nbsp;&#39;huixinchen&#39;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr[&#39;yahoo&#39;]&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;2007;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr[&#39;baidu&#39;]&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;2008;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;($arr&nbsp;as&nbsp;$key&nbsp;=>&nbsp;$val)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//结果是什么?\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p>又比如:</p><pre class=\"sh_php sh_sourceCode\">&lt;?php\r\n&nbsp;&nbsp;&nbsp;&nbsp;$arr[2]&nbsp;=&nbsp;&#39;huixinchen&#39;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;$arr[1]&nbsp;&nbsp;=&nbsp;2007;\r\n&nbsp;&nbsp;&nbsp;&nbsp;$arr[0]&nbsp;&nbsp;=&nbsp;2008;\r\n&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;($arr&nbsp;as&nbsp;$key&nbsp;=>&nbsp;$val)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;//现在结果又是什么?\r\n&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p>要完全了解清楚这个问题, 我想首先应该要大家了解PHP数组的内部实现结构………</p><h3>PHP的数组</h3><p>在PHP中, 数组是用一种HASH结构(HashTable)来实现的, PHP使用了一些机制, 使得可以在O(1)的时间复杂度下实现数组的增删, 并同时支持线性遍历和随机访问.</p><p>之前的文章中也讨论过, <a href=\"http://www.laruence.com/2009/07/23/994.html\" target=\"_blank\">PHP的HASH算法</a>, 基于此, 我们做进一步的延伸.</p><p>认识HashTable之前, 首先让我们看看HashTable的结构定义, 我加了注释方便大家理解:</p><pre class=\"sh_cpp sh_sourceCode\">typedef&nbsp;struct&nbsp;_hashtable&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint&nbsp;nTableSize;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;散列表大小,&nbsp;Hash值的区间&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint&nbsp;nTableMask;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;等于nTableSize&nbsp;-1,&nbsp;用于快速定位&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint&nbsp;nNumOfElements;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;HashTable中实际元素的个数&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ulong&nbsp;nNextFreeElement;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;下个空闲可用位置的数字索引&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bucket&nbsp;*pInternalPointer;&nbsp;&nbsp;&nbsp;/*&nbsp;内部位置指针,&nbsp;会被reset,&nbsp;current这些遍历函数使用&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bucket&nbsp;*pListHead;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;头元素,&nbsp;用于线性遍历&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bucket&nbsp;*pListTail;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;尾元素,&nbsp;用于线性遍历&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bucket&nbsp;**arBuckets;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;实际的存储容器&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dtor_func_t&nbsp;pDestructor;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;元素的析构函数(指针)&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_bool&nbsp;persistent;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned&nbsp;char&nbsp;nApplyCount;&nbsp;&nbsp;/*&nbsp;循环遍历保护&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_bool&nbsp;bApplyProtection;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#if&nbsp;ZEND_DEBUG\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;inconsistent;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#endif\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;\r\nHashTable;</pre><p>关于nApplyCount的意义, 我们可以通过一个例子来了解:</p><pre class=\"sh_php sh_sourceCode\">&lt;?php&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr&nbsp;=&nbsp;array(1,2,3,4,5,);&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr[]&nbsp;=&nbsp;&$arr;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var_export($arr);&nbsp;//Fatal&nbsp;error:&nbsp;Nesting&nbsp;level&nbsp;too&nbsp;deep&nbsp;-&nbsp;recursive&nbsp;dependency?</pre><p>这个字段就是为了防治循环引用导致的无限循环而设立的.</p><p>查看上面的结构, 可以看出, 对于HashTable, 关键元素就是arBuckets了, 这个是实际存储的容器, 让我们来看看它的结构定义:</p><pre class=\"sh_cpp sh_sourceCode\">typedef&nbsp;struct&nbsp;bucket&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ulong&nbsp;h;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;数字索引/hash值&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint&nbsp;nKeyLength;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;字符索引的长度&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;void&nbsp;*pData;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;数据&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;void&nbsp;*pDataPtr;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;数据指针&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct&nbsp;bucket&nbsp;*pListNext;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;下一个元素,&nbsp;用于线性遍历&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct&nbsp;bucket&nbsp;*pListLast;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;上一个元素,&nbsp;用于线性遍历&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct&nbsp;bucket&nbsp;*pNext;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;处于同一个拉链中的下一个元素&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct&nbsp;bucket&nbsp;*pLast;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;处于同一拉链中的上一个元素&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;char&nbsp;arKey[1];&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;节省内存,方便初始化的技巧&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;\r\n&nbsp;Bucket;</pre><p>我们注意到, 最后一个元素, 这个是flexible array技巧, 可以节省内存,和方便初始化的一种做法, 有兴趣的朋友可以google flexible array.</p><p>h是元素的Hash值,对于数字索引的元素,h为直接索引值(通过nKeyLength=0来表示是数字索引).而对于字符串索引来说, 索引值保存在arKey中, 索引的长度保存在nKeyLength中.</p><p>在Bucket中，实际的数据是保存在pData指针指向的内存块中，通常这个内存块是系统另外分配的。但有一种情况例外，就是当Bucket保存\r\n \r\n的数据是一个指针时，HashTable将不会另外请求系统分配空间来保存这个指针，而是直接将该指针保存到pDataPtr中，然后再将pData指向本结构成员的地址。这样可以提高效率，减少内存碎片。由此我们可以看到PHP\r\n HashTable设计的精妙之处。如果Bucket中的数据不是一个指针，pDataPtr为NULL(本段来自Altair的”Zend HashTable详解”)</p><p>结合上面的HashTable结构, 我们来说明下HashTable的总结构图:<br/></p><p><a href=\"http://laruence-blog.stor.sinaapp.com/uploads/2009/07/e697a0e6a087e9a298.jpg\"><img src=\"/public/upload/image/20190805/1564935517952067.jpg\" alt=\"HashTable结构示意图\" title=\"e697a0e6a087e9a298\" class=\"size-full wp-image-1011\" width=\"500\" height=\"326\"/></a>HashTable结构示意图</p><p>HashTable的pListhHead指向线性列表形式下的第一个元素, 上图中是元素1, pListTail指向的是最后一个元素0, 而对于每一个元素pListNext就是红色线条画出的线性结构的下一个元素, 而pListLast是上一个元素.</p><p>pInternalPointer指向当前的内部指针的位置, 在对数组进行顺序遍历的时候, 这个指针指明了当前的元素.</p><p>当在线性(顺序)遍历的时候, 就会从pListHead开始, 顺着Bucket中的pListNext/pListLast, 根据移动pInternalPointer, 来实现对所有元素的线性遍历.</p><p>比如, 对于foreach, 如果我们查看它生成的opcode序列, 我们可以发现, 在foreach之前, 会首先有个FE_RESET来重置数组的内部指针, 也就是pInternalPointer(关于foreach可以参看<a href=\"http://www.laruence.com/2008/11/20/630.html\">深入理解PHP原理之foreach</a>), 然后通过每次FE_FETCH来递增pInternalPointer,从而实现顺序遍历.</p><p>类似的, 当我们使用, each/next系列函数来遍历的时候, 也是通过移动数组的内部指针而实现了顺序遍历, 这里有一个问题, 比如:</p><pre class=\"sh_php sh_sourceCode\">&lt;?php\r\n&nbsp;&nbsp;&nbsp;&nbsp;$arr&nbsp;=&nbsp;array(1,2,3,4,5);\r\n&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;($arr&nbsp;as&nbsp;$v)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;//可以获取\r\n&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;while&nbsp;(list($key,&nbsp;$v)&nbsp;=&nbsp;each($arr))&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;//获取不到\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n?></pre><p>了解到我刚才介绍的知识, 那么这个问题也就很明朗了, 因为foreach会自动reset, 而while这块不会reset, \r\n所以在foreach结束以后, pInternalPointer指向数组最末端, while语句块当然访问不到了, \r\n解决的办法就是在each之前, 先reset数组的内部指针.</p><p>而在随机访问的时候, 就会通过hash值确定在hash数组中的头指针位置, 然后通过pNext/pLast来找到特点元素.</p><p>增加元素的时候, 元素会插在相同Hash元素链的头部和线性列表的尾部. 也就是说, 元素在线性遍历的时候是根据插入的先后顺序来遍历的, 这个特殊的设计使得在PHP中,当使用数字索引时, 元素的先后顺序是由添加的顺序决定的,而不是索引顺序.</p><p>也就是说, PHP中遍历数组的顺序, 是和元素的添加先后相关的, 那么, 现在我们就很清楚的知道, 文章开头的问题的输出是:</p><pre class=\"sh_php sh_sourceCode\">huixinchen\r\n2007\r\n2008</pre><p>所以, 如果你想在数字索引的数组中按照索引大小遍历, 那么你就应该使用for, 而不是foreach</p><pre class=\"sh_php sh_sourceCode\">for($i=0,$l=count($arr);&nbsp;$i<$l;&nbsp;$i++)&nbsp;{&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;//这个时候,不能认为是顺序遍历(线性遍历)\r\n}</pre><p><br/></p>', 774, 0, 0, 1, 100, 'php、foreach、遍历顺序、指针、kevinFei、博客、深入理解PHP之数组(遍历顺序)', 'php、foreach、遍历顺序、指针、kevinFei、博客、深入理解PHP之数组(遍历顺序)', 0, 1564936886, 1564936886);
INSERT INTO `ad_article` VALUES (82, 1, '关于.gitignore文件失效的问题总结和解决办法', '', '成长的小白菜', '关于.gitignore文件失效的问题总结和解决办法。 .gitignore 是git版本控制器在提交文件时忽略提交文件。但是在我们实际搭建的时候会发现有时候和我们想的不一样。详情请看文章。', '', '<p style=\";font-family:&#39;microsoft yahei&#39;;font-size:13px;color:#3F3F3F\"><span style=\"background:white\"></span></p><p style=\";font-family:&#39;microsoft yahei&#39;;font-size:13px;color:#3F3F3F\"><span style=\"background:white\"></span><span style=\"background:white\"></span></p><p style=\"font-size: 21px; text-align: center;\"><span style=\"font-family:Calibri\">.gitignore </span><span style=\"font-family:&#39;Microsoft YaHei&#39;\">是</span><span style=\"font-family:Calibri\">git</span><span style=\"font-family:&#39;Microsoft YaHei&#39;\">版本控制器在提交文件时忽略提交文件</span></p><p style=\";font-family:&#39;microsoft yahei&#39;;font-size:13px;color:#3F3F3F\"><span style=\"background:white\">问题</span></p><ol style=\"margin-left:.375in;direction:ltr;unicode-bidi:embed;font-family:&#39;microsoft yahei&#39;;font-size:15px;font-weight:normal;font-style:normal\" class=\" list-paddingleft-2\"><li><p><span style=\"font-family:&#39;microsoft yahei&#39;;font-size:15px;font-weight:normal;font-style:normal;font-family:&#39;microsoft yahei&#39;;font-size:15px;background:white\">已经初始化项目了，并配置.gitignore文件了，可以另外追加忽略文件么？<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 直接追加进.gitignore文件忽略文件列表就可以了。</span></p></li><li><p><span style=\"font-family:&#39;microsoft yahei&#39;;font-size:15px;background:white\">已经加入.gitignore文件列表的被忽略文件，想要进行改动，并提交推送到远程仓库，要如何做？<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;只需要将被忽略的文件类型从.gitignore列表移除或注释掉，再次修改原来被忽略类型的文件时，就会提示此类文件被修改，需要加入版本控制了。</span></p></li><li><p><span style=\"font-family:&#39;microsoft yahei&#39;;font-size:15px;background:white\">原来被忽略的文件，取消忽略后，可以重新加入忽略么？<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 可以，同样只需要再次追加进.gitignore文件忽略文件列表就可以了。</span></p></li></ol><p style=\";font-family:Calibri;font-size:15px\">&nbsp;</p><p style=\";font-family:&#39;microsoft yahei&#39;;font-size:13px;color:#3F3F3F\"><span style=\"background:white\">真相</span></p><ol style=\"margin-left:.375in;direction:ltr;unicode-bidi:embed;font-family:&#39;microsoft yahei&#39;;font-size:15px;font-weight:normal;font-style:normal\" class=\" list-paddingleft-2\"><li><p><span style=\"font-family:&#39;microsoft yahei&#39;;font-size:15px;font-weight:normal;font-style:normal;font-family:&#39;microsoft yahei&#39;;font-size:15px;background:white\">上文中的问题1、2、3会生效么？<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2会立即生效，1和3会出现失效的情况。</span></p></li><li><p><span style=\"font-family:&#39;microsoft yahei&#39;;font-size:15px;background:white\">1和3为什么会出现失效的情况?<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 这是由于gitignore只能忽略那些原来没有被track的文件，如果某些文件已经被纳入了版本管理中，则修改.gitignore是无效的。</span></p></li><li><p><span style=\"font-family:&#39;microsoft yahei&#39;;font-size:15px;background:white\">怎么解决1和3失效的情况<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 先把本地缓存删除（改变成未track状态），然后再提交</span></p><p><span style=\"font-family:&#39;microsoft yahei&#39;;font-size:15px;background:white\"></span></p></li></ol><p><code class=\"bash plain\"><span style=\"background: white none repeat scroll 0% 0%; font-size: 14px;\">解决办法</span> &nbsp;&nbsp; <br/></code></p><p><code class=\"bash plain\">&nbsp;&nbsp;&nbsp;&nbsp;git rm -r --cached .<br/></code></p><p><code class=\"bash plain\">&nbsp;&nbsp;&nbsp;&nbsp;git add . &nbsp;&nbsp;&nbsp;&nbsp;<br/></code></p><p><code class=\"bash plain\"><code class=\"bash plain\">&nbsp;&nbsp;&nbsp;&nbsp;git commit -m &#39;commit log info&#39; </code><br/></code></p><p><code class=\"bash plain\">&nbsp;&nbsp;&nbsp;&nbsp;git push -u origin master -f </code><code class=\"bash plain\"></code></p><p><br/></p>', 758, 0, 0, 1, 100, '关于.gitignore文件失效的问题总结和解决办法、.gitignore、git、失效、忽略提交、php、kevinFei、博客、关于.gitignore文件失效的问题总结和解决办法', '关于.gitignore文件失效的问题总结和解决办法 、.gitignore、git、失效、忽略提交、php、kevinFei、博客', 0, 1564969720, 1566174244);
INSERT INTO `ad_article` VALUES (83, 3, 'PHP各个数据类型之间相互比较', '', '成长的小白菜', '之前的oneNote中记录一个之前记录的一个问题，整理的时候觉的这个问题还是挺有意思的，所以分享一下，主要还是借鉴鸟哥的博客内容和我自己当时记录的内容，希望可以给大家带来帮助', '', '<p style=\"text-align: center;\"><span style=\"font-size: 18px;\">PHP各个数据类型之间相互比较</span></p><p>正文：</p><p style=\";font-family:微软雅黑;font-size:15px\">PHP是怎么决定相比较的俩者的类型的呢?</p><p>还是老办法, 先从zend_language_scanner.l中找到==的opcode码 结果是T_IS_EQUAL<br/>然后在zend_language_parse.y中找到编译器看到T_IS_EQUAL会做什么:</p><pre class=\"sh_php sh_sourceCode\">expr&nbsp;T_IS_EQUAL&nbsp;expr&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_do_binary_op&nbsp;(&nbsp;ZEND_IS_EQUAL,&nbsp;&$$,&nbsp;&$1,&nbsp;&$3&nbsp;TSRMLS_CC&nbsp;);&nbsp;\r\n}</pre><p>那么接下就去zend_vm_def.h中寻找当ZE遇到ZEND_IS_EQUAL会做什么:</p><pre class=\"sh_php sh_sourceCode\">ZEND_VM_HANDLER(17,&nbsp;ZEND_IS_EQUAL,&nbsp;CONST|TMP|VAR|CV,&nbsp;CONST|TMP|VAR|CV)&nbsp;&nbsp;{&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_op&nbsp;*opline&nbsp;=&nbsp;EX(opline);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_free_op&nbsp;free_op1,&nbsp;free_op2;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;is_equal_function(&EX_T(opline->result.u.var).tmp_var,&nbsp;GET_OP1_ZVAL_PTR(BP_VAR_R),&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GET_OP2_ZVAL_PTR(BP_VAR_R)&nbsp;TSRMLS_CC);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FREE_OP1();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FREE_OP2();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ZEND_VM_NEXT_OPCODE();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n}</pre><p>看来,所有”==”判断都是由is_equal_function完成的, 让我们一起再看看它是什么样的:</p><pre class=\"sh_php sh_sourceCode\">ZEND_API&nbsp;int&nbsp;is_equal_function(zval&nbsp;*result,&nbsp;zval&nbsp;*op1,&nbsp;zval&nbsp;*op2&nbsp;TSRMLS_DC)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(compare_function(result,&nbsp;op1,&nbsp;op2&nbsp;TSRMLS_CC)&nbsp;==&nbsp;FAILURE)&nbsp;{&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;FAILURE;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;convert_to_boolean(result);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(result->value.lval&nbsp;==&nbsp;0)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result->value.lval&nbsp;=&nbsp;1;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result->value.lval&nbsp;=&nbsp;0;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;SUCCESS;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n}</pre><p>哦, 看来不是, 还要进一步查看compare_function<br/>\r\n &nbsp; 代码太长, 不贴了. 在compare_function中, 当俩个比较操作数都是string的时候,会调用zendi_smart_strcmp:</p><pre class=\"sh_php sh_sourceCode\">if&nbsp;(op1->type&nbsp;==&nbsp;IS_STRING&nbsp;&&&nbsp;op2->type&nbsp;==&nbsp;IS_STRING)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zendi_smart_strcmp(result,&nbsp;op1,&nbsp;op2);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COMPARE_RETURN_AND_FREE(SUCCESS);&nbsp;&nbsp;&nbsp;&nbsp;\r\n}</pre><p>而在zendi_smart_strcmp中, 对于俩个字符串, 会首先判断他们是否是numeric_string, 如果是,那么就会转换成整形来比较..</p><p>	那么什么是numeric string呢? &nbsp;因为PHP不区分类型, 所以她采用一个策略, 当你的变量看起来是一个数字的时候, 那么她就认为这个变量是一个数字. 简单来说, numeric_string就是表示数字的字符串:</p><p>	也就是说,如下的比较结果都是真:</p><pre class=\"sh_php sh_sourceCode\">var_dump(\"1\"&nbsp;==&nbsp;\"1e0\");&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nvar_dump(\"1\"&nbsp;==&nbsp;\"0x1\");&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nvar_dump(\"20\"&nbsp;==&nbsp;\"2e1\");&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nvar_dump(\"10\"&nbsp;==&nbsp;\"&nbsp;&nbsp;0x0a\");</pre><p><br/></p><p>结果：</p><p style=\";font-family:微软雅黑;font-size:15px;color:red\">整形 0 == null&nbsp; 等于空&nbsp; 但是不等于，布尔型的false或者true</p><p style=\";font-family:微软雅黑;font-size:15px\">&lt;?php</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$test=0;</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( $test == &#39; &#39; ){</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"在php中，0即为空\";&nbsp;&nbsp; //被输出</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( $test === &#39;&#39; ){</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"在php中，0即为空\"; &nbsp; //不被输出</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( $test == NULL){</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; echo \"在php中，0即为空\";&nbsp;&nbsp; //被输出</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( $test === NULL){</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; echo \"在php中，0即为空\";&nbsp;&nbsp; //不被输出</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( $test == false ){</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"在php中，0即为空\"; &nbsp; //被输出</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( $test === false){</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"在php中，0即为空\";&nbsp;&nbsp; //不被输出</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p>', 696, 0, 0, 1, 100, 'PHP各个数据类型之间相互比较、PHP、数据类型、比较、if、整形、字符串、kevinFei、比较、博客', 'PHP各个数据类型之间相互比较、PHP、数据类型、比较、if、整形、字符串、kevinFei、比较、博客', 1, 1565040608, 1565627996);
INSERT INTO `ad_article` VALUES (84, 1, '转载：Yii/Yaf/Swoole3个框架的压测性能对比', '', '韩天峰', 'Yii/Yaf/Swoole3个框架的压测性能对比', '', '<p>本次压测使用的是一台4核I5 CPU，8G内存的笔记本。使用的版本是：</p><pre>swoole_framework&nbsp;github最新版\r\nYaf&nbsp;2.2.9\r\nYii-1.1.14</pre><p>php-fpm和swoole应用服务器均启用了8个进程，因为仅比较hello world，不存在阻塞，8进程足以压满CPU。php5-fpm中已经启用了apc对所有PHP进行缓存。</p><p>压测使用ab工具，参数为：</p><pre>&nbsp;ab&nbsp;-c&nbsp;100&nbsp;-n&nbsp;10000</pre><h2>Yaf</h2><pre>Server&nbsp;Software:&nbsp;nginx/1.2.6\r\n&nbsp;Server&nbsp;Hostname:&nbsp;localhost\r\n&nbsp;Server&nbsp;Port:&nbsp;80\r\n&nbsp;Document&nbsp;Path:&nbsp;/yafapp/\r\n&nbsp;Document&nbsp;Length:&nbsp;11&nbsp;bytes\r\n&nbsp;Concurrency&nbsp;Level:&nbsp;100\r\n&nbsp;Time&nbsp;taken&nbsp;for&nbsp;tests:&nbsp;1.336&nbsp;seconds\r\n&nbsp;Complete&nbsp;requests:&nbsp;10000\r\n&nbsp;Failed&nbsp;requests:&nbsp;0\r\n&nbsp;Write&nbsp;errors:&nbsp;0\r\n&nbsp;Total&nbsp;transferred:&nbsp;1770000&nbsp;bytes\r\n&nbsp;HTML&nbsp;transferred:&nbsp;110000&nbsp;bytes\r\n&nbsp;Requests&nbsp;per&nbsp;second:&nbsp;7486.03&nbsp;[#/sec]&nbsp;(mean)\r\n&nbsp;Time&nbsp;per&nbsp;request:&nbsp;13.358&nbsp;[ms]&nbsp;(mean)\r\n&nbsp;Time&nbsp;per&nbsp;request:&nbsp;0.134&nbsp;[ms]&nbsp;(mean,&nbsp;across&nbsp;all&nbsp;concurrent&nbsp;requests)\r\n&nbsp;Transfer&nbsp;rate:&nbsp;1293.97&nbsp;[Kbytes/sec]&nbsp;received</pre><h2>Yii</h2><pre>Server&nbsp;Software:&nbsp;nginx/1.2.6\r\n&nbsp;Server&nbsp;Hostname:&nbsp;localhost\r\n&nbsp;Server&nbsp;Port:&nbsp;80\r\n&nbsp;Document&nbsp;Path:&nbsp;/yiiapp/\r\n&nbsp;Document&nbsp;Length:&nbsp;11&nbsp;bytes\r\n&nbsp;Concurrency&nbsp;Level:&nbsp;100\r\n&nbsp;Time&nbsp;taken&nbsp;for&nbsp;tests:&nbsp;8.016&nbsp;seconds\r\n&nbsp;Complete&nbsp;requests:&nbsp;10000\r\n&nbsp;Failed&nbsp;requests:&nbsp;0\r\n&nbsp;Write&nbsp;errors:&nbsp;0\r\n&nbsp;Total&nbsp;transferred:&nbsp;1770000&nbsp;bytes\r\n&nbsp;HTML&nbsp;transferred:&nbsp;110000&nbsp;bytes\r\n&nbsp;Requests&nbsp;per&nbsp;second:&nbsp;1247.55&nbsp;[#/sec]&nbsp;(mean)</pre><h2>SwooleFramework</h2><pre>&nbsp;Server&nbsp;Software:&nbsp;Swoole\r\n&nbsp;Server&nbsp;Hostname:&nbsp;127.0.0.1\r\n&nbsp;Server&nbsp;Port:&nbsp;8888\r\n&nbsp;Document&nbsp;Path:&nbsp;/hello/index\r\n&nbsp;Document&nbsp;Length:&nbsp;11&nbsp;bytes&nbsp;\r\n&nbsp;Concurrency&nbsp;Level:&nbsp;100\r\n&nbsp;Time&nbsp;taken&nbsp;for&nbsp;tests:&nbsp;1.470&nbsp;seconds\r\n&nbsp;Complete&nbsp;requests:&nbsp;10000\r\n&nbsp;Failed&nbsp;requests:&nbsp;0\r\n&nbsp;Write&nbsp;errors:&nbsp;0\r\n&nbsp;Total&nbsp;transferred:&nbsp;2750000&nbsp;bytes\r\n&nbsp;HTML&nbsp;transferred:&nbsp;110000&nbsp;bytes\r\n&nbsp;Requests&nbsp;per&nbsp;second:&nbsp;6801.78&nbsp;[#/sec]&nbsp;(mean)\r\n&nbsp;Time&nbsp;per&nbsp;request:&nbsp;14.702&nbsp;[ms]&nbsp;(mean)\r\n&nbsp;Time&nbsp;per&nbsp;request:&nbsp;0.147&nbsp;[ms]&nbsp;(mean,&nbsp;across&nbsp;all&nbsp;concurrent&nbsp;requests)\r\n&nbsp;Transfer&nbsp;rate:&nbsp;1826.65&nbsp;[Kbytes/sec]&nbsp;receive</pre><h2>结果评价</h2><p>有些人说框架的消耗和业务逻辑相比不算什么，这句话在你的QPS不到10个时是完全正确的。但如果你的网站访问量很大，机器负载很高，那么框架的性能消耗就会很明显的体现出来了。</p><p>Yii压测只有1200QPS，假设网站的平均QPS为200，因为框架的消耗是纯CPU消耗，也就是光Yii就会带来(200/1200)*100%=16.7%的CPU消耗。而Yaf/Swoole的QPS可达7000，200qps仅占用</p><p>(200/7000)*100%=2.8%的CPU消耗。当然200QPS对于一个巨型网站来说只是一个小数目，框架的CPU消耗会随着QPS增加而直线上升。</p><p>Swoole框架的早期版本可达9000QPS，swoole框架本身还是很复杂的，因为全部是PHP的代码实现，仅底层使用了swoole扩展，如果做了足够的精简和优化，还是有很大的上升空间。</p><p>压测证明Yaf的性能非常好。如果你希望使用PHP应用服务器可以选择Swoole，如果是LAMP/LNMP架构可以使用Yaf框架。</p><p><span style=\"font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该文章转载至：http://rango.swoole.com/archives/254</span></p>', 144, 0, 0, 1, 100, 'Yii/Yaf/Swoole3个框架的压测性能对比', 'Yii/Yaf/Swoole3个框架的压测性能对比', 3, 1565043777, 1565721941);
INSERT INTO `ad_article` VALUES (85, 3, 'PHP开发的八大设计模式介绍', '', '成长的小白菜', '编程开发的设计模式，是在开发中前辈总结出来的编码模式和风格，写该文章主要就是先大家介绍一下设计模式，在开发中使用设计模式会大大加快开发速度和效率也会为项目的实际编码和项目的架构及开发带来很多帮助。所以介绍一下设计模式。', '', '<p style=\"text-align: center;\"><span style=\"font-family: 宋体, SimSun;\">PHP开发的八大设计模式介绍</span></p><h4>单例模式</h4><ol class=\" list-paddingleft-2\"><li><p>$_instance必须声明为静态的私有变量</p></li><li><p>构造函数和析构函数必须声明为私有,防止外部程序new 类从而失去单例模式的意义</p></li><li><p>getInstance()方法必须设置为公有的,必须调用此方法 以返回实例的一个引用</p></li><li><p>::操作符只能访问静态变量和静态函数</p></li><li><p>new对象都会消耗内存</p></li><li><p>使用场景:最常用的地方是数据库连接。</p></li><li><p>使用单例模式生成一个对象后， 该对象可以被其它众多对象所使用。</p></li><li><p>私有的__clone()方法防止克隆对象</p></li></ol><p>单例模式，使某个类的对象仅允许创建一个。构造函数private修饰，&nbsp;<br/>申明一个static getInstance方法，在该方法里创建该对象的实例。如果该实例已经存在，则不创建。比如只需要创建一个数据库连接。</p><h4>工厂模式</h4><p>工厂模式，工厂方法或者类生成对象，而不是在代码中直接new。&nbsp;<br/>使用工厂模式，可以避免当改变某个类的名字或者方法之后，在调用这个类的所有的代码中都修改它的名字或者参数。</p><p>Test1.php<br/>&lt;?php<br/>class Test1{<br/>&nbsp;&nbsp;&nbsp; static function test(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo __FILE__;<br/>&nbsp;&nbsp;&nbsp; }<br/>}<br/>Factory.php<br/>&lt;?php<br/>&nbsp;&nbsp;&nbsp;&nbsp;class Factory{<br/>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;/*<br/>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;* 如果某个类在很多的文件中都new ClassName()，那么万一这个类的名字<br/>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;* 发生变更或者参数发生变化，如果不使用工厂模式，就需要修改每一个PHP<br/>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;* 代码，使用了工厂模式之后，只需要修改工厂类或者方法就可以了。<br/>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;*/<br/>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;static function createDatabase(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $test = new Test1();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;return $test;<br/>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>Test.php<br/>&lt;?php<br/>&nbsp;&nbsp;&nbsp;&nbsp;spl_autoload_register(&#39;autoload1&#39;);<br/>&nbsp;&nbsp;&nbsp;&nbsp;$test = Factory::createDatabase();<br/>&nbsp;&nbsp;&nbsp;&nbsp;$test->test();<br/>&nbsp;&nbsp;&nbsp;&nbsp;function autoload1($class){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $dir&nbsp; = __DIR__;<br/>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;$requireFile = $dir.\"\\\\\".$class.\".php\";<br/>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;require $requireFile;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}</p><p><img src=\"/public/upload/image/20190819/1566200234994378.png\" title=\"1566200234994378.png\" alt=\"1009472-20180411233545229-1881933869.png\"/></p><h4>注册模式</h4><p>注册模式，解决全局共享和交换对象。已经创建好的对象，挂在到某个全局可以使用的数组上，在需要使用的时候，直接从该数组上获取即可。将对象注册到全局的树上。任何地方直接去访问。</p><p>&lt;?php<br/>class Register<br/>{<br/>&nbsp;&nbsp;&nbsp; protected static&nbsp; $objects;<br/>&nbsp;&nbsp;&nbsp; function set($alias,$object)//将对象注册到全局的树上<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self::$objects[$alias]=$object;//将对象放到树上<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; static function get($name){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return self::$objects[$name];//获取某个注册到树上的对象<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function _unset($alias)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unset(self::$objects[$alias]);//移除某个注册到树上的对象。<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>?><br/></p><h4>适配器模式</h4><p>将各种截然不同的函数接口封装成统一的API。&nbsp;<br/>PHP中的数据库操作有MySQL,MySQLi,PDO三种，可以用适配器模式统一成一致，使不同的数据库操作，统一成一样的API。类似的场景还有cache适配器，可以将memcache,redis,file,apc等不同的缓存函数，统一成一致。&nbsp;<br/>首先定义一个接口(有几个方法，以及相应的参数)。然后，有几种不同的情况，就写几个类实现该接口。将完成相似功能的函数，统一成一致的方法。<br/></p><p>接口 IDatabase<br/>&lt;?php<br/>namespace IMooc;<br/>interface IDatabase<br/>{<br/>&nbsp;&nbsp;&nbsp; function connect($host, $user, $passwd, $dbname);<br/>&nbsp;&nbsp;&nbsp; function query($sql);<br/>&nbsp;&nbsp;&nbsp; function close();<br/>}</p><p>MySQL<br/>&lt;?php<br/>namespace IMooc\\Database;<br/>use IMooc\\IDatabase;<br/>class MySQL implements IDatabase<br/>{<br/>&nbsp;&nbsp;&nbsp; protected $conn;<br/>&nbsp;&nbsp;&nbsp; function connect($host, $user, $passwd, $dbname)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $conn = mysql_connect($host, $user, $passwd);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mysql_select_db($dbname, $conn);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->conn = $conn;<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function query($sql)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $res = mysql_query($sql, $this->conn);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return $res;<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function close()<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mysql_close($this->conn);<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>MySQLi<br/>&lt;?php<br/>namespace IMooc\\Database;<br/>use IMooc\\IDatabase;<br/>class MySQLi implements IDatabase<br/>{<br/>&nbsp;&nbsp;&nbsp; protected $conn;<br/>&nbsp;&nbsp;&nbsp; function connect($host, $user, $passwd, $dbname)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $conn = mysqli_connect($host, $user, $passwd, $dbname);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->conn = $conn;<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function query($sql)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return mysqli_query($this->conn, $sql);<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function close()<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mysqli_close($this->conn);<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>PDO<br/>&lt;?php<br/>namespace IMooc\\Database;<br/>use IMooc\\IDatabase;<br/>class PDO implements IDatabase<br/>{<br/>&nbsp;&nbsp;&nbsp; protected $conn;<br/>&nbsp;&nbsp;&nbsp; function connect($host, $user, $passwd, $dbname)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $conn = new \\PDO(\"mysql:host=$host;dbname=$dbname\", $user, $passwd);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->conn = $conn;<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;function query($sql)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return $this->conn->query($sql);<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function close()<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unset($this->conn);<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>通过以上案例，PHP与MySQL的数据库交互有三套API，在不同的场景下可能使用不同的API，那么开发好的代码，换一个环境，可能就要改变它的数据库API，那么就要改写所有的代码，使用适配器模式之后，就可以使用统一的API去屏蔽底层的API差异带来的环境改变之后需要改写代码的问题。</p><h4>策略模式</h4><p>策略模式，将一组特定的行为和算法封装成类，以适应某些特定的上下文环境。&nbsp;<br/>eg：假如有一个电商网站系统，针对男性女性用户要各自跳转到不同的商品类目，并且所有的广告位展示不同的广告。在传统的代码中，都是在系统中加入各种if\r\n \r\nelse的判断，硬编码的方式。如果有一天增加了一种用户，就需要改写代码。使用策略模式，如果新增加一种用户类型，只需要增加一种策略就可以。其他所有的地方只需要使用不同的策略就可以。&nbsp;<br/>首先声明策略的接口文件，约定了策略的包含的行为。然后，定义各个具体的策略实现类。</p><p>UserStrategy.php<br/><?php<br/>/*<br/>&nbsp;* 声明策略文件的接口，约定策略包含的行为。<br/>&nbsp;*/<br/>interface UserStrategy<br/>{<br/>&nbsp;&nbsp;&nbsp; function showAd();<br/>&nbsp;&nbsp;&nbsp; function showCategory();<br/>}</p><p>FemaleUser.php<br/>&lt;?php<br/>require_once &#39;Loader.php&#39;;<br/>class FemaleUser implements UserStrategy<br/>{<br/>&nbsp;&nbsp;&nbsp; function showAd(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"2016冬季女装\";<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function showCategory(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"女装\";<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>MaleUser.php<br/>&lt;?php<br/>require_once &#39;Loader.php&#39;;<br/>class MaleUser implements UserStrategy<br/>{<br/>&nbsp;&nbsp;&nbsp; function showAd(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"IPhone6s\";<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function showCategory(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"电子产品\";<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>Page.php//执行文件<br/>&lt;?php<br/>require_once &#39;Loader.php&#39;;<br/>class Page<br/>{<br/>&nbsp;&nbsp;&nbsp; protected $strategy;<br/>&nbsp;&nbsp;&nbsp; function index(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"AD\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->strategy->showAd();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"Category\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->strategy->showCategory();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"\";<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function setStrategy(UserStrategy $strategy){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->strategy=$strategy;<br/>&nbsp;&nbsp;&nbsp; }<br/>}<br/>$page = new Page();<br/>if(isset($_GET[&#39;male&#39;])){<br/>&nbsp;&nbsp;&nbsp; $strategy = new MaleUser();<br/>}else {<br/>&nbsp;&nbsp;&nbsp; $strategy = new FemaleUser();<br/>}<br/>$page->setStrategy($strategy);<br/>$page->index();</p><p>执行结果图：</p><p><img src=\"/public/upload/image/20190819/1566200298728784.png\" title=\"1566200298728784.png\" alt=\"1009472-20180411235931617-2111845980.png\"/><img src=\"/public/upload/image/20190819/1566200305362713.png\" title=\"1566200305362713.png\" alt=\"1009472-20180411235939863-1854572548.png\"/></p><p>&nbsp;总结：&nbsp;<br/>通过以上方式，可以发现，在不同用户登录时显示不同的内容，但是解决了在显示时的硬编码的问题。如果要增加一种策略，只需要增加一种策略实现类，然后在入口文件中执行判断，传入这个类即可。实现了解耦。&nbsp;<br/>实现依赖倒置和控制反转&nbsp;<em>（有待理解）</em>&nbsp;<br/>通过接口的方式，使得类和类之间不直接依赖。在使用该类的时候，才动态的传入该接口的一个实现类。如果要替换某个类，只需要提供一个实现了该接口的实现类，通过修改一行代码即可完成替换。</p><h4>观察者模式</h4><p>1：观察者模式(Observer)，当一个对象状态发生变化时，依赖它的对象全部会收到通知，并自动更新。&nbsp;<br/>2：场景:一个事件发生后，要执行一连串更新操作。传统的编程方式，就是在事件的代码之后直接加入处理的逻辑。当更新的逻辑增多之后，代码会变得难以维护。这种方式是耦合的，侵入式的，增加新的逻辑需要修改事件的主体代码。&nbsp;<br/>3：观察者模式实现了低耦合，非侵入式的通知与更新机制。 <br/></p><p>定义一个事件触发抽象类。</p><p>EventGenerator.php<br/>&lt;?php<br/>require_once &#39;Loader.php&#39;;<br/>abstract class EventGenerator{<br/>&nbsp;&nbsp;&nbsp; private $observers = array();<br/>&nbsp;&nbsp;&nbsp; function addObserver(Observer $observer){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->observers[]=$observer;<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function notify(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; foreach ($this->observers as $observer){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $observer->update();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>//定义一个观察者接口</p><p>Observer.php<br/>&lt;?php<br/>require_once &#39;Loader.php&#39;;<br/>interface Observer{<br/>&nbsp;&nbsp;&nbsp; function update();//这里就是在事件发生后要执行的逻辑<br/>}</p><p>?><br/></p><p>&lt;?php<br/>//一个实现了EventGenerator抽象类的类，用于具体定义某个发生的事件<br/>require &#39;Loader.php&#39;;<br/>class Event extends EventGenerator{<br/>&nbsp;&nbsp;&nbsp; function triger(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"Event\";<br/>&nbsp;&nbsp;&nbsp; }<br/>}<br/>class Observer1 implements Observer{<br/>&nbsp;&nbsp;&nbsp; function update(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"逻辑1\";<br/>&nbsp;&nbsp;&nbsp; }<br/>}<br/>class Observer2 implements Observer{<br/>&nbsp;&nbsp;&nbsp; function update(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"逻辑2\";<br/>&nbsp;&nbsp;&nbsp; }<br/>}<br/>$event = new Event();<br/>$event->addObserver(new Observer1());<br/>$event->addObserver(new Observer2());<br/>$event->triger();<br/>$event->notify();</p><p>当某个事件发生后，需要执行的逻辑增多时，可以以松耦合的方式去增删逻辑。也就是代码中的红色部分，只需要定义一个实现了观察者接口的类，实现复杂的逻辑，然后在红色的部分加上一行代码即可。这样实现了低耦合。</p><h4>原型模式</h4><p>原型模式（对象克隆以避免创建对象时的消耗）&nbsp;<br/>1：与工厂模式类似，都是用来创建对象。&nbsp;<br/>2：与工厂模式的实现不同，原型模式是先创建好一个原型对象，然后通过clone原型对象来创建新的对象。这样就免去了类创建时重复的初始化操作。&nbsp;<br/>3：原型模式适用于大对象的创建，创建一个大对象需要很大的开销，如果每次new就会消耗很大，原型模式仅需要内存拷贝即可。</p><p>Canvas.php<br/>&lt;?php<br/>require_once &#39;Loader.php&#39;;<br/>class Canvas{<br/>&nbsp;&nbsp;&nbsp;&nbsp;private $data;<br/>&nbsp;&nbsp;&nbsp;&nbsp;function init($width = 20, $height = 10)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $data = array();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for($i = 0; $i < $height; $i++)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for($j = 0; $j < $width; $j++)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $data[$i][$j] = &#39;*&#39;;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->data = $data;<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;function rect($x1, $y1, $x2, $y2)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; foreach($this->data as $k1 => $line)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if ($x1 > $k1 or $x2 < $k1) continue;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; foreach($line as $k2 => $char)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if ($y1>$k2 or $y2<$k2) continue;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->data[$k1][$k2] = &#39;#&#39;;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function draw(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; foreach ($this->data as $line){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; foreach ($line as $char){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo $char;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \";\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>?></p><p>Index.php<br/>&lt;?php<br/>require &#39;Loader.php&#39;;<br/>$c = new Canvas();<br/>$c->init();<br/>// $canvas1 = new Canvas();<br/>// $canvas1->init();<br/>$canvas1 = clone $c;//通过克隆，可以省去init()方法，这个方法循环两百次<br/>//去产生一个数组。当项目中需要产生很多的这样的对象时，就会new很多的对象，那样<br/>//是非常消耗性能的。<br/>$canvas1->rect(2, 2, 8, 8);<br/>$canvas1->draw();<br/>echo \"-----------------------------------------\";<br/>// $canvas2 = new Canvas();<br/>// $canvas2->init();<br/>$canvas2 = clone $c;<br/>$canvas2->rect(1, 4, 8, 8);<br/>$canvas2->draw();</p><p>执行结果：</p><p><img src=\"/public/upload/image/20190819/1566200351312467.png\" title=\"1566200351312467.png\" alt=\"1009472-20180412002250788-449235848.png\"/></p><h4>装饰器模式</h4><p>1：装饰器模式，可以动态的添加修改类的功能&nbsp;<br/>2：一个类提供了一项功能，如果要在修改并添加额外的功能，传统的编程模式，需要写一个子类继承它，并重写实现类的方法&nbsp;<br/>3：使用装饰器模式，仅需要在运行时添加一个装饰器对象即可实现，可以实现最大额灵活性。<br/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;该文章转载至，如有侵权请联系删除：https://www.cnblogs.com/yuanwanli/p/8796402.html</p><p><br/></p><p><br/></p>', 694, 0, 0, 1, 100, '​PHP开发的八大设计模式介绍', '​PHP开发的八大设计模式介绍', 0, 1565773170, 1566200360);
INSERT INTO `ad_article` VALUES (87, 1, 'Redis的存储机制', '', '成长的小白菜', 'Redis平时在项目开发中，只知道使用，却从来没有想过它的存储机制究竟是什么样的，可能大家都知道redis的数据最终都会到内存中，但是它究竟是如何存储的呢，它的机制是什么？以下内容是参考资料，帮助记录。', 'http://bucketpublic.kevinfei.com/48a8e201909160745315949.jpg', '<p style=\"text-align: center;\"><span style=\"color: rgb(85, 85, 85); font-size: 18px; font-family: arial black, avant garde;\"></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(85, 85, 85); font-size: 18px; font-family: arial black, avant garde;\">Redis的存储机制</span><span style=\"color:#555555;\"><br/></span></p><p><span style=\"color:#555555;\">Redis存储机制分成两种Snapshot和AOF。无论是那种机制,Redis都是将数据存储在内存中。这点毋庸置疑。当然Redis的数据持久化另聊。</span></p><p><span style=\"color:#555555;\"><br/></span></p><p><span style=\"color:#555555;\"><strong>Snapshot工作原理</strong>: 是将数据先存储在内存，然后当数据累计达到某些设定的伐值的时候，就会触发一次DUMP操作，将变化的数据一次性写入数据文件（RDB文件）。</span></p><p><span style=\"color:#555555;\"><img src=\"http://bucketpublic.kevinfei.com/5c941201909160737021497.png\"/></span></p><p><br/><span style=\"color:#555555;\"></span></p><p><span style=\"color:#555555;\"><strong>AOF 工作原理</strong>:\r\n \r\n是将数据也是先存在内存，但是在存储的时候会使用调用fsync来完成对本次写操作的日志记录，这个日志揭露文件其实是一个基于Redis网络交互协议的文本文件。AOF调用fsync也不是说全部都是无阻塞的，在某些系统上可能出现fsync阻塞进程的情况，对于这种情况可以通过配置修改，但默认情况不要修改。AOF最关键的配置就是关于调用fsync追加日志文件的平率，有两种预设频率，always每次记录进来都添加，everysecond\r\n 每秒添加一次。两个配置各有所长后面分析。由于是采用日志追加的方式来持久话数据，所以引出了第二个日志的概念：rewrite. 后面介绍它的由来。</span></p><p><span style=\"color:#555555;\"><img src=\"http://bucketpublic.kevinfei.com/232f6201909160737493091.png\"/></span></p><p>&nbsp;</p><p><span style=\"color:#555555;\"><strong>存储模式性能和安全比较：</strong></span></p><p>&nbsp;</p><p><strong>1.性能</strong></p><p>Snapshot方式的性能是要明显高于AOF方式的，原因有两点：</p><p>&nbsp;</p><p><span style=\"color:#555555;\">采用2进制方式存储数据，数据文件比较小，加载快速。<br/>存储的时候是按照配置中的save策略来存储，每次都是聚合很多数据批量存储，写入的效率很好，而AOF则一般都是工作在实时存储或者准实时模式下。相对来说存储的频率高，效率却偏低。</span></p><p>&nbsp;</p><p><strong>2.数据安全</strong></p><p>AOF数据安全性高于Snapshot存储，原因：</p><p>&nbsp;</p><p><span style=\"color:#555555;\">Snapshot存储是基于累计批量的思想，也就是说在允许的情况下，累计的数据越多那么写入效率也就越高，但数据的累计是靠时间的积累完成的，那么如果在长时间数据不写入RDB，但Redis又遇到了崩溃，那么没有写入的数据就无法恢复了，但是AOF方式偏偏相反，根据AOF配置的存储频率的策略可以做到最少的数据丢失和较高的数据恢复能力。<br/>说完了性能和安全，这里不得不提的就是在Redis中的Rewrite的功能，AOF的存储是按照记录日志的方式去工作的，那么成千上万的数据插入必然导致日志文件的扩大，Redis这个时候会根据配置合理触发Rewrite操作，所谓Rewrite就是将日志文件中的所有数据都重新写到另外一个新的日志文件中，但是不同的是，对于老日志文件中对于Key的多次操作，只保留最终的值的那次操作记录到日志文件中，从而缩小日志文件的大小。这里有两个配置需要注意：<br/>auto-aof-rewrite-percentage 100 （当前写入日志文件的大小占到初始日志文件大小的某个百分比时触发Rewrite）<br/>auto-aof-rewrite-min-size 64mb （本次Rewrite最小的写入数据）</span></p><p><span style=\"color:#555555;\"><br/></span></p><p><br/></p>', 113, 0, 0, 1, 100, 'Redis的存储机制', 'Redis的存储机制', 0, 1567681754, 1568853350);
INSERT INTO `ad_article` VALUES (88, 9, 'Mysql索引的数据结构记录', '', '成长的小白菜', 'Mysql索引的数据结构记录，相信大家对mysql的索引都不陌生，实际上在平时的业务开发中，我们可能有时候更多的考虑的是业务逻辑，从而忽略了对mysql的深入了解。所以些写下这个文章帮助记录。', '', '<p style=\"text-align: center;\">&nbsp; &nbsp;&nbsp;Mysql的索引机制&nbsp; &nbsp;&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;相信大家对mysql的索引都不陌生，但是不知道大家对于索引是否有足够的关注，反正在之前我是一点也不关心，因为前单位有专业的DBA，所以我们只需要考虑到业务逻辑就可以了，但是，最近找工作的时候才发现，自己对于mysql索引了解的太少，该篇文章主要是介绍mysql的索引。希望能够给大家一点帮助。也帮助记忆。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;索引是帮助大家提供快速检索数据的一种数据结构。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;常见的Mysql索引主要有2种数据结构：<span style=\"color: rgb(255, 0, 0);\">B+树结构</span> 和 <span style=\"color: rgb(255, 0, 0);\">hash结构</span>。常见的InnoDB引擎就是使用的B+树的数据结构。<br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>B+树是一个平衡的多叉树。B+树从根节点到叶子节点的搜索效率基本相当，不会出现大幅波动。</p><p>哈希索引采用一定的哈希算法，把键值换成新的哈希值，检索时不需要类似B+树那样从根节点逐级查找，只需一次哈希算法即可立刻定位到相应的位置。</p><p><br/></p><p>两者的区别：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;哈希索引的优势：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）等值查询。哈希索引具有绝对优势（前提是：没有大量重复键值，如果大量重复键值时，哈希索引的效率很低，因为存在所谓的哈希碰撞问题。）</p><p>&nbsp;&nbsp;&nbsp;&nbsp;哈希索引不适用的场景：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; （1）不支持范围查询</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）不支持索引完成排序</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）不支持联合索引的最左前缀匹配规则</p><p><br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;MySQL中，只有HEAP/MEMORY引擎才显示支持哈希索引。而常用的InnoDB引擎中默认使用的是B+树索引，它会实时监控表上索引的使用情况，如果认为建立哈希索引可以提高查询效率，则自动在内存中的“自适应哈希索引缓冲区”建立哈希索引（在InnoDB中默认开启自适应哈希索引），通过观察搜索模式，MySQL会利用index key的前缀建立哈希索引，如果一个表几乎大部分都在缓冲池中，那么建立一个哈希索引能够加快等值查询。</p><p><br/></p><p>注意：在某些工作负载下，通过哈希索引查找带来的性能提升远大于额外的监控索引搜索情况和保持这个哈希表结构所带来的开销。但某些时候，在负载高的情况下，自适应哈希索引中添加的read/write锁也会带来竞争，比如高并发的join操作。like操作和%的通配符操作也不适用于自适应哈希索引，可能要关闭自适应哈希索引。</p><p><br/></p><p>unique key unique_username using btree(`user_name`)&nbsp;&nbsp;</p><p>这里的using btree 只是显示的指定的使用的索引的方式为b+树，对于innodb来说默认的索引方式也是用b+树，因此，也可以不写。</p>', 502, 0, 0, 1, 100, 'Mysql索引的数据结构记录', 'Mysql索引的数据结构记录', 0, 1568265199, 1568265411);
INSERT INTO `ad_article` VALUES (89, 3, 'CGI、FSATCGI、php-fpm、phpcgi 介绍', '', '成长的小白菜', 'CGI、FSATCGI、php-fpm、phpcgi 介绍', 'http://bucketpublic.kevinfei.com/795b3201912230015524869.png', '<h2><strong>CGI：</strong></h2><p>全称：common gateway interface 通用网关接口。</p><p><strong>在Web发展的最初，全球的互联网的网页是静态的</strong>，客户端向服务器请求网页，获得了一个静态的网页。所谓静态的网页的就是所有人得到的网页都是相同的。</p><p>但是随着因特网的发展，Web服务商希望可以实现动态的网页。打个比方，购物网站希望给用户发送个性化的菜单，比如我的购车里有一桶泡面，你的购物车有一瓶矿泉水。当我们各自登录该购物网站时（实质是浏览器提交表单的过程），最后，我们获得的网页一样吗？？显然是不一样的。因为我的购物车有泡面，你有矿泉水。<strong>这就是动态的页面</strong>。</p><p>如果去实现这样的功能呢？这就是迫切的需求，然后就 产生了技术--CGI</p><p>Web服务器找到解决方案，通过在CGI应用，当用户请求时提交了他的Form表单，服务器接收后调用CGI 应用处理，CGI返回相应的数据，最终交付给用户。</p><p><span style=\"font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;color:#4b4b4b;font-size:13px;\">　<strong>CGI工作原理：</strong></span></p><p><span style=\"font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;color:#4b4b4b;font-size:13px;\">每当客户请求CGI的时候，WEB服务器就请求操作系统生成一个新的CGI解释器进程(如php-cgi.exe)，CGI\r\n \r\n的一个进程则处理完一个请求后退出，下一个请求来时再创建新进程。当然，这样在访问量很少没有并发的情况也行。可是当访问量增大，并发存在，这种方式就不\r\n 适合了</span><br/></p><p><span style=\"font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;color:#4b4b4b;font-size:13px;\">最早的Web服务器简单地响应浏览器发来的HTTP请求，并将存储在服务器上的HTML文件返回给浏览器，也就是静态html。事物总是不\r\n 断发展，网站也越来越复杂，所以出现动态技术。但是服务器并不能直接运行 \r\nphp，asp这样的文件，自己不能做，外包给别人吧，但是要与第三做个约定，我给你什么，然后你给我什么，就是握把请求参数发送给你，然后我接收你的处\r\n 理结果给客户端。那这个约定就是&nbsp;common gateway interface，简称cgi。这个协议可以用vb，c，php，python \r\n来实现。cgi只是接口协议，根本不是什么语言。下面图可以看到流程 &nbsp;&nbsp;</span><br/></p><p><span style=\"font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;color:#4b4b4b;font-size:13px;\"></span><br/></p><p><img src=\"http://bucketpublic.kevinfei.com/795b3201912230015524869.png\" width=\"580px\" height=\"380px;\"/></p><p><br/></p><p><strong><span style=\"font-size:32px;\">FASTCGI</span></strong>：</p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\">FastCGI像是一个常驻(long-live)型的CGI，它可以一直执行着，只要激活后，不会每次都要花费时间去fork一次（这是CGI最为人诟病的fork-and-execute 模式）。</p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><strong>FastCGI的整个工作流程是这样的：</strong></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><strong>　　1.<span style=\"font-family:Helvetica, Arial, sans-serif;font-size:14px;color:#222222;font-weight:normal;line-height:24px;text-align:left;\">Web Server启动时载入FastCGI进程管理器（IIS ISAPI或Apache Module)</span></strong></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><strong><span style=\"font-family:Helvetica, Arial, sans-serif;font-size:14px;color:#222222;font-weight:normal;line-height:24px;text-align:left;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>2.</strong><span style=\"line-height:24px;\">FastCGI进程管理器自身初始化，启动多个CGI解释器进程(可见多个php-cgi)并等待来自Web\r\n Server的连接。</span></span></strong></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><span style=\"font-weight:bold;\"><span style=\"font-family:Helvetica, Arial, sans-serif;font-size:14px;color:#222222;font-weight:normal;line-height:24px;text-align:left;\"><span style=\"line-height:24px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>3.</strong><span style=\"line-height:24px;\">当客户端请求到达Web\r\n Server时，FastCGI进程管理器选择并连接到一个CGI解释器。 Web server将CGI环境变量和标准输入发送到FastCGI子进程php-cgi。</span></span></span></span></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><span style=\"font-weight:bold;\"><span style=\"font-weight:normal;font-size:14px;line-height:24px;font-family:Helvetica, Arial, sans-serif;color:rgb(34,34,34);text-align:left;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;4</strong>.<span style=\"line-height:24px;\">FastCGI\r\n 子进程完成处理后将标准输出和错误信息从同一连接返回Web Server。当FastCGI子进程关闭连接时， \r\n请求便告处理完成。FastCGI子进程接着等待并处理来自FastCGI进程管理器(运行在Web Server中)的下一个连接。 \r\n在CGI模式中，php-cgi在此便退出了。</span></span></span></span></span></p><p><br/></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><span style=\"font-weight:bold;\"><span style=\"font-weight:normal;font-size:14px;line-height:24px;font-family:Helvetica, Arial, sans-serif;color:rgb(34,34,34);text-align:left;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\">&nbsp;<strong>PHP-FPM与Spawn-FCGI</strong></span></span></span></span></span></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><span style=\"font-weight:bold;\"><span style=\"font-weight:normal;font-size:14px;line-height:24px;font-family:Helvetica, Arial, sans-serif;color:rgb(34,34,34);text-align:left;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\">　　<span style=\"font-family:Arial, Tahoma;color:#333333;line-height:20px;text-indent:28px;\">Spawn-FCGI是一个通用的FastCGI管理服务器，它是lighttpd中的一部份，很多人都用Lighttpd的Spawn-FCGI进行FastCGI模式下的管理工作。\r\n 但是有缺点，于是<span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;line-height:21px;text-indent:0px;\">PHP-fpm就是针对于PHP的，Fastcgi的一种实现，他负责管理一个进程池，来处理来自Web服务器的请求。目前，PHP-fpm是内置于PHP的。</span></span></span></span></span></span></span></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><span style=\"font-weight:bold;\"><span style=\"font-weight:normal;font-size:14px;line-height:24px;font-family:Helvetica, Arial, sans-serif;color:rgb(34,34,34);text-align:left;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\"><span style=\"line-height:20px;font-family:Arial, Tahoma;color:rgb(51,51,51);text-indent:28px;\"><span style=\"line-height:21px;font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;text-indent:0px;\"><span style=\"color:rgb(51,51,51);font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;\">---------------------<span style=\"color:rgb(51,51,51);font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;\">---------------------<span style=\"color:rgb(51,51,51);font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;\">---------------------<span style=\"color:rgb(51,51,51);font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;\">---------------------<span style=\"color:rgb(51,51,51);font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;\">---------------------<span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;color:#333333;\">---------------------<span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;color:#333333;\">---------------------<span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;color:#333333;\">---------------------</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><span style=\"font-size:14px;color:#333333;\">首先，CGI是干嘛的？CGI是为了保证web server传递过来的数据是标准格式的，方便CGI程序的编写者。</span></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><span style=\"font-weight:bold;\"><span style=\"font-weight:normal;font-size:14px;line-height:24px;font-family:Helvetica, Arial, sans-serif;color:rgb(34,34,34);text-align:left;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\"><span style=\"font-family:Arial, Tahoma;color:#333333;line-height:20px;text-indent:28px;\"><span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;line-height:21px;text-indent:0px;\"><span style=\"font-size:14px;color:#555555;\"></span></span></span></span></span></span></span></span></p><blockquote style=\"font-size:14px;border-left-width:2px;border-left-style:solid;border-left-color:rgb(0,154,97);color:rgb(85,85,85);\"><p>web server（比如说nginx）只是内容的分发者。比如，如果请求<code style=\"font-family:&#39;Source Code Pro&#39;, Consolas, Menlo, Monaco, &#39;Courier New&#39;, monospace;font-size:.93em;color:rgb(199,37,78);\">/index.html</code>，那么web server会去文件系统中找到这个文件，发送给浏览器，这里分发的是静态数据。好了，如果现在请求的是<code style=\"font-family:&#39;Source Code Pro&#39;, Consolas, Menlo, Monaco, &#39;Courier New&#39;, monospace;font-size:.93em;color:rgb(199,37,78);\">/index.php</code>，根据配置文件，nginx知道这个不是静态文件，需要去找PHP解析器来处理，那么他会把这个请求简单处理后交给PHP解析器。Nginx会传哪些数据给PHP解析器呢？url要有吧，查询字符串也得有吧，POST数据也要有，HTTP\r\n header不能少吧，好的，CGI就是规定要传哪些数据、以什么样的格式传递给后方处理这个请求的协议。仔细想想，你在PHP代码中使用的用户从哪里来的。</p><p>当web server收到<code style=\"font-family:&#39;Source Code Pro&#39;, Consolas, Menlo, Monaco, &#39;Courier New&#39;, monospace;font-size:.93em;color:rgb(199,37,78);\">/index.php</code>这个请求后，会启动对应的CGI程序，这里就是PHP的解析器。接下来PHP解析器会解析php.ini文件，初始化执行环境，然后处理请求，再以规定CGI规定的格式返回处理后的结果，退出进程。web\r\n server再把结果返回给浏览器。</p></blockquote><p style=\"color:rgb(51,51,51);font-size:14px;\">好了，CGI是个协议，跟进程什么的没关系。那fastcgi又是什么呢？Fastcgi是用来提高CGI程序性能的。</p><blockquote style=\"font-size:14px;border-left-width:2px;border-left-style:solid;border-left-color:rgb(0,154,97);color:rgb(85,85,85);\"><p>提高性能，那么CGI程序的性能问题在哪呢？\"PHP解析器会解析php.ini文件，初始化执行环境\"，就是这里了。标准的CGI对每个请求都会执行这些步骤（不闲累啊！启动进程很累的说！），所以处理每个时间的时间会比较长。这明显不合理嘛！那么Fastcgi是怎么做的呢？首先，Fastcgi会先启一个master，解析配置文件，初始化执行环境，然后再启动多个worker。当请求过来时，master会传递给一个worker，然后立即可以接受下一个请求。这样就避免了重复的劳动，效率自然是高。而且当worker不够用时，master可以根据配置预先启动几个worker等着；当然空闲worker太多时，也会停掉一些，这样就提高了性能，也节约了资源。这就是fastcgi的对进程的管理。</p></blockquote><p style=\"color:rgb(51,51,51);font-size:14px;\">那PHP-FPM又是什么呢？是一个实现了Fastcgi的程序，被PHP官方收了。</p><blockquote style=\"font-size:14px;border-left-width:2px;border-left-style:solid;border-left-color:rgb(0,154,97);color:rgb(85,85,85);\"><p>大家都知道，PHP的解释器是php-cgi。php-cgi只是个CGI程序，他自己本身只能解析请求，返回结果，不会进程管理（皇上，臣妾真的做不到啊！）所以就出现了一些能够调度php-cgi进程的程序，比如说由lighthttpd分离出来的spawn-fcgi。好了PHP-FPM也是这么个东东，在长时间的发展后，逐渐得到了大家的认可（要知道，前几年大家可是抱怨PHP-FPM稳定性太差的），也越来越流行。</p></blockquote><p style=\"color:rgb(51,51,51);font-size:14px;\">网上有的说，fastcgi是一个协议，php-fpm实现了这个协议</p><blockquote style=\"font-size:14px;border-left-width:2px;border-left-style:solid;border-left-color:rgb(0,154,97);color:rgb(85,85,85);\"><p>对。</p></blockquote><p style=\"color:rgb(51,51,51);font-size:14px;\">有的说，php-fpm是fastcgi进程的管理器，用来管理fastcgi进程的</p><blockquote style=\"font-size:14px;border-left-width:2px;border-left-style:solid;border-left-color:rgb(0,154,97);color:rgb(85,85,85);\"><p>对。php-fpm的管理对象是php-cgi。但不能说php-fpm是fastcgi进程的管理器，因为前面说了fastcgi是个协议，似乎没有这么个进程存在，就算存在php-fpm也管理不了他（至少目前是）。 有的说，php-fpm是php内核的一个补丁</p><p>以前是对的。因为最开始的时候php-fpm没有包含在PHP内核里面，要使用这个功能，需要找到与源码版本相同的php-fpm对内核打补丁，然后再编译。后来PHP内核集成了PHP-FPM之后就方便多了，使用<code style=\"font-family:&#39;Source Code Pro&#39;, Consolas, Menlo, Monaco, &#39;Courier New&#39;, monospace;font-size:.93em;color:rgb(199,37,78);\">--enalbe-fpm</code>这个编译参数即可。</p></blockquote><p style=\"color:rgb(51,51,51);font-size:14px;\">有的说，修改了php.ini配置文件后，没办法平滑重启，所以就诞生了php-fpm</p><blockquote style=\"font-size:14px;border-left-width:2px;border-left-style:solid;border-left-color:rgb(0,154,97);color:rgb(85,85,85);\"><p>是的，修改php.ini之后，php-cgi进程的确是没办法平滑重启的。php-fpm对此的处理机制是新的worker用新的配置，已经存在的worker处理完手上的活就可以歇着了，通过这种机制来平滑过度。</p></blockquote><p style=\"color:rgb(51,51,51);font-size:14px;\">还有的说PHP-CGI是PHP自带的FastCGI管理器，那这样的话干吗又弄个php-fpm出</p><blockquote style=\"font-size:14px;border-left-width:2px;border-left-style:solid;border-left-color:rgb(0,154,97);color:rgb(85,85,85);\"><p>不对。php-cgi只是解释PHP脚本的程序而已。</p></blockquote><p><br/></p><h1><span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:32px;color:#333333;\"><strong>PHPCGI：</strong></span></h1><p><span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:32px;color:#333333;\"><strong><span style=\"font-size:14px;color:#555555;\">PHP的解释器是php-cgi。php-cgi只是个CGI程序，他自己本身只能解析请求，返回结果，不会进程管理，所以就出现了一些能够调度php-cgi进程的程序，比如说由lighthttpd分离出来的spawn-fcgi。好了，PHP-FPM也是这么个东东，在长时间的发展后，逐渐得到了大家的认可（要知道，前几年大家可是抱怨PHP-FPM稳定性太差的），也越来越流行。</span></strong></span></p><p><br/></p>', 581, 0, 0, 1, 100, 'CGI、FSATCGI、php-fpm、phpcgi 介绍', 'CGI、FSATCGI、php-fpm、phpcgi 介绍', 0, 1571320522, 1577031469);
INSERT INTO `ad_article` VALUES (90, 1, '进程和线程、协程的区别', '', '成长的小白菜', '现在多进程多线程已经是老生常谈了，协程也在最近几年流行起来。python中有协程库gevent，py web框架tornado中也用了gevent封装好的协程。本文主要介绍进程、线程和协程三者之间的区别。', '', '<p>一、概念</p><p>　　1、进程</p><p>进程是具有一定独立功能的程序关于某个数据集合上的一次运行活动,进程是系统进行资源分配和调度的一个独立单位。每个进程都有自己的独立内存空间，不同进程通过进程间通信来通信。由于进程比较重量，占据独立的内存，所以上下文进程间的切换开销（栈、寄存器、虚拟内存、文件句柄等）比较大，但相对比较稳定安全。</p><p>　　2、线程</p><p>线程是进程的一个实体,是CPU调度和分派的基本单位,它是比进程更小的能独立运行的基本单位.线程自己基本上不拥有系统资源,只拥有一点在运行中必不可少的资源(如程序计数器,一组寄存器和栈),但是它可与同属一个进程的其他的线程共享进程所拥有的全部资源。线程间通信主要通过共享内存，上下文切换很快，资源开销较少，但相比进程不够稳定容易丢失数据。</p><p>　　3、协程</p><p><strong>协程是一种用户态的轻量级线程，</strong>协程的调度完全由用户控制。协程拥有自己的寄存器上下文和栈。协程调度切换时，将寄存器上下文和栈保存到其他地方，在切回来的时候，恢复先前保存的寄存器上下文和栈，直接操作栈则基本没有内核切换的开销，可以不加锁的访问全局变量，所以上下文的切换非常快。</p><p>&nbsp;</p><p>二、区别：</p><p>　　1、进程多与线程比较</p><p>线程是指进程内的一个执行单元,也是进程内的可调度实体。线程与进程的区别:<br/><span style=\"color: #000000;\">1) 地址空间:线程是进程内的一个执行单元，进程内至少有一个线程，它们共享进程的地址空间，而进程有自己独立的地址空间<br/>2) 资源拥有:进程是资源分配和拥有的单位,同一个进程内的线程共享进程的资源<br/>3) 线程是处理器调度的基本单位,但进程不是<br/>4) 二者均可并发执行</span></p><p><span style=\"color: #000000;\">5)&nbsp;每个独立的线程有一个程序运行的入口、顺序执行序列和程序的出口，但是线程不能够独立执行，必须依存在应用程序中，由应用程序提供多个线程执行控制</span></p><p><span style=\"color: #000000;\">　　2、协程多与线程进行比较</span></p><p><span style=\"color: #000000;\">1) 一个线程可以多个协程，一个进程也可以单独拥有多个协程，这样python中则能使用多核CPU。</span></p><p><span style=\"color: #000000;\">2) 线程进程都是同步机制，而协程则是异步</span></p><p><span style=\"color: #000000;\">3)&nbsp;协程能保留上一次调用时的状态，每次过程重入时，就相当于进入上一次调用的状态</span></p><p>&nbsp;</p><p>&nbsp;三、进程和线程、协程在python中的使用</p><p>　　1、多进程一般使用multiprocessing库，来利用多核CPU，主要是用在CPU密集型的程序上，当然生产者消费者这种也可以使用。多进程的优势就是一个子进程崩溃并不会影响其他子进程和主进程的运行，但缺点就是不能一次性启动太多进程，会严重影响系统的资源调度，特别是CPU使用率和负载。使用多进程可以查看文章《<a class=\"postTitle2\" href=\"http://www.cnblogs.com/lxmhhy/p/6052167.html\" target=\"_blank\">python 多进程使用总结</a>》。注：python2的进程池在类中的使用会有问题，需要把类函数定义成全局函数。具体可参考 http://bbs.chinaunix.net/thread-4111379-1-1.html</p><p>　　2、多线程一般是使用threading库，完成一些IO密集型并发操作。多线程的优势是切换快，资源消耗低，但一个线程挂掉则会影响到所有线程，所以不够稳定。现实中使用线程池的场景会比较多，具体可参考《<a href=\"http://www.cnblogs.com/lxmhhy/p/6032924.html\" target=\"_blank\">python线程池实现</a>》。</p><p>　　3、协程一般是使用gevent库，当然这个库用起来比较麻烦，所以使用的并不是很多。相反，协程在tornado的运用就多得多了，使用协程让tornado做到单线程异步，据说还能解决C10K的问题。所以协程使用的地方最多的是在web应用上。</p><p>总结一下就是IO密集型一般使用多线程或者多进程，CPU密集型一般使用多进程，强调非阻塞异步并发的一般都是使用协程，当然有时候也是需要多进程线程池结合的，或者是其他组合方式。</p><p><br/></p>', 549, 0, 0, 1, 100, '', '', 0, 1577007043, 1577007043);
INSERT INTO `ad_article` VALUES (91, 1, 'MySQL事务原理浅析', '', '成长的小白菜', '因为自己对数据的可靠性，可用性方面特别感兴趣，所以在MySQL事务方面看了很多资料，也看了很多博客，所以想到自己也写一篇博客整理整理自己所学内容，尽量用自己的语言解释得通俗易懂。', '', '<article><h3>前言</h3><p>因为自己对数据的可靠性，可用性方面特别感兴趣，所以在MySQL事务方面看了很多资料，也看了很多博客，所以想到自己也写一篇博客整理整理自己所学内容，尽量用自己的语言解释得通俗易懂。<br/></p><h3>事务经典场景</h3><p>在很多介绍事务的博客都会代入这样一个场景，先简单说说：</p><p>A给B转账100，A少100，B多100。如果A少100后系统崩溃怎么办？B的钱多不了，这样金钱总数凭空少了100。这里就需要用到事务了。</p><h3>什么是事务？</h3><p>事务是恢复和<a href=\"https://baike.baidu.com/item/%E5%B9%B6%E5%8F%91%E6%8E%A7%E5%88%B6\" target=\"_blank\">并发控制</a>的基本单位，事务有四个特性（ACID），原子性（Atomicity），一致性（Consistency），隔离性（Isolation），持久性（Durability）。本文主要围绕这四个特性展开介绍。</p><h3>原子性</h3><p>原子性就是不可拆分的特性，要么全部成功然后提交(commit)，要么全部失败然后回滚（rollback）。若开启事务，在上述场景就不会出现 \r\nA少100 成功，B多100 失败 这种情况。MySQL通过Redo Log重做日志实现了原子性，在将执行SQL语句时，会先写入redo log\r\n buffer，再执行SQL语句，若SQL语句执行出错就会根据redo log buffer中的记录来执行回滚操作，由此拥有原子性。</p><h3>一致性</h3><p>一致性指事务将数据库从一种状态转变为下一种一致的状态。比如有一个字段name有唯一索引约束，那么在事务前后都不能有重复的name出现违反唯一索引约束，否则回滚。在上述场景中即金钱总数总是200，不能凭空增加减少。MySQL通过undo\r\n Log实现一致性，执行SQL语句时，会先写入undo log再写入 redo log \r\nbuffer。undo是逻辑日志，会根据之前的SQL语句进行相应回滚，比如之前是insert那么回滚时会执行一个delete，一个update会执行\r\n 一个相反的update。并且除了回滚，undo \r\nlog还有一个作用是MVCC，当用户读取一行记录时，若该记录已经被其他事务占用，当前事务可通过undo读取之前的行版本信息，实现非锁定读取。<strong>并且undo log也会产生redo log，因为undo log也需要持久性的保护。</strong></p><h3>隔离性</h3><p>首先介绍如果没有隔离性会发生的4种情况</p><h5>丢失更新</h5><p>A事务撤销时，把已经提交的B事务的更新数据覆盖了。这种错误可能造成很严重的问题，通过下面的账户取款转账就可以看出来，MySQL通过三级封锁协议的第一级解决了丢失更新，事务 T 要修改数据 A 时必须加 X 锁，直到 T 结束才释放锁。</p><table><thead><tr class=\"firstRow\"><th>时间</th><th>取款事务A</th><th>转账事务B</th></tr></thead><tbody><tr><td>T1</td><td><strong>开始事务</strong></td><td><br/></td></tr><tr><td>T2</td><td><br/></td><td><strong>开始事务</strong></td></tr><tr><td>T3</td><td>查询账户余额为1000元</td><td><br/></td></tr><tr><td>T4</td><td><br/></td><td>查询账户余额为1000元</td></tr><tr><td>T5</td><td><br/></td><td>汇入100元把余额改为1100元</td></tr><tr><td>T6</td><td><br/></td><td><strong>提交事务</strong></td></tr><tr><td>T7</td><td>取出100元把余额改为900元</td><td><br/></td></tr><tr><td>T8</td><td><strong>撤销事务</strong></td><td><br/></td></tr><tr><td>T9</td><td><strong>余额恢复为1000</strong> <strong>元（丢失更新）</strong></td><td><br/></td></tr></tbody></table><h5>脏读</h5><p>脏读主要是读取到了其他事务的数据，而其他事务随后发生回滚。MySQL通过三级封锁协议的第二级解决了脏读，在一级的基础上，要求读取数据 A 时必须加 S 锁，读取完马上释放 S 锁。</p><table><thead><tr class=\"firstRow\"><th>时间</th><th>取款事务A</th><th>转账事务B</th></tr></thead><tbody><tr><td>T1</td><td><strong>开始事务</strong></td><td><br/></td></tr><tr><td>T2</td><td><br/></td><td><strong>开始事务</strong></td></tr><tr><td>T3</td><td>查询账户余额为1000元</td><td><br/></td></tr><tr><td>T4</td><td><br/></td><td><br/></td></tr><tr><td>T5</td><td><br/></td><td>汇入100元把余额改为1100元</td></tr><tr><td>T6</td><td>查询账户余额为1100元<strong>（脏读）</strong></td><td><br/></td></tr><tr><td>T7</td><td><br/></td><td><strong>撤销事务</strong></td></tr><tr><td>T8</td><td>汇入100元以为是1200元</td><td><br/></td></tr></tbody></table><h5>不可重复读</h5><p>不可重复读是读取到数据后，随后其他事务对数据发生了<strong>修改</strong>，无法再次读取。MySQL通过三级封锁协议的第三级解决了不可重复读。在二级的基础上，要求读取数据 A 时必须加 S 锁，直到事务结束了才能释放 S 锁。</p><table><thead><tr class=\"firstRow\"><th><strong>时间</strong></th><th>取款事务A</th><th>转账事务B</th></tr></thead><tbody><tr><td>T1</td><td><strong>开始事务</strong></td><td><br/></td></tr><tr><td>T2</td><td><br/></td><td><strong>开始事务</strong></td></tr><tr><td>T3</td><td>查询账户余额为1000元</td><td><br/></td></tr><tr><td>T4</td><td><br/></td><td><br/></td></tr><tr><td>T5</td><td><br/></td><td>汇入100元把余额改为1100元</td></tr><tr><td>T6</td><td>查询账户余额为1100元<strong>（不可重复读）</strong></td><td><br/></td></tr><tr><td>T7</td><td><br/></td><td><strong>提交事务</strong></td></tr><tr><td>T8</td><td><strong>提交事务</strong></td><td><br/></td></tr></tbody></table><h5>幻读</h5><p>幻读是读取到数据后，随后其他事务对数据发生了<strong>新增</strong>，无法再次读取。在InnoDB引擎Repeatable Read的隔离级别下，MySQL通过Next-Key Lock以及MVCC解决了幻读，事务中分为当前读以及快照读。</p><p><strong>1.快照读(snapshot read)</strong> &nbsp;------通过MVCC来避免幻读</p><p>简单的select操作(不包括 select ... lock in share mode, select ... for update)</p><p><strong>2.当前读(current read)</strong> &nbsp;------通过Next-Key Lock 来避免幻读 &nbsp;Next-Key Lock即间隙锁（Gap Lock）+行锁 （Record Lock）</p><p>select ... lock in share mode</p><p>select ... for update</p><p>insert</p><p>update</p><p>delete</p><table><thead><tr class=\"firstRow\"><th><strong><em><em>时间</em></em></strong></th><th>取款事务A</th><th>转账事务B</th></tr></thead><tbody><tr><td>T1</td><td><strong>开始事务</strong></td><td><br/></td></tr><tr><td>T2</td><td><br/></td><td><strong>开始事务</strong></td></tr><tr><td>T3</td><td>查询账户余额为1000元 RMB 100元美元</td><td><br/></td></tr><tr><td>T4</td><td><br/></td><td><br/></td></tr><tr><td>T5</td><td><br/></td><td>汇入100欧元</td></tr><tr><td>T6</td><td>查询账户余额为1000元 RMB 100元美元 100欧元<strong>（幻读）</strong></td><td><br/></td></tr><tr><td>T7</td><td><br/></td><td><strong>提交事务</strong></td></tr><tr><td>T8</td><td><strong>提交事务</strong></td><td><br/></td></tr></tbody></table><p>事务有四个隔离级别</p><h5>Read Uncommitted</h5><p>解决了丢失更新</p><h5>Read Committed</h5><p>解决了丢失更新+脏读</p><h5>Repeatable Read</h5><p>解决了丢失更新+脏读+不可重复读 （Innodb下也解决了幻读，原理上文已说明）</p><h5>Serializable</h5><p>解决了丢失更新+脏读+不可重复读+幻读</p><p><strong>从上至下，性能越差，安全性越优。</strong></p><h3>持久性</h3><p>一旦事务提交，则其所做的修改就会永久保存到数据库中。此时即使系统崩溃，修改的数据也不会丢失。具体实现原理就是在事务commit之前会将，redo\r\n log buffer中的数据持久化到硬盘中的redo log \r\nfile，这样在commit的时候，硬盘中已经有了我们修改或新增的数据，由此做到持久化。</p><h3>总结</h3><p>简单总结了一下MySQL事务，对于Redo Undo没有做到了如指掌的掌握所以介绍篇幅不太大，随着学习深入以后会进行相应补充。</p><h3>参考资料</h3><p>-----《MySQL技术内幕 InnoDB存储引擎》 第2版</p></article><p><br/></p>', 19, 0, 0, 1, 100, 'MySQL事务原理浅析', 'MySQL事务原理浅析', 0, 1577433777, 1577433777);
COMMIT;

-- ----------------------------
-- Table structure for ad_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `ad_auth_group`;
CREATE TABLE `ad_auth_group` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='权限组';

-- ----------------------------
-- Records of ad_auth_group
-- ----------------------------
BEGIN;
INSERT INTO `ad_auth_group` VALUES (6, '超级管理员', '超级管理员', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40', 1, '2020-02-09 12:20:02', '2020-02-10 01:50:24');
INSERT INTO `ad_auth_group` VALUES (7, '普通管理员', '普通管理员', '1,2,3,4,5,6,8,12,13,14,15,17,18,19,20,22,23,24,25,26', 1, '2020-02-09 12:20:02', '2020-02-09 12:20:02');
INSERT INTO `ad_auth_group` VALUES (8, '日常运营员', '日常运营员', '1,2,3,4,5,6,8,12,13,14,15,17,18,19,20,22,23,24,25,26,41', 1, '2020-02-09 12:20:02', '2020-02-09 12:20:02');
INSERT INTO `ad_auth_group` VALUES (9, '测试管理员', '测试管理员', '1,2,3,4,5,6,8,12,13,14,15,17,18,19,20,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45', 1, '2020-02-09 12:20:02', '2020-02-09 12:20:02');
INSERT INTO `ad_auth_group` VALUES (10, '撒打算撒打算', '撒打算打算的', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25', 1, '2020-02-09 04:54:37', '2020-02-09 04:55:50');
INSERT INTO `ad_auth_group` VALUES (11, '敬飞管理员', '敬飞管理员', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,31,32,33,34', 1, '2020-02-18 19:33:07', '2020-02-18 19:33:07');
COMMIT;

-- ----------------------------
-- Table structure for ad_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `ad_auth_group_access`;
CREATE TABLE `ad_auth_group_access` (
  `uid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '用户id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '权限组id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权';

-- ----------------------------
-- Records of ad_auth_group_access
-- ----------------------------
BEGIN;
INSERT INTO `ad_auth_group_access` VALUES (1, 6);
INSERT INTO `ad_auth_group_access` VALUES (2, 1);
INSERT INTO `ad_auth_group_access` VALUES (6, 6);
INSERT INTO `ad_auth_group_access` VALUES (7, 7);
INSERT INTO `ad_auth_group_access` VALUES (8, 6);
INSERT INTO `ad_auth_group_access` VALUES (9, 8);
INSERT INTO `ad_auth_group_access` VALUES (10, 7);
INSERT INTO `ad_auth_group_access` VALUES (11, 6);
INSERT INTO `ad_auth_group_access` VALUES (12, 6);
INSERT INTO `ad_auth_group_access` VALUES (13, 6);
COMMIT;

-- ----------------------------
-- Table structure for ad_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `ad_auth_rule`;
CREATE TABLE `ad_auth_rule` (
  `authorityId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` char(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `authorityName` varchar(255) NOT NULL DEFAULT '' COMMENT '权限名称',
  `menuUrl` varchar(255) NOT NULL DEFAULT '',
  `menuIcon` varchar(64) NOT NULL DEFAULT '',
  `orderNumber` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `isMenu` varchar(255) DEFAULT '1',
  `authority` varchar(255) DEFAULT NULL,
  `checked` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`authorityId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='权限规则';

-- ----------------------------
-- Records of ad_auth_rule
-- ----------------------------
BEGIN;
INSERT INTO `ad_auth_rule` VALUES (1, '-1', '常规管理', 'welcome/index', 'layui-icon layui-icon-app', 0, '2018-06-29 11:05:41', '2018-07-13 09:13:42', '0', 'welcome/index', 0);
INSERT INTO `ad_auth_rule` VALUES (2, '1', '控制台', 'welcome/home', '', 0, '2020-01-21 08:12:32', '2020-01-21 08:12:32', '0', 'welcome/home', 0);
INSERT INTO `ad_auth_rule` VALUES (3, '1', '用户管理', 'users/index', '', 0, '2020-01-18 06:41:14', '2020-01-18 06:41:17', '0', 'users/index', 0);
INSERT INTO `ad_auth_rule` VALUES (4, '3', '用户列表', 'users/list', '', 0, '2020-02-07 20:32:25', '2020-02-07 20:32:25', '1', 'users/list', 0);
INSERT INTO `ad_auth_rule` VALUES (5, '3', '添加用户', 'users/add', '', 0, '2020-01-18 06:53:36', '2020-01-18 06:53:33', '1', 'users/add', 0);
INSERT INTO `ad_auth_rule` VALUES (6, '3', '添加用户数据', 'users/adddata', '', 0, '2020-02-07 20:40:01', '2020-02-07 20:40:01', '1', 'users/adddata', 0);
INSERT INTO `ad_auth_rule` VALUES (7, '3', '编辑用户', 'users/edit', '', 0, '2020-01-18 07:02:07', '2020-01-18 07:02:10', '1', 'users/edit', 0);
INSERT INTO `ad_auth_rule` VALUES (8, '3', '编辑用户信息', 'users/editdata', '', 0, '2020-01-18 07:05:12', '2020-01-18 07:05:12', '1', 'users/editdata', 0);
INSERT INTO `ad_auth_rule` VALUES (9, '3', '删除用户', 'users/detele', '', 0, '2020-01-18 07:05:09', '2020-01-18 07:05:12', '1', 'users/detele', 0);
INSERT INTO `ad_auth_rule` VALUES (10, '3', '全选删除用户', 'users/detele_all', '', 0, '2020-01-18 07:05:12', '2020-01-18 07:05:12', '1', 'users/detele_all', 0);
INSERT INTO `ad_auth_rule` VALUES (11, '-1', '权限管理', 'rules/index', '', 0, '2020-01-18 07:05:12', '2020-01-18 07:05:12', '0', 'rules/index', 0);
INSERT INTO `ad_auth_rule` VALUES (12, '11', '规则管理', 'rules/index', '', 0, '2020-01-18 07:05:12', '2020-01-18 07:05:12', '0', 'rules/index', 0);
INSERT INTO `ad_auth_rule` VALUES (13, '12', '规则列表', 'rules/list', '', 0, '2020-01-18 07:05:12', '2020-01-18 07:05:12', '1', 'rules/list', 0);
INSERT INTO `ad_auth_rule` VALUES (14, '12', '添加规则', 'rules/add', '', 0, '2020-02-08 03:11:36', '2020-02-08 03:11:36', '1', 'rules/add', 0);
INSERT INTO `ad_auth_rule` VALUES (15, '12', '添加规则数据', 'rules/addruledata', '', 0, '2020-02-08 03:11:36', '2020-02-08 03:11:36', '1', 'rules/addruledata', 0);
INSERT INTO `ad_auth_rule` VALUES (16, '12', '编辑规则', 'rules/edit', '', 0, '2020-02-08 03:11:36', '2020-02-08 03:11:36', '1', 'rules/edit', 0);
INSERT INTO `ad_auth_rule` VALUES (17, '12', '修改规则数据', 'rules/editruledata', '', 0, '2020-02-08 03:11:36', '2020-02-08 03:11:36', '1', 'rules/editruledata', 0);
INSERT INTO `ad_auth_rule` VALUES (18, '12', '删除规则', 'rules/delete', '', 0, '2020-02-08 04:24:52', '2020-02-08 04:24:52', '1', 'rules/delete', 0);
INSERT INTO `ad_auth_rule` VALUES (19, '11', '权限组', 'groups/index', '', 0, '2020-02-09 02:12:32', '2020-02-09 02:12:32', '0', 'groups/index', 0);
INSERT INTO `ad_auth_rule` VALUES (20, '19', '权限组列表', 'groups/list', '', 0, '2020-02-09 03:08:31', '2020-02-09 03:08:31', '1', 'groups/list', 0);
INSERT INTO `ad_auth_rule` VALUES (21, '19', '获取全部权限', 'groups/rulelist', '', 0, '2020-02-09 03:08:31', '2020-02-09 03:08:31', '1', 'groups/rulelist', 0);
INSERT INTO `ad_auth_rule` VALUES (22, '19', '编辑权限组', 'groups/edit', '', 0, '2020-02-09 03:29:05', '2020-02-09 03:29:05', '1', 'groups/edit', 0);
INSERT INTO `ad_auth_rule` VALUES (23, '19', '编辑权限组', 'groups/editgroupdata', '', 0, '2020-02-09 03:38:05', '2020-02-09 03:38:05', '1', 'groups/editgroupdata', 0);
INSERT INTO `ad_auth_rule` VALUES (24, '19', '添加权限组', 'groups/add', '', 0, '2020-02-09 04:44:34', '2020-02-09 04:44:34', '1', 'groups/add', 0);
INSERT INTO `ad_auth_rule` VALUES (25, '19', '添加权限组数据', 'groups/addgroupdata', '', 0, '2020-02-09 04:45:13', '2020-02-09 04:45:13', '1', 'groups/addgroupdata', 0);
INSERT INTO `ad_auth_rule` VALUES (26, '11', '管理员', 'admins/index', '', 0, '2020-02-10 01:36:17', '2020-02-10 01:36:17', '0', 'admins/index', 0);
INSERT INTO `ad_auth_rule` VALUES (27, '1', '系统设置', 'systems/index', '', 0, '2020-02-10 01:44:00', '2020-02-10 01:44:00', '0', 'systems/index', 0);
INSERT INTO `ad_auth_rule` VALUES (28, '27', '添加系统数据', 'systems/upsetdata', '', 0, '2020-02-10 01:46:40', '2020-02-10 01:46:40', '1', 'systems/upsetdata', 0);
INSERT INTO `ad_auth_rule` VALUES (30, '26', '管理员列表', 'admins/list', '', 0, '2020-02-10 01:50:07', '2020-02-10 01:50:07', '1', 'admins/list', 0);
INSERT INTO `ad_auth_rule` VALUES (31, '-1', '文章管理', 'articles/index', '', 0, '2020-02-10 01:50:07', '2020-02-10 01:50:07', '0', 'articles/index', 0);
INSERT INTO `ad_auth_rule` VALUES (32, '31', '分类管理', 'categorys/index', '', 0, '2020-02-10 01:56:42', '2020-02-10 01:56:42', '0', 'categorys/index', 0);
INSERT INTO `ad_auth_rule` VALUES (33, '31', '商品管理', 'products/index', '', 0, '2020-02-18 03:50:07', '2020-02-18 03:50:07', '0', 'products/index', 0);
INSERT INTO `ad_auth_rule` VALUES (34, '33', '商品列表', 'products/list', '', 0, '2020-02-18 03:50:07', '2020-02-18 03:50:07', '1', 'products/list', 0);
INSERT INTO `ad_auth_rule` VALUES (35, '11', '获取父级列表', 'rules/getparentrule', '', 0, '2020-02-18 03:50:07', '2020-02-18 03:50:07', '1', 'rules/getparentrule', 0);
COMMIT;

-- ----------------------------
-- Table structure for ad_carousel
-- ----------------------------
DROP TABLE IF EXISTS `ad_carousel`;
CREATE TABLE `ad_carousel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(32) NOT NULL DEFAULT '0' COMMENT '分类',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `url` varchar(255) DEFAULT '' COMMENT '链接',
  `target` varchar(10) DEFAULT '' COMMENT '打开方式',
  `image` varchar(255) DEFAULT '' COMMENT '图片',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='轮播广告';

-- ----------------------------
-- Records of ad_carousel
-- ----------------------------
BEGIN;
INSERT INTO `ad_carousel` VALUES (1, 'index', 'TEST', 'TEST轮播', 'http://blog.kevinfei.com/public/upload/image/20190805/fb65bd45ec6d0b6fbc7aac1ea8c3e7a4.jpg', '_blank', '/public/upload/image/20190805/fb65bd45ec6d0b6fbc7aac1ea8c3e7a4.jpg', 0, 1);
INSERT INTO `ad_carousel` VALUES (2, 'dateils', 'Dateils', 'DATEILS描述', 'http://bucketpublic.kevinfei.com/d8595202001080848097680.jpg', '_blank', 'http://bucketpublic.kevinfei.com/d8595202001080848097680.jpg', 1, 1);
INSERT INTO `ad_carousel` VALUES (3, 'category', 'categoryName', '描述', 'http://bucketpublic.kevinfei.com/33e9f20200108084901588.jpg', '_blank', 'http://bucketpublic.kevinfei.com/33e9f20200108084901588.jpg', 2, 1);
COMMIT;

-- ----------------------------
-- Table structure for ad_category
-- ----------------------------
DROP TABLE IF EXISTS `ad_category`;
CREATE TABLE `ad_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `category_name` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `sort_order` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `keywords` varchar(255) DEFAULT '' COMMENT '关键字',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `curl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=utf8 COMMENT='分类';

-- ----------------------------
-- Records of ad_category
-- ----------------------------
BEGIN;
INSERT INTO `ad_category` VALUES (1, 0, '通用机械设备', 100, '通用机械设备', '通用机械设备', 'http://china.makepolo.com/list/d9/');
INSERT INTO `ad_category` VALUES (2, 1, '泵与阀门', 100, '泵与阀门', '泵与阀门', 'http://china.makepolo.com/list/spc5768/');
INSERT INTO `ad_category` VALUES (3, 1, '金属切削机床', 100, '金属切削机床', '金属切削机床', 'http://china.makepolo.com/list/spc4657/');
INSERT INTO `ad_category` VALUES (4, 1, '锻压机床', 100, '锻压机床', '锻压机床', 'http://china.makepolo.com/list/spc5063/');
INSERT INTO `ad_category` VALUES (5, 1, '特种加工机床', 100, '特种加工机床', '特种加工机床', 'http://china.makepolo.com/list/spc4551/');
INSERT INTO `ad_category` VALUES (6, 1, '机床附件', 100, '机床附件', '机床附件', 'http://china.makepolo.com/list/spc5325/');
INSERT INTO `ad_category` VALUES (7, 1, '切削刀具', 100, '切削刀具', '切削刀具', 'http://china.makepolo.com/list/spc3646/');
INSERT INTO `ad_category` VALUES (8, 1, '真空获取与应用设备', 100, '真空获取与应用设备', '真空获取与应用设备', 'http://china.makepolo.com/list/spc5772/');
INSERT INTO `ad_category` VALUES (9, 1, '风机设备', 100, '风机设备', '风机设备', 'http://china.makepolo.com/list/spc27500/');
INSERT INTO `ad_category` VALUES (10, 1, '粉碎设备、粉碎机', 100, '粉碎设备、粉碎机', '粉碎设备、粉碎机', 'http://china.makepolo.com/list/spc27884/');
INSERT INTO `ad_category` VALUES (11, 1, '气体发生与分离设备', 100, '气体发生与分离设备', '气体发生与分离设备', 'http://china.makepolo.com/list/spc26488/');
INSERT INTO `ad_category` VALUES (12, 1, '制冷设备', 100, '制冷设备', '制冷设备', 'http://china.makepolo.com/list/spc27928/');
INSERT INTO `ad_category` VALUES (13, 1, '过滤筛分设备', 100, '过滤筛分设备', '过滤筛分设备', 'http://china.makepolo.com/list/spc25862/');
INSERT INTO `ad_category` VALUES (14, 1, '热处理设备', 100, '热处理设备', '热处理设备', 'http://china.makepolo.com/list/spc26005/');
INSERT INTO `ad_category` VALUES (15, 1, '焊接铆接与切割设备', 100, '焊接铆接与切割设备', '焊接铆接与切割设备', 'http://china.makepolo.com/list/spc5381/');
INSERT INTO `ad_category` VALUES (16, 1, '工业炉窑', 100, '工业炉窑', '工业炉窑', 'http://china.makepolo.com/list/spc26705/');
INSERT INTO `ad_category` VALUES (17, 1, '传热设备', 100, '传热设备', '传热设备', 'http://china.makepolo.com/list/spc27958/');
INSERT INTO `ad_category` VALUES (18, 1, '锅炉与原动机', 100, '锅炉与原动机', '锅炉与原动机', 'http://china.makepolo.com/list/spc5530/');
INSERT INTO `ad_category` VALUES (19, 1, '传质设备/塔设备', 100, '传质设备/塔设备', '传质设备/塔设备', 'http://china.makepolo.com/list/spc145687/');
INSERT INTO `ad_category` VALUES (20, 1, '分离设备', 100, '分离设备', '分离设备', 'http://china.makepolo.com/list/spc150236/');
INSERT INTO `ad_category` VALUES (21, 1, '混合设备', 100, '混合设备', '混合设备', 'http://china.makepolo.com/list/spc26746/');
INSERT INTO `ad_category` VALUES (22, 1, '反应设备', 100, '反应设备', '反应设备', 'http://china.makepolo.com/list/spc26803/');
INSERT INTO `ad_category` VALUES (23, 1, '干燥设备', 100, '干燥设备', '干燥设备', 'http://china.makepolo.com/list/spc26814/');
INSERT INTO `ad_category` VALUES (24, 1, '物料搬运及仓储设备', 100, '物料搬运及仓储设备', '物料搬运及仓储设备', 'http://china.makepolo.com/list/spc26955/');
INSERT INTO `ad_category` VALUES (25, 1, '储运设备', 100, '储运设备', '储运设备', 'http://china.makepolo.com/list/spc27929/');
INSERT INTO `ad_category` VALUES (26, 1, '包装机械', 100, '包装机械', '包装机械', 'http://china.makepolo.com/list/spc3626/');
INSERT INTO `ad_category` VALUES (27, 1, '消毒灭菌设备', 100, '消毒灭菌设备', '消毒灭菌设备', 'http://china.makepolo.com/list/spc3833/');
INSERT INTO `ad_category` VALUES (28, 1, '清洗与加香设备', 100, '清洗与加香设备', '清洗与加香设备', 'http://china.makepolo.com/list/spc26917/');
INSERT INTO `ad_category` VALUES (29, 1, '模具', 100, '模具', '模具', 'http://china.makepolo.com/list/spc25609/');
INSERT INTO `ad_category` VALUES (30, 1, '表面处理与涂装设备', 100, '表面处理与涂装设备', '表面处理与涂装设备', 'http://china.makepolo.com/list/spc28171/');
INSERT INTO `ad_category` VALUES (31, 1, '工控系统及装备', 100, '工控系统及装备', '工控系统及装备', 'http://china.makepolo.com/list/spc145703/');
INSERT INTO `ad_category` VALUES (32, 1, '铸造设备', 100, '铸造设备', '铸造设备', 'http://china.makepolo.com/list/spc1649/');
INSERT INTO `ad_category` VALUES (33, 1, '空气净化设备', 100, '空气净化设备', '空气净化设备', 'http://china.makepolo.com/list/spc137/');
INSERT INTO `ad_category` VALUES (34, 1, '气动元件', 100, '气动元件', '气动元件', 'http://china.makepolo.com/list/spc2755/');
INSERT INTO `ad_category` VALUES (35, 1, '液压元件', 100, '液压元件', '液压元件', 'http://china.makepolo.com/list/spc2754/');
INSERT INTO `ad_category` VALUES (36, 1, '电动机', 100, '电动机', '电动机', 'http://china.makepolo.com/list/spc2074/');
INSERT INTO `ad_category` VALUES (37, 0, '行业专用设备', 100, '行业专用设备', '行业专用设备', 'http://china.makepolo.com/list/d10/');
INSERT INTO `ad_category` VALUES (38, 37, '工程机械', 100, '工程机械', '工程机械', 'http://china.makepolo.com/list/spc1652/');
INSERT INTO `ad_category` VALUES (39, 37, '建材机械', 100, '建材机械', '建材机械', 'http://china.makepolo.com/list/spc1647/');
INSERT INTO `ad_category` VALUES (40, 37, '冶金机械', 100, '冶金机械', '冶金机械', 'http://china.makepolo.com/list/spc1648/');
INSERT INTO `ad_category` VALUES (41, 37, '矿山机械', 100, '矿山机械', '矿山机械', 'http://china.makepolo.com/list/spc40/');
INSERT INTO `ad_category` VALUES (42, 37, '石油钻采机械', 100, '石油钻采机械', '石油钻采机械', 'http://china.makepolo.com/list/spc41/');
INSERT INTO `ad_category` VALUES (43, 37, '地质勘查专用设备', 100, '地质勘查专用设备', '地质勘查专用设备', 'http://china.makepolo.com/list/spc147515/');
INSERT INTO `ad_category` VALUES (44, 37, '塑料机械', 100, '塑料机械', '塑料机械', 'http://china.makepolo.com/list/spc1645/');
INSERT INTO `ad_category` VALUES (45, 37, '橡胶机械', 100, '橡胶机械', '橡胶机械', 'http://china.makepolo.com/list/spc1646/');
INSERT INTO `ad_category` VALUES (46, 37, '电工产品制造设备', 100, '电工产品制造设备', '电工产品制造设备', 'http://china.makepolo.com/list/spc1650/');
INSERT INTO `ad_category` VALUES (47, 37, '电子产品制造设备', 100, '电子产品制造设备', '电子产品制造设备', 'http://china.makepolo.com/list/spc1651/');
INSERT INTO `ad_category` VALUES (48, 37, '化工设备', 100, '化工设备', '化工设备', 'http://china.makepolo.com/list/spc1643/');
INSERT INTO `ad_category` VALUES (49, 37, '日用化工机械', 100, '日用化工机械', '日用化工机械', 'http://china.makepolo.com/list/spc28241/');
INSERT INTO `ad_category` VALUES (50, 37, '服装机械', 100, '服装机械', '服装机械', 'http://china.makepolo.com/list/spc45/');
INSERT INTO `ad_category` VALUES (51, 37, '纺织机械', 100, '纺织机械', '纺织机械', 'http://china.makepolo.com/list/spc43/');
INSERT INTO `ad_category` VALUES (52, 37, '毛皮、制革机械', 100, '毛皮、制革机械', '毛皮、制革机械', 'http://china.makepolo.com/list/spc25484/');
INSERT INTO `ad_category` VALUES (53, 37, '制鞋机械', 100, '制鞋机械', '制鞋机械', 'http://china.makepolo.com/list/spc46/');
INSERT INTO `ad_category` VALUES (54, 37, '食品生产机械', 100, '食品生产机械', '食品生产机械', 'http://china.makepolo.com/list/spc42/');
INSERT INTO `ad_category` VALUES (55, 37, '饮食、炊事机械', 100, '饮食、炊事机械', '饮食、炊事机械', 'http://china.makepolo.com/list/spc3326/');
INSERT INTO `ad_category` VALUES (56, 37, '农业机械', 100, '农业机械', '农业机械', 'http://china.makepolo.com/list/spc39/');
INSERT INTO `ad_category` VALUES (57, 37, '农产品初加工机械', 100, '农产品初加工机械', '农产品初加工机械', 'http://china.makepolo.com/list/spc2024/');
INSERT INTO `ad_category` VALUES (58, 37, '饲料加工机械', 100, '饲料加工机械', '饲料加工机械', 'http://china.makepolo.com/list/spc3619/');
INSERT INTO `ad_category` VALUES (59, 37, '畜牧养殖机械', 100, '畜牧养殖机械', '畜牧养殖机械', 'http://china.makepolo.com/list/spc56/');
INSERT INTO `ad_category` VALUES (60, 37, '林业机械', 100, '林业机械', '林业机械', 'http://china.makepolo.com/list/spc47/');
INSERT INTO `ad_category` VALUES (61, 37, '木材加工机械', 100, '木材加工机械', '木材加工机械', 'http://china.makepolo.com/list/spc25708/');
INSERT INTO `ad_category` VALUES (62, 37, '木工机床', 100, '木工机床', '木工机床', 'http://china.makepolo.com/list/spc5116/');
INSERT INTO `ad_category` VALUES (63, 37, '制浆造纸机械', 100, '制浆造纸机械', '制浆造纸机械', 'http://china.makepolo.com/list/spc1641/');
INSERT INTO `ad_category` VALUES (64, 37, '印刷机械', 100, '印刷机械', '印刷机械', 'http://china.makepolo.com/list/spc1642/');
INSERT INTO `ad_category` VALUES (65, 37, '节能环保设备', 100, '节能环保设备', '节能环保设备', 'http://china.makepolo.com/list/spc4859/');
INSERT INTO `ad_category` VALUES (66, 37, '汽保、维修专用设备', 100, '汽保、维修专用设备', '汽保、维修专用设备', 'http://china.makepolo.com/list/spc27030/');
INSERT INTO `ad_category` VALUES (67, 37, '小五金制造装备', 100, '小五金制造装备', '小五金制造装备', 'http://china.makepolo.com/list/spc146348/');
INSERT INTO `ad_category` VALUES (68, 37, '金融、商业专用设备', 100, '金融、商业专用设备', '金融、商业专用设备', 'http://china.makepolo.com/list/spc145594/');
INSERT INTO `ad_category` VALUES (69, 37, '渔业机械', 100, '渔业机械', '渔业机械', 'http://china.makepolo.com/list/spc147158/');
INSERT INTO `ad_category` VALUES (70, 37, '陶瓷制品生产设备', 100, '陶瓷制品生产设备', '陶瓷制品生产设备', 'http://china.makepolo.com/list/spc147375/');
INSERT INTO `ad_category` VALUES (71, 37, '陶瓷加工机械', 100, '陶瓷加工机械', '陶瓷加工机械', 'http://china.makepolo.com/list/spc146968/');
INSERT INTO `ad_category` VALUES (72, 37, '制药机械', 100, '制药机械', '制药机械', 'http://china.makepolo.com/list/spc1644/');
INSERT INTO `ad_category` VALUES (73, 37, '医疗器械仪器及耗材', 100, '医疗器械仪器及耗材', '医疗器械仪器及耗材', 'http://china.makepolo.com/list/spc1653/');
INSERT INTO `ad_category` VALUES (74, 37, '兽医器械', 100, '兽医器械', '兽医器械', 'http://china.makepolo.com/list/spc1654/');
INSERT INTO `ad_category` VALUES (75, 37, '其他制造业专用设备', 100, '其他制造业专用设备', '其他制造业专用设备', 'http://china.makepolo.com/list/spc150525/');
INSERT INTO `ad_category` VALUES (76, 37, '教学及图书馆设备', 100, '教学及图书馆设备', '教学及图书馆设备', 'http://china.makepolo.com/list/spc147800/');
INSERT INTO `ad_category` VALUES (77, 37, '公共安全设备与器材', 100, '公共安全设备与器材', '公共安全设备与器材', 'http://china.makepolo.com/list/spc28253/');
INSERT INTO `ad_category` VALUES (78, 37, '广告、传媒设备', 100, '广告、传媒设备', '广告、传媒设备', 'http://china.makepolo.com/list/spc147726/');
INSERT INTO `ad_category` VALUES (79, 37, '游乐/游艺设施', 100, '游乐/游艺设施', '游乐/游艺设施', 'http://china.makepolo.com/list/spc3704/');
INSERT INTO `ad_category` VALUES (80, 37, '市政环卫园林机械', 100, '市政环卫园林机械', '市政环卫园林机械', 'http://china.makepolo.com/list/spc148487/');
INSERT INTO `ad_category` VALUES (81, 37, '水利水资源专用机械', 100, '水利水资源专用机械', '水利水资源专用机械', 'http://china.makepolo.com/list/spc147517/');
INSERT INTO `ad_category` VALUES (82, 37, '铁路线路机械', 100, '铁路线路机械', '铁路线路机械', 'http://china.makepolo.com/list/spc3701/');
INSERT INTO `ad_category` VALUES (83, 37, '邮政机械及器材', 100, '邮政机械及器材', '邮政机械及器材', 'http://china.makepolo.com/list/spc147516/');
INSERT INTO `ad_category` VALUES (84, 0, '建筑设备', 100, '建筑设备', '建筑设备', 'http://china.makepolo.com/list/d8/');
INSERT INTO `ad_category` VALUES (85, 84, '采暖设备', 100, '采暖设备', '采暖设备', 'http://china.makepolo.com/list/spc134/');
INSERT INTO `ad_category` VALUES (86, 84, '通风设备', 100, '通风设备', '通风设备', 'http://china.makepolo.com/list/spc135/');
INSERT INTO `ad_category` VALUES (87, 84, '管道系统', 100, '管道系统', '管道系统', 'http://china.makepolo.com/list/spc150401/');
INSERT INTO `ad_category` VALUES (88, 84, '给排水设备', 100, '给排水设备', '给排水设备', 'http://china.makepolo.com/list/spc138/');
INSERT INTO `ad_category` VALUES (89, 84, '空气调节设备', 100, '空气调节设备', '空气调节设备', 'http://china.makepolo.com/list/spc136/');
INSERT INTO `ad_category` VALUES (90, 84, '空气净化设备', 100, '空气净化设备', '空气净化设备', 'http://china.makepolo.com/list/spc137/');
INSERT INTO `ad_category` VALUES (91, 84, '综合布线与光纤设备', 100, '综合布线与光纤设备', '综合布线与光纤设备', 'http://china.makepolo.com/list/spc148090/');
INSERT INTO `ad_category` VALUES (92, 84, '消防设备', 100, '消防设备', '消防设备', 'http://china.makepolo.com/list/spc139/');
INSERT INTO `ad_category` VALUES (93, 84, '停车场管理设备', 100, '停车场管理设备', '停车场管理设备', 'http://china.makepolo.com/list/spc181/');
INSERT INTO `ad_category` VALUES (94, 84, '安防监控设备', 100, '安防监控设备', '安防监控设备', 'http://china.makepolo.com/list/spc140/');
INSERT INTO `ad_category` VALUES (95, 84, '电梯和自动扶梯', 100, '电梯和自动扶梯', '电梯和自动扶梯', 'http://china.makepolo.com/list/spc3847/');
INSERT INTO `ad_category` VALUES (96, 84, '智能家居产品', 100, '智能家居产品', '智能家居产品', 'http://china.makepolo.com/list/spc150996/');
INSERT INTO `ad_category` VALUES (97, 0, '电气与能源设备', 100, '电气与能源设备', '电气与能源设备', 'http://china.makepolo.com/list/d11/');
INSERT INTO `ad_category` VALUES (98, 97, '发电机及发电机组', 100, '发电机及发电机组', '发电机及发电机组', 'http://china.makepolo.com/list/spc2073/');
INSERT INTO `ad_category` VALUES (99, 97, '电动机', 100, '电动机', '电动机', 'http://china.makepolo.com/list/spc2074/');
INSERT INTO `ad_category` VALUES (100, 97, '输配电设备', 100, '输配电设备', '输配电设备', 'http://china.makepolo.com/list/spc2075/');
INSERT INTO `ad_category` VALUES (101, 97, '电源装置', 100, '电源装置', '电源装置', 'http://china.makepolo.com/list/spc2076/');
INSERT INTO `ad_category` VALUES (102, 97, '电气成套设备', 100, '电气成套设备', '电气成套设备', 'http://china.makepolo.com/list/spc2081/');
INSERT INTO `ad_category` VALUES (103, 97, '电工仪器仪表', 100, '电工仪器仪表', '电工仪器仪表', 'http://china.makepolo.com/list/spc3560/');
INSERT INTO `ad_category` VALUES (104, 97, '高压电器', 100, '高压电器', '高压电器', 'http://china.makepolo.com/list/spc2079/');
INSERT INTO `ad_category` VALUES (105, 97, '低压电器', 100, '低压电器', '低压电器', 'http://china.makepolo.com/list/spc2080/');
INSERT INTO `ad_category` VALUES (106, 97, '燃气设备', 100, '燃气设备', '燃气设备', 'http://china.makepolo.com/list/spc150330/');
INSERT INTO `ad_category` VALUES (107, 97, '防雷设备', 100, '防雷设备', '防雷设备', 'http://china.makepolo.com/list/spc2078/');
INSERT INTO `ad_category` VALUES (108, 97, '新能源设备', 100, '新能源设备', '新能源设备', 'http://china.makepolo.com/list/spc150309/');
INSERT INTO `ad_category` VALUES (109, 97, '电力电子器件', 100, '电力电子器件', '电力电子器件', 'http://china.makepolo.com/list/spc2077/');
INSERT INTO `ad_category` VALUES (110, 97, '节能设备', 100, '节能设备', '节能设备', 'http://china.makepolo.com/list/spc148007/');
INSERT INTO `ad_category` VALUES (111, 97, '沼气设备', 100, '沼气设备', '沼气设备', 'http://china.makepolo.com/list/spc150350/');
INSERT INTO `ad_category` VALUES (112, 0, '仪器仪表', 100, '仪器仪表', '仪器仪表', 'http://china.makepolo.com/list/d13/');
INSERT INTO `ad_category` VALUES (113, 112, '计量标准器具', 100, '计量标准器具', '计量标准器具', 'http://china.makepolo.com/list/spc2598/');
INSERT INTO `ad_category` VALUES (114, 112, '计量仪表', 100, '计量仪表', '计量仪表', 'http://china.makepolo.com/list/spc3379/');
INSERT INTO `ad_category` VALUES (115, 112, '机械量测量仪器', 100, '机械量测量仪器', '机械量测量仪器', 'http://china.makepolo.com/list/spc3401/');
INSERT INTO `ad_category` VALUES (116, 112, '行业专用仪器仪表', 100, '行业专用仪器仪表', '行业专用仪器仪表', 'http://china.makepolo.com/list/spc3529/');
INSERT INTO `ad_category` VALUES (117, 112, '光学仪器', 100, '光学仪器', '光学仪器', 'http://china.makepolo.com/list/spc3558/');
INSERT INTO `ad_category` VALUES (118, 112, '分析仪器', 100, '分析仪器', '分析仪器', 'http://china.makepolo.com/list/spc3559/');
INSERT INTO `ad_category` VALUES (119, 112, '电工仪器仪表', 100, '电工仪器仪表', '电工仪器仪表', 'http://china.makepolo.com/list/spc3560/');
INSERT INTO `ad_category` VALUES (120, 112, '电子测量仪器', 100, '电子测量仪器', '电子测量仪器', 'http://china.makepolo.com/list/spc3561/');
INSERT INTO `ad_category` VALUES (121, 112, '试验机', 100, '试验机', '试验机', 'http://china.makepolo.com/list/spc3562/');
INSERT INTO `ad_category` VALUES (122, 112, '试验箱及环境试验设备', 100, '试验箱及环境试验设备', '试验箱及环境试验设备', 'http://china.makepolo.com/list/spc3563/');
INSERT INTO `ad_category` VALUES (123, 112, '量具量仪', 100, '量具量仪', '量具量仪', 'http://china.makepolo.com/list/spc3564/');
INSERT INTO `ad_category` VALUES (124, 112, '汽车检测设备', 100, '汽车检测设备', '汽车检测设备', 'http://china.makepolo.com/list/spc145302/');
INSERT INTO `ad_category` VALUES (125, 112, '衡器', 100, '衡器', '衡器', 'http://china.makepolo.com/list/spc3565/');
INSERT INTO `ad_category` VALUES (126, 112, '车用仪表', 100, '车用仪表', '车用仪表', 'http://china.makepolo.com/list/spc3566/');
INSERT INTO `ad_category` VALUES (127, 112, '生物仪器', 100, '生物仪器', '生物仪器', 'http://china.makepolo.com/list/spc3568/');
INSERT INTO `ad_category` VALUES (128, 112, '无损检测仪器', 100, '无损检测仪器', '无损检测仪器', 'http://china.makepolo.com/list/spc3570/');
INSERT INTO `ad_category` VALUES (129, 112, '其他仪器仪表及零配件', 100, '其他仪器仪表及零配件', '其他仪器仪表及零配件', 'http://china.makepolo.com/list/spc3571/');
INSERT INTO `ad_category` VALUES (130, 112, '气象仪器', 100, '气象仪器', '气象仪器', 'http://china.makepolo.com/list/spc27000/');
INSERT INTO `ad_category` VALUES (131, 112, '环境检测仪器', 100, '环境检测仪器', '环境检测仪器', 'http://china.makepolo.com/list/spc27284/');
INSERT INTO `ad_category` VALUES (132, 112, '室内环保检测仪器', 100, '室内环保检测仪器', '室内环保检测仪器', 'http://china.makepolo.com/list/spc27286/');
INSERT INTO `ad_category` VALUES (133, 112, '玻璃仪器', 100, '玻璃仪器', '玻璃仪器', 'http://china.makepolo.com/list/spc146763/');
INSERT INTO `ad_category` VALUES (134, 112, '传感器', 100, '传感器', '传感器', 'http://china.makepolo.com/list/spc4383/');
INSERT INTO `ad_category` VALUES (135, 112, '变送器', 100, '变送器', '变送器', 'http://china.makepolo.com/list/spc145943/');
INSERT INTO `ad_category` VALUES (136, 112, '工业自动化仪表及系统', 100, '工业自动化仪表及系统', '工业自动化仪表及系统', 'http://china.makepolo.com/list/spc148937/');
INSERT INTO `ad_category` VALUES (137, 0, '网络安防/通信广电设备', 100, '网络安防/通信广电设备', '网络安防/通信广电设备', 'http://china.makepolo.com/list/d149804/');
INSERT INTO `ad_category` VALUES (138, 137, '网络设备', 100, '网络设备', '网络设备', 'http://china.makepolo.com/list/spc4292/');
INSERT INTO `ad_category` VALUES (139, 137, '通信设备', 100, '通信设备', '通信设备', 'http://china.makepolo.com/list/spc3164/');
INSERT INTO `ad_category` VALUES (140, 137, '无线网络设备', 100, '无线网络设备', '无线网络设备', 'http://china.makepolo.com/list/spc4293/');
INSERT INTO `ad_category` VALUES (141, 137, '网络管理、安全设备', 100, '网络管理、安全设备', '网络管理、安全设备', 'http://china.makepolo.com/list/spc4313/');
INSERT INTO `ad_category` VALUES (142, 137, '综合布线', 100, '综合布线', '综合布线', 'http://china.makepolo.com/list/spc148090/');
INSERT INTO `ad_category` VALUES (143, 137, '广播电视设备', 100, '广播电视设备', '广播电视设备', 'http://china.makepolo.com/list/spc3268/');
INSERT INTO `ad_category` VALUES (144, 137, '安防监控系统', 100, '安防监控系统', '安防监控系统', 'http://china.makepolo.com/list/spc140/');
INSERT INTO `ad_category` VALUES (145, 0, '电脑/办公设备', 100, '电脑/办公设备', '电脑/办公设备', 'http://china.makepolo.com/list/d14/');
INSERT INTO `ad_category` VALUES (146, 145, '办公耗材', 100, '办公耗材', '办公耗材', 'http://china.makepolo.com/list/spc4144/');
INSERT INTO `ad_category` VALUES (147, 145, '办公家具', 100, '办公家具', '办公家具', 'http://china.makepolo.com/list/spc4212/');
INSERT INTO `ad_category` VALUES (148, 145, '复印、打印、扫描设备', 100, '复印、打印、扫描设备', '复印、打印、扫描设备', 'http://china.makepolo.com/list/spc3410/');
INSERT INTO `ad_category` VALUES (149, 145, '整理、装订设备', 100, '整理、装订设备', '整理、装订设备', 'http://china.makepolo.com/list/spc3411/');
INSERT INTO `ad_category` VALUES (150, 145, '投影、显示设备', 100, '投影、显示设备', '投影、显示设备', 'http://china.makepolo.com/list/spc3412/');
INSERT INTO `ad_category` VALUES (151, 145, '办公通讯设备', 100, '办公通讯设备', '办公通讯设备', 'http://china.makepolo.com/list/spc3413/');
INSERT INTO `ad_category` VALUES (152, 145, '行政、财务设备', 100, '行政、财务设备', '行政、财务设备', 'http://china.makepolo.com/list/spc3414/');
INSERT INTO `ad_category` VALUES (153, 145, '电脑配件与外设', 100, '电脑配件与外设', '电脑配件与外设', 'http://china.makepolo.com/list/spc3416/');
INSERT INTO `ad_category` VALUES (154, 145, '软件产品', 100, '软件产品', '软件产品', 'http://china.makepolo.com/list/spc3417/');
INSERT INTO `ad_category` VALUES (155, 145, '整机', 100, '整机', '整机', 'http://china.makepolo.com/list/spc4291/');
INSERT INTO `ad_category` VALUES (156, 145, '会议系统', 100, '会议系统', '会议系统', 'http://china.makepolo.com/list/spc148351/');
INSERT INTO `ad_category` VALUES (157, 145, '清洁设备', 100, '清洁设备', '清洁设备', 'http://china.makepolo.com/list/spc149696/');
INSERT INTO `ad_category` VALUES (158, 0, '交通运输', 100, '交通运输', '交通运输', 'http://china.makepolo.com/list/d12/');
INSERT INTO `ad_category` VALUES (159, 158, '机动车', 100, '机动车', '机动车', 'http://china.makepolo.com/list/spc3698/');
INSERT INTO `ad_category` VALUES (160, 158, '电动车', 100, '电动车', '电动车', 'http://china.makepolo.com/list/spc148424/');
INSERT INTO `ad_category` VALUES (161, 158, '非机动车', 100, '非机动车', '非机动车', 'http://china.makepolo.com/list/spc3699/');
INSERT INTO `ad_category` VALUES (162, 158, '非机动车配件', 100, '非机动车配件', '非机动车配件', 'http://china.makepolo.com/list/spc148532/');
INSERT INTO `ad_category` VALUES (163, 158, '加油站设备', 100, '加油站设备', '加油站设备', 'http://china.makepolo.com/list/spc147906/');
INSERT INTO `ad_category` VALUES (164, 158, '停车场设备', 100, '停车场设备', '停车场设备', 'http://china.makepolo.com/list/spc181/');
INSERT INTO `ad_category` VALUES (165, 158, '道路交通管理设施', 100, '道路交通管理设施', '道路交通管理设施', 'http://china.makepolo.com/list/spc3700/');
INSERT INTO `ad_category` VALUES (166, 158, '轨道铁路线路机械', 100, '轨道铁路线路机械', '轨道铁路线路机械', 'http://china.makepolo.com/list/spc3701/');
INSERT INTO `ad_category` VALUES (167, 158, '港口装卸机械', 100, '港口装卸机械', '港口装卸机械', 'http://china.makepolo.com/list/spc3854/');
INSERT INTO `ad_category` VALUES (168, 158, '船舶及航道设备', 100, '船舶及航道设备', '船舶及航道设备', 'http://china.makepolo.com/list/spc3702/');
INSERT INTO `ad_category` VALUES (169, 158, '机场专用设备', 100, '机场专用设备', '机场专用设备', 'http://china.makepolo.com/list/spc3856/');
INSERT INTO `ad_category` VALUES (170, 158, '潜水及水下救捞装备', 100, '潜水及水下救捞装备', '潜水及水下救捞装备', 'http://china.makepolo.com/list/spc3851/');
INSERT INTO `ad_category` VALUES (171, 0, '原料辅料/初加工材料', 100, '原料辅料/初加工材料', '原料辅料/初加工材料', 'http://china.makepolo.com/list/d2/');
INSERT INTO `ad_category` VALUES (172, 171, '矿业', 100, '矿业', '矿业', 'http://china.makepolo.com/list/spc2402/');
INSERT INTO `ad_category` VALUES (173, 171, '钢铁冶金', 100, '钢铁冶金', '钢铁冶金', 'http://china.makepolo.com/list/spc5084/');
INSERT INTO `ad_category` VALUES (174, 171, '有色金属及加工材料', 100, '有色金属及加工材料', '有色金属及加工材料', 'http://china.makepolo.com/list/spc5086/');
INSERT INTO `ad_category` VALUES (175, 171, '非金属材料及制品', 100, '非金属材料及制品', '非金属材料及制品', 'http://china.makepolo.com/list/spc145328/');
INSERT INTO `ad_category` VALUES (176, 171, '橡胶、塑料', 100, '橡胶、塑料', '橡胶、塑料', 'http://china.makepolo.com/list/spc27348/');
INSERT INTO `ad_category` VALUES (177, 171, '催化剂、助剂、填充剂', 100, '催化剂、助剂、填充剂', '催化剂、助剂、填充剂', 'http://china.makepolo.com/list/spc26118/');
INSERT INTO `ad_category` VALUES (178, 171, '纸浆', 100, '纸浆', '纸浆', 'http://china.makepolo.com/list/spc145374/');
INSERT INTO `ad_category` VALUES (179, 171, '纸张', 100, '纸张', '纸张', 'http://china.makepolo.com/list/spc149492/');
INSERT INTO `ad_category` VALUES (180, 171, '印刷辅料', 100, '印刷辅料', '印刷辅料', 'http://china.makepolo.com/list/spc147889/');
INSERT INTO `ad_category` VALUES (181, 171, '包装材料及容器', 100, '包装材料及容器', '包装材料及容器', 'http://china.makepolo.com/list/spc25892/');
INSERT INTO `ad_category` VALUES (182, 171, '有机、无机化学原料', 100, '有机、无机化学原料', '有机、无机化学原料', 'http://china.makepolo.com/list/spc27038/');
INSERT INTO `ad_category` VALUES (183, 171, '精细化学品', 100, '精细化学品', '精细化学品', 'http://china.makepolo.com/list/spc145395/');
INSERT INTO `ad_category` VALUES (184, 171, '燃料', 100, '燃料', '燃料', 'http://china.makepolo.com/list/spc27406/');
INSERT INTO `ad_category` VALUES (185, 171, '石油制品', 100, '石油制品', '石油制品', 'http://china.makepolo.com/list/spc148495/');
INSERT INTO `ad_category` VALUES (186, 171, '煤化工产品', 100, '煤化工产品', '煤化工产品', 'http://china.makepolo.com/list/spc149111/');
INSERT INTO `ad_category` VALUES (187, 171, '吸附剂、干燥剂', 100, '吸附剂、干燥剂', '吸附剂、干燥剂', 'http://china.makepolo.com/list/spc26403/');
INSERT INTO `ad_category` VALUES (188, 171, '纺织皮革原料辅料', 100, '纺织皮革原料辅料', '纺织皮革原料辅料', 'http://china.makepolo.com/list/spc27907/');
INSERT INTO `ad_category` VALUES (189, 171, '纤维', 100, '纤维', '纤维', 'http://china.makepolo.com/list/spc27468/');
INSERT INTO `ad_category` VALUES (190, 171, '电子与功能材料', 100, '电子与功能材料', '电子与功能材料', 'http://china.makepolo.com/list/spc25872/');
INSERT INTO `ad_category` VALUES (191, 171, '复制、信息化学品', 100, '复制、信息化学品', '复制、信息化学品', 'http://china.makepolo.com/list/spc145573/');
INSERT INTO `ad_category` VALUES (192, 171, '过滤件', 100, '过滤件', '过滤件', 'http://china.makepolo.com/list/spc4294/');
INSERT INTO `ad_category` VALUES (193, 171, '废料', 100, '废料', '废料', 'http://china.makepolo.com/list/spc146529/');
INSERT INTO `ad_category` VALUES (194, 171, '喷涂溅射材料', 100, '喷涂溅射材料', '喷涂溅射材料', 'http://china.makepolo.com/list/spc148040/');
INSERT INTO `ad_category` VALUES (195, 171, '电光源材料', 100, '电光源材料', '电光源材料', 'http://china.makepolo.com/list/spc148032/');
INSERT INTO `ad_category` VALUES (196, 171, '商标/标签/标识', 100, '商标/标签/标识', '商标/标签/标识', 'http://china.makepolo.com/list/spc149797/');
INSERT INTO `ad_category` VALUES (197, 171, '防伪产品', 100, '防伪产品', '防伪产品', 'http://china.makepolo.com/list/spc147878/');
INSERT INTO `ad_category` VALUES (198, 171, '农产品', 100, '农产品', '农产品', 'http://china.makepolo.com/list/spc2042/');
INSERT INTO `ad_category` VALUES (199, 171, '农用物资', 100, '农用物资', '农用物资', 'http://china.makepolo.com/list/spc25866/');
INSERT INTO `ad_category` VALUES (200, 171, '动物与林产化学品', 100, '动物与林产化学品', '动物与林产化学品', 'http://china.makepolo.com/list/spc145334/');
INSERT INTO `ad_category` VALUES (201, 171, '医药及生化制品', 100, '医药及生化制品', '医药及生化制品', 'http://china.makepolo.com/list/spc27834/');
INSERT INTO `ad_category` VALUES (202, 171, '首饰辅料', 100, '首饰辅料', '首饰辅料', 'http://china.makepolo.com/list/spc28167/');
INSERT INTO `ad_category` VALUES (203, 0, '建材与装饰材料', 100, '建材与装饰材料', '建材与装饰材料', 'http://china.makepolo.com/list/d1/');
INSERT INTO `ad_category` VALUES (204, 203, '建筑钢材、有色建材', 100, '建筑钢材、有色建材', '建筑钢材、有色建材', 'http://china.makepolo.com/list/spc2645/');
INSERT INTO `ad_category` VALUES (205, 203, '管材、管件', 100, '管材、管件', '管材、管件', 'http://china.makepolo.com/list/spc5822/');
INSERT INTO `ad_category` VALUES (206, 203, '玻璃', 100, '玻璃', '玻璃', 'http://china.makepolo.com/list/spc4573/');
INSERT INTO `ad_category` VALUES (207, 203, '陶瓷瓷砖', 100, '陶瓷瓷砖', '陶瓷瓷砖', 'http://china.makepolo.com/list/spc4861/');
INSERT INTO `ad_category` VALUES (208, 203, '金属结构体', 100, '金属结构体', '金属结构体', 'http://china.makepolo.com/list/spc26561/');
INSERT INTO `ad_category` VALUES (209, 203, '结构板材、隔断', 100, '结构板材、隔断', '结构板材、隔断', 'http://china.makepolo.com/list/spc5971/');
INSERT INTO `ad_category` VALUES (210, 203, '施工材料', 100, '施工材料', '施工材料', 'http://china.makepolo.com/list/spc27242/');
INSERT INTO `ad_category` VALUES (211, 203, '土工合成材料', 100, '土工合成材料', '土工合成材料', 'http://china.makepolo.com/list/spc26426/');
INSERT INTO `ad_category` VALUES (212, 203, '保温吸声材料', 100, '保温吸声材料', '保温吸声材料', 'http://china.makepolo.com/list/spc5073/');
INSERT INTO `ad_category` VALUES (213, 203, '防水材料', 100, '防水材料', '防水材料', 'http://china.makepolo.com/list/spc5135/');
INSERT INTO `ad_category` VALUES (214, 203, '防火耐火材料', 100, '防火耐火材料', '防火耐火材料', 'http://china.makepolo.com/list/spc5326/');
INSERT INTO `ad_category` VALUES (215, 203, '耐腐蚀、防辐射材料', 100, '耐腐蚀、防辐射材料', '耐腐蚀、防辐射材料', 'http://china.makepolo.com/list/spc5357/');
INSERT INTO `ad_category` VALUES (216, 203, '水泥与混凝土', 100, '水泥与混凝土', '水泥与混凝土', 'http://china.makepolo.com/list/spc1616/');
INSERT INTO `ad_category` VALUES (217, 203, '石材', 100, '石材', '石材', 'http://china.makepolo.com/list/spc26090/');
INSERT INTO `ad_category` VALUES (218, 203, '砂子、灰、石膏', 100, '砂子、灰、石膏', '砂子、灰、石膏', 'http://china.makepolo.com/list/spc3253/');
INSERT INTO `ad_category` VALUES (219, 203, '砖、瓦、砌块', 100, '砖、瓦、砌块', '砖、瓦、砌块', 'http://china.makepolo.com/list/spc2791/');
INSERT INTO `ad_category` VALUES (220, 203, '木材和竹材', 100, '木材和竹材', '木材和竹材', 'http://china.makepolo.com/list/spc2040/');
INSERT INTO `ad_category` VALUES (221, 203, '橡塑及纤维复合建材', 100, '橡塑及纤维复合建材', '橡塑及纤维复合建材', 'http://china.makepolo.com/list/spc27022/');
INSERT INTO `ad_category` VALUES (222, 203, '装饰装修材料', 100, '装饰装修材料', '装饰装修材料', 'http://china.makepolo.com/list/spc5970/');
INSERT INTO `ad_category` VALUES (223, 203, '建筑涂料', 100, '建筑涂料', '建筑涂料', 'http://china.makepolo.com/list/spc4998/');
INSERT INTO `ad_category` VALUES (224, 203, '建筑胶粘剂', 100, '建筑胶粘剂', '建筑胶粘剂', 'http://china.makepolo.com/list/spc5504/');
INSERT INTO `ad_category` VALUES (225, 203, '防护、市政设施', 100, '防护、市政设施', '防护、市政设施', 'http://china.makepolo.com/list/spc26518/');
INSERT INTO `ad_category` VALUES (226, 203, '水暖、卫浴、洁具', 100, '水暖、卫浴、洁具', '水暖、卫浴、洁具', 'http://china.makepolo.com/list/spc26094/');
INSERT INTO `ad_category` VALUES (227, 203, '灯具灯饰', 100, '灯具灯饰', '灯具灯饰', 'http://china.makepolo.com/list/spc3122/');
INSERT INTO `ad_category` VALUES (228, 203, '厨房、橱柜', 100, '厨房、橱柜', '厨房、橱柜', 'http://china.makepolo.com/list/spc145725/');
INSERT INTO `ad_category` VALUES (229, 203, '门窗、楼梯', 100, '门窗、楼梯', '门窗、楼梯', 'http://china.makepolo.com/list/spc27347/');
INSERT INTO `ad_category` VALUES (230, 203, '场地、户外材料', 100, '场地、户外材料', '场地、户外材料', 'http://china.makepolo.com/list/spc26233/');
INSERT INTO `ad_category` VALUES (231, 203, '预制建筑物', 100, '预制建筑物', '预制建筑物', 'http://china.makepolo.com/list/spc26564/');
INSERT INTO `ad_category` VALUES (232, 203, '园艺花卉', 100, '园艺花卉', '园艺花卉', 'http://china.makepolo.com/list/spc2188/');
INSERT INTO `ad_category` VALUES (233, 203, '绿化苗木', 100, '绿化苗木', '绿化苗木', 'http://china.makepolo.com/list/spc2187/');
INSERT INTO `ad_category` VALUES (234, 203, '园林设施', 100, '园林设施', '园林设施', 'http://china.makepolo.com/list/spc26513/');
INSERT INTO `ad_category` VALUES (235, 203, '景观水体', 100, '景观水体', '景观水体', 'http://china.makepolo.com/list/spc3781/');
INSERT INTO `ad_category` VALUES (236, 203, '古建筑材料', 100, '古建筑材料', '古建筑材料', 'http://china.makepolo.com/list/spc5371/');
INSERT INTO `ad_category` VALUES (237, 0, '五金零部件/备品备件', 100, '五金零部件/备品备件', '五金零部件/备品备件', 'http://china.makepolo.com/list/d3/');
INSERT INTO `ad_category` VALUES (238, 237, '通用五金配件', 100, '通用五金配件', '通用五金配件', 'http://china.makepolo.com/list/spc2603/');
INSERT INTO `ad_category` VALUES (239, 237, '紧固件和连接件', 100, '紧固件和连接件', '紧固件和连接件', 'http://china.makepolo.com/list/spc97/');
INSERT INTO `ad_category` VALUES (240, 237, '管件', 100, '管件', '管件', 'http://china.makepolo.com/list/spc2572/');
INSERT INTO `ad_category` VALUES (241, 237, '模具五金配件', 100, '模具五金配件', '模具五金配件', 'http://china.makepolo.com/list/spc2749/');
INSERT INTO `ad_category` VALUES (242, 237, '机床附件', 100, '机床附件', '机床附件', 'http://china.makepolo.com/list/spc5325/');
INSERT INTO `ad_category` VALUES (243, 237, '传动件', 100, '传动件', '传动件', 'http://china.makepolo.com/list/spc98/');
INSERT INTO `ad_category` VALUES (244, 237, '轴承', 100, '轴承', '轴承', 'http://china.makepolo.com/list/spc2468/');
INSERT INTO `ad_category` VALUES (245, 237, '工业皮带', 100, '工业皮带', '工业皮带', 'http://china.makepolo.com/list/spc150458/');
INSERT INTO `ad_category` VALUES (246, 237, '冲压五金配件', 100, '冲压五金配件', '冲压五金配件', 'http://china.makepolo.com/list/spc2751/');
INSERT INTO `ad_category` VALUES (247, 237, '焊接件', 100, '焊接件', '焊接件', 'http://china.makepolo.com/list/spc5401/');
INSERT INTO `ad_category` VALUES (248, 237, '弹簧', 100, '弹簧', '弹簧', 'http://china.makepolo.com/list/spc3372/');
INSERT INTO `ad_category` VALUES (249, 237, '金属丝网', 100, '金属丝网', '金属丝网', 'http://china.makepolo.com/list/spc145412/');
INSERT INTO `ad_category` VALUES (250, 237, '液压元件', 100, '液压元件', '液压元件', 'http://china.makepolo.com/list/spc2754/');
INSERT INTO `ad_category` VALUES (251, 237, '气动元件', 100, '气动元件', '气动元件', 'http://china.makepolo.com/list/spc2755/');
INSERT INTO `ad_category` VALUES (252, 237, '电热元件、装置', 100, '电热元件、装置', '电热元件、装置', 'http://china.makepolo.com/list/spc147837/');
INSERT INTO `ad_category` VALUES (253, 237, '电动机', 100, '电动机', '电动机', 'http://china.makepolo.com/list/spc2074/');
INSERT INTO `ad_category` VALUES (254, 237, '过滤件', 100, '过滤件', '过滤件', 'http://china.makepolo.com/list/spc4294/');
INSERT INTO `ad_category` VALUES (255, 237, '密封件', 100, '密封件', '密封件', 'http://china.makepolo.com/list/spc2488/');
INSERT INTO `ad_category` VALUES (256, 237, '减震件', 100, '减震件', '减震件', 'http://china.makepolo.com/list/spc2568/');
INSERT INTO `ad_category` VALUES (257, 237, '锁具', 100, '锁具', '锁具', 'http://china.makepolo.com/list/spc2753/');
INSERT INTO `ad_category` VALUES (258, 237, '塑料制品', 100, '塑料制品', '塑料制品', 'http://china.makepolo.com/list/spc145532/');
INSERT INTO `ad_category` VALUES (259, 237, '橡胶制品', 100, '橡胶制品', '橡胶制品', 'http://china.makepolo.com/list/spc145533/');
INSERT INTO `ad_category` VALUES (260, 237, '家具橱柜五金', 100, '家具橱柜五金', '家具橱柜五金', 'http://china.makepolo.com/list/spc2665/');
INSERT INTO `ad_category` VALUES (261, 237, '门窗五金', 100, '门窗五金', '门窗五金', 'http://china.makepolo.com/list/spc2747/');
INSERT INTO `ad_category` VALUES (262, 237, '水暖卫浴五金', 100, '水暖卫浴五金', '水暖卫浴五金', 'http://china.makepolo.com/list/spc2622/');
INSERT INTO `ad_category` VALUES (263, 237, '服装箱包五金', 100, '服装箱包五金', '服装箱包五金', 'http://china.makepolo.com/list/spc2748/');
INSERT INTO `ad_category` VALUES (264, 237, '船用五金配件', 100, '船用五金配件', '船用五金配件', 'http://china.makepolo.com/list/spc2750/');
INSERT INTO `ad_category` VALUES (265, 237, '幕墙五金配件', 100, '幕墙五金配件', '幕墙五金配件', 'http://china.makepolo.com/list/spc2752/');
INSERT INTO `ad_category` VALUES (266, 0, '电子元器件', 100, '电子元器件', '电子元器件', 'http://china.makepolo.com/list/d4/');
INSERT INTO `ad_category` VALUES (267, 266, '集成电路', 100, '集成电路', '集成电路', 'http://china.makepolo.com/list/spc147794/');
INSERT INTO `ad_category` VALUES (268, 266, '电容器', 100, '电容器', '电容器', 'http://china.makepolo.com/list/spc4380/');
INSERT INTO `ad_category` VALUES (269, 266, '传感器', 100, '传感器', '传感器', 'http://china.makepolo.com/list/spc4383/');
INSERT INTO `ad_category` VALUES (270, 266, '二极管', 100, '二极管', '二极管', 'http://china.makepolo.com/list/spc4384/');
INSERT INTO `ad_category` VALUES (271, 266, '三极管', 100, '三极管', '三极管', 'http://china.makepolo.com/list/spc4385/');
INSERT INTO `ad_category` VALUES (272, 266, '场效应管', 100, '场效应管', '场效应管', 'http://china.makepolo.com/list/spc147002/');
INSERT INTO `ad_category` VALUES (273, 266, '连接器', 100, '连接器', '连接器', 'http://china.makepolo.com/list/spc4456/');
INSERT INTO `ad_category` VALUES (274, 266, '保护器件', 100, '保护器件', '保护器件', 'http://china.makepolo.com/list/spc4393/');
INSERT INTO `ad_category` VALUES (275, 266, '电声器材', 100, '电声器材', '电声器材', 'http://china.makepolo.com/list/spc4391/');
INSERT INTO `ad_category` VALUES (276, 266, '电感元器件', 100, '电感元器件', '电感元器件', 'http://china.makepolo.com/list/spc4382/');
INSERT INTO `ad_category` VALUES (277, 266, '电阻器与电位器', 100, '电阻器与电位器', '电阻器与电位器', 'http://china.makepolo.com/list/spc146679/');
INSERT INTO `ad_category` VALUES (278, 266, '变送器', 100, '变送器', '变送器', 'http://china.makepolo.com/list/spc145943/');
INSERT INTO `ad_category` VALUES (279, 266, '显示器件', 100, '显示器件', '显示器件', 'http://china.makepolo.com/list/spc4398/');
INSERT INTO `ad_category` VALUES (280, 266, '片状元器件', 100, '片状元器件', '片状元器件', 'http://china.makepolo.com/list/spc4394/');
INSERT INTO `ad_category` VALUES (281, 266, '电子电路散热元件', 100, '电子电路散热元件', '电子电路散热元件', 'http://china.makepolo.com/list/spc6062/');
INSERT INTO `ad_category` VALUES (282, 266, '温敏元件', 100, '温敏元件', '温敏元件', 'http://china.makepolo.com/list/spc147013/');
INSERT INTO `ad_category` VALUES (283, 266, '湿敏元件', 100, '湿敏元件', '湿敏元件', 'http://china.makepolo.com/list/spc147044/');
INSERT INTO `ad_category` VALUES (284, 266, '光敏元件', 100, '光敏元件', '光敏元件', 'http://china.makepolo.com/list/spc147027/');
INSERT INTO `ad_category` VALUES (285, 266, '磁敏元件', 100, '磁敏元件', '磁敏元件', 'http://china.makepolo.com/list/spc147083/');
INSERT INTO `ad_category` VALUES (286, 266, '压敏元件', 100, '压敏元件', '压敏元件', 'http://china.makepolo.com/list/spc147050/');
INSERT INTO `ad_category` VALUES (287, 266, '力敏元件', 100, '力敏元件', '力敏元件', 'http://china.makepolo.com/list/spc147077/');
INSERT INTO `ad_category` VALUES (288, 266, '气敏元件', 100, '气敏元件', '气敏元件', 'http://china.makepolo.com/list/spc147112/');
INSERT INTO `ad_category` VALUES (289, 266, '逆变电源/逆变器', 100, '逆变电源/逆变器', '逆变电源/逆变器', 'http://china.makepolo.com/list/spc2935/');
INSERT INTO `ad_category` VALUES (290, 266, '光电器件', 100, '光电器件', '光电器件', 'http://china.makepolo.com/list/spc148261/');
INSERT INTO `ad_category` VALUES (291, 266, '电子与功能器材', 100, '电子与功能器材', '电子与功能器材', 'http://china.makepolo.com/list/spc25872/');
INSERT INTO `ad_category` VALUES (292, 266, '电力半导体器材', 100, '电力半导体器材', '电力半导体器材', 'http://china.makepolo.com/list/spc2942/');
INSERT INTO `ad_category` VALUES (293, 266, '电力集成器材', 100, '电力集成器材', '电力集成器材', 'http://china.makepolo.com/list/spc2944/');
INSERT INTO `ad_category` VALUES (294, 266, '电子五金件', 100, '电子五金件', '电子五金件', 'http://china.makepolo.com/list/spc4399/');
INSERT INTO `ad_category` VALUES (295, 266, '其他电子元器件', 100, '其他电子元器件', '其他电子元器件', 'http://china.makepolo.com/list/spc4401/');
INSERT INTO `ad_category` VALUES (296, 0, '电工电料/线缆照明', 100, '电工电料/线缆照明', '电工电料/线缆照明', 'http://china.makepolo.com/list/d5/');
INSERT INTO `ad_category` VALUES (297, 296, '电工电料', 100, '电工电料', '电工电料', 'http://china.makepolo.com/list/spc3124/');
INSERT INTO `ad_category` VALUES (298, 296, '电线电缆', 100, '电线电缆', '电线电缆', 'http://china.makepolo.com/list/spc3125/');
INSERT INTO `ad_category` VALUES (299, 296, '综合布线与光纤设备', 100, '综合布线与光纤设备', '综合布线与光纤设备', 'http://china.makepolo.com/list/spc148090/');
INSERT INTO `ad_category` VALUES (300, 296, '绝缘材料', 100, '绝缘材料', '绝缘材料', 'http://china.makepolo.com/list/spc3128/');
INSERT INTO `ad_category` VALUES (301, 296, '电光源', 100, '电光源', '电光源', 'http://china.makepolo.com/list/spc3121/');
INSERT INTO `ad_category` VALUES (302, 296, '电光源材料', 100, '电光源材料', '电光源材料', 'http://china.makepolo.com/list/spc148032/');
INSERT INTO `ad_category` VALUES (303, 296, '灯具灯饰', 100, '灯具灯饰', '灯具灯饰', 'http://china.makepolo.com/list/spc3122/');
INSERT INTO `ad_category` VALUES (304, 296, '灯具配件', 100, '灯具配件', '灯具配件', 'http://china.makepolo.com/list/spc3123/');
INSERT INTO `ad_category` VALUES (305, 296, '电池', 100, '电池', '电池', 'http://china.makepolo.com/list/spc3126/');
INSERT INTO `ad_category` VALUES (306, 0, '工具', 100, '工具', '工具', 'http://china.makepolo.com/list/d6/');
INSERT INTO `ad_category` VALUES (307, 306, '通用手工工具', 100, '通用手工工具', '通用手工工具', 'http://china.makepolo.com/list/spc2043/');
INSERT INTO `ad_category` VALUES (308, 306, '钳工管工工具', 100, '钳工管工工具', '钳工管工工具', 'http://china.makepolo.com/list/spc2656/');
INSERT INTO `ad_category` VALUES (309, 306, '切削刀具', 100, '切削刀具', '切削刀具', 'http://china.makepolo.com/list/spc3646/');
INSERT INTO `ad_category` VALUES (310, 306, '磨具磨料', 100, '磨具磨料', '磨具磨料', 'http://china.makepolo.com/list/spc3311/');
INSERT INTO `ad_category` VALUES (311, 306, '农林渔业园艺工具', 100, '农林渔业园艺工具', '农林渔业园艺工具', 'http://china.makepolo.com/list/spc3663/');
INSERT INTO `ad_category` VALUES (312, 306, '土木及金刚石工具', 100, '土木及金刚石工具', '土木及金刚石工具', 'http://china.makepolo.com/list/spc147986/');
INSERT INTO `ad_category` VALUES (313, 306, '电工工具', 100, '电工工具', '电工工具', 'http://china.makepolo.com/list/spc147976/');
INSERT INTO `ad_category` VALUES (314, 306, '布线工具', 100, '布线工具', '布线工具', 'http://china.makepolo.com/list/spc148086/');
INSERT INTO `ad_category` VALUES (315, 306, '线缆铺设工具', 100, '线缆铺设工具', '线缆铺设工具', 'http://china.makepolo.com/list/spc148124/');
INSERT INTO `ad_category` VALUES (316, 306, '气动和液压工具', 100, '气动和液压工具', '气动和液压工具', 'http://china.makepolo.com/list/spc2823/');
INSERT INTO `ad_category` VALUES (317, 306, '起重工具', 100, '起重工具', '起重工具', 'http://china.makepolo.com/list/spc3676/');
INSERT INTO `ad_category` VALUES (318, 306, '电动工具', 100, '电动工具', '电动工具', 'http://china.makepolo.com/list/spc2687/');
INSERT INTO `ad_category` VALUES (319, 306, '焊接辅助设备与工具', 100, '焊接辅助设备与工具', '焊接辅助设备与工具', 'http://china.makepolo.com/list/spc5400/');
INSERT INTO `ad_category` VALUES (320, 306, '喷涂工具', 100, '喷涂工具', '喷涂工具', 'http://china.makepolo.com/list/spc148653/');
INSERT INTO `ad_category` VALUES (321, 306, '夹具治具', 100, '夹具治具', '夹具治具', 'http://china.makepolo.com/list/spc3840/');
INSERT INTO `ad_category` VALUES (322, 306, '工位器具', 100, '工位器具', '工位器具', 'http://china.makepolo.com/list/spc3841/');
INSERT INTO `ad_category` VALUES (323, 306, '汽保工具', 100, '汽保工具', '汽保工具', 'http://china.makepolo.com/list/spc3775/');
INSERT INTO `ad_category` VALUES (324, 306, '润滑工具', 100, '润滑工具', '润滑工具', 'http://china.makepolo.com/list/spc147935/');
INSERT INTO `ad_category` VALUES (325, 306, '防静电、无尘产品', 100, '防静电、无尘产品', '防静电、无尘产品', 'http://china.makepolo.com/list/spc147585/');
INSERT INTO `ad_category` VALUES (326, 306, '工具耗材', 100, '工具耗材', '工具耗材', 'http://china.makepolo.com/list/spc151135/');
INSERT INTO `ad_category` VALUES (327, 306, '物料容器、仓储设备', 100, '物料容器、仓储设备', '物料容器、仓储设备', 'http://china.makepolo.com/list/spc145769/');
INSERT INTO `ad_category` VALUES (328, 306, '搬运车/搬运设备', 100, '搬运车/搬运设备', '搬运车/搬运设备', 'http://china.makepolo.com/list/spc146504/');
INSERT INTO `ad_category` VALUES (329, 306, '量具量仪', 100, '量具量仪', '量具量仪', 'http://china.makepolo.com/list/spc3564/');
INSERT INTO `ad_category` VALUES (330, 306, '美发造型工具', 100, '美发造型工具', '美发造型工具', 'http://china.makepolo.com/list/spc1350/');
INSERT INTO `ad_category` VALUES (331, 306, '救援工具', 100, '救援工具', '救援工具', 'http://china.makepolo.com/list/spc147486/');
INSERT INTO `ad_category` VALUES (332, 306, '光学与配镜工具', 100, '光学与配镜工具', '光学与配镜工具', 'http://china.makepolo.com/list/spc3794/');
INSERT INTO `ad_category` VALUES (333, 306, '消防防爆专用工具', 100, '消防防爆专用工具', '消防防爆专用工具', 'http://china.makepolo.com/list/spc147478/');
INSERT INTO `ad_category` VALUES (334, 306, '钟表工具', 100, '钟表工具', '钟表工具', 'http://china.makepolo.com/list/spc3644/');
INSERT INTO `ad_category` VALUES (335, 0, '文教办公用品', 100, '文教办公用品', '文教办公用品', 'http://china.makepolo.com/list/d149674/');
INSERT INTO `ad_category` VALUES (336, 335, '办公耗材', 100, '办公耗材', '办公耗材', 'http://china.makepolo.com/list/spc4144/');
INSERT INTO `ad_category` VALUES (337, 335, '办公家具', 100, '办公家具', '办公家具', 'http://china.makepolo.com/list/spc4212/');
INSERT INTO `ad_category` VALUES (338, 335, '文具', 100, '文具', '文具', 'http://china.makepolo.com/list/spc980/');
INSERT INTO `ad_category` VALUES (339, 335, '书写笔', 100, '书写笔', '书写笔', 'http://china.makepolo.com/list/spc981/');
INSERT INTO `ad_category` VALUES (340, 335, '美术笔及用品', 100, '美术笔及用品', '美术笔及用品', 'http://china.makepolo.com/list/spc983/');
INSERT INTO `ad_category` VALUES (341, 335, '书写配套用品', 100, '书写配套用品', '书写配套用品', 'http://china.makepolo.com/list/spc982/');
INSERT INTO `ad_category` VALUES (342, 335, '办公用纸', 100, '办公用纸', '办公用纸', 'http://china.makepolo.com/list/spc4279/');
INSERT INTO `ad_category` VALUES (343, 335, '簿、本、册', 100, '簿、本、册', '簿、本、册', 'http://china.makepolo.com/list/spc27968/');
INSERT INTO `ad_category` VALUES (344, 335, '财会用品', 100, '财会用品', '财会用品', 'http://china.makepolo.com/list/spc27972/');
INSERT INTO `ad_category` VALUES (345, 335, '案头用品', 100, '案头用品', '案头用品', 'http://china.makepolo.com/list/spc27973/');
INSERT INTO `ad_category` VALUES (346, 335, '标示用品', 100, '标示用品', '标示用品', 'http://china.makepolo.com/list/spc27974/');
INSERT INTO `ad_category` VALUES (347, 335, '奖励用品', 100, '奖励用品', '奖励用品', 'http://china.makepolo.com/list/spc27976/');
INSERT INTO `ad_category` VALUES (348, 335, '文件管理用品', 100, '文件管理用品', '文件管理用品', 'http://china.makepolo.com/list/spc27969/');
INSERT INTO `ad_category` VALUES (349, 335, '名片管理用品', 100, '名片管理用品', '名片管理用品', 'http://china.makepolo.com/list/spc27970/');
INSERT INTO `ad_category` VALUES (350, 335, '软件产品', 100, '软件产品', '软件产品', 'http://china.makepolo.com/list/spc3417/');
INSERT INTO `ad_category` VALUES (351, 335, '玻璃仪器', 100, '玻璃仪器', '玻璃仪器', 'http://china.makepolo.com/list/spc146763/');
INSERT INTO `ad_category` VALUES (352, 335, '其他类办公用品', 100, '其他类办公用品', '其他类办公用品', 'http://china.makepolo.com/list/spc27977/');
INSERT INTO `ad_category` VALUES (353, 0, '汽摩用品/配件', 100, '汽摩用品/配件', '汽摩用品/配件', 'http://china.makepolo.com/list/d23/');
INSERT INTO `ad_category` VALUES (354, 353, '汽摩用品', 100, '汽摩用品', '汽摩用品', 'http://china.makepolo.com/list/spc5370/');
INSERT INTO `ad_category` VALUES (355, 353, '摩托车配件', 100, '摩托车配件', '摩托车配件', 'http://china.makepolo.com/list/spc5423/');
INSERT INTO `ad_category` VALUES (356, 353, '车身及附件', 100, '车身及附件', '车身及附件', 'http://china.makepolo.com/list/spc5422/');
INSERT INTO `ad_category` VALUES (357, 353, '汽保工具', 100, '汽保工具', '汽保工具', 'http://china.makepolo.com/list/spc3775/');
INSERT INTO `ad_category` VALUES (358, 353, '电器仪表件', 100, '电器仪表件', '电器仪表件', 'http://china.makepolo.com/list/spc5374/');
INSERT INTO `ad_category` VALUES (359, 353, '汽摩轮胎', 100, '汽摩轮胎', '汽摩轮胎', 'http://china.makepolo.com/list/spc148338/');
INSERT INTO `ad_category` VALUES (360, 353, '发动系统', 100, '发动系统', '发动系统', 'http://china.makepolo.com/list/spc5424/');
INSERT INTO `ad_category` VALUES (361, 353, '传动系统', 100, '传动系统', '传动系统', 'http://china.makepolo.com/list/spc5373/');
INSERT INTO `ad_category` VALUES (362, 353, '供给系统', 100, '供给系统', '供给系统', 'http://china.makepolo.com/list/spc5425/');
INSERT INTO `ad_category` VALUES (363, 353, '冷却系统', 100, '冷却系统', '冷却系统', 'http://china.makepolo.com/list/spc5426/');
INSERT INTO `ad_category` VALUES (364, 353, '排气系统', 100, '排气系统', '排气系统', 'http://china.makepolo.com/list/spc5427/');
INSERT INTO `ad_category` VALUES (365, 353, '转向系统', 100, '转向系统', '转向系统', 'http://china.makepolo.com/list/spc5492/');
INSERT INTO `ad_category` VALUES (366, 353, '制动系统', 100, '制动系统', '制动系统', 'http://china.makepolo.com/list/spc5493/');
INSERT INTO `ad_category` VALUES (367, 353, '行走系统', 100, '行走系统', '行走系统', 'http://china.makepolo.com/list/spc150016/');
INSERT INTO `ad_category` VALUES (368, 0, '定制加工', 100, '定制加工', '定制加工', 'http://china.makepolo.com/list/d1450/');
INSERT INTO `ad_category` VALUES (369, 368, '金属加工', 100, '金属加工', '金属加工', 'http://china.makepolo.com/list/spc1467/');
INSERT INTO `ad_category` VALUES (370, 368, '机械加工', 100, '机械加工', '机械加工', 'http://china.makepolo.com/list/spc1467/');
INSERT INTO `ad_category` VALUES (371, 368, '行业专业包装', 100, '行业专业包装', '行业专业包装', 'http://china.makepolo.com/list/spc145595/');
INSERT INTO `ad_category` VALUES (372, 368, '电子加工', 100, '电子加工', '电子加工', 'http://china.makepolo.com/list/spc146019/');
INSERT INTO `ad_category` VALUES (373, 368, '塑料加工', 100, '塑料加工', '塑料加工', 'http://china.makepolo.com/list/spc146029/');
INSERT INTO `ad_category` VALUES (374, 368, '橡胶加工', 100, '橡胶加工', '橡胶加工', 'http://china.makepolo.com/list/spc146030/');
INSERT INTO `ad_category` VALUES (375, 368, '家电数码加工', 100, '家电数码加工', '家电数码加工', 'http://china.makepolo.com/list/spc146078/');
INSERT INTO `ad_category` VALUES (376, 368, '电脑产品加工', 100, '电脑产品加工', '电脑产品加工', 'http://china.makepolo.com/list/spc146076/');
INSERT INTO `ad_category` VALUES (377, 368, '服装服饰加工', 100, '服装服饰加工', '服装服饰加工', 'http://china.makepolo.com/list/spc1472/');
INSERT INTO `ad_category` VALUES (378, 368, '纺织加工', 100, '纺织加工', '纺织加工', 'http://china.makepolo.com/list/spc146043/');
INSERT INTO `ad_category` VALUES (379, 368, '食品饮料加工', 100, '食品饮料加工', '食品饮料加工', 'http://china.makepolo.com/list/spc146092/');
INSERT INTO `ad_category` VALUES (380, 368, '医药保健加工', 100, '医药保健加工', '医药保健加工', 'http://china.makepolo.com/list/spc146068/');
INSERT INTO `ad_category` VALUES (381, 368, '印刷加工', 100, '印刷加工', '印刷加工', 'http://china.makepolo.com/list/spc149037/');
INSERT INTO `ad_category` VALUES (382, 368, '文教用品加工', 100, '文教用品加工', '文教用品加工', 'http://china.makepolo.com/list/spc146085/');
COMMIT;

-- ----------------------------
-- Table structure for ad_config
-- ----------------------------
DROP TABLE IF EXISTS `ad_config`;
CREATE TABLE `ad_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(32) NOT NULL DEFAULT '' COMMENT '配置分组',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '配置标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '配置标识',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '配置类型',
  `value` text NOT NULL COMMENT '默认值',
  `options` text COMMENT '选项值',
  `sort_order` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='配置';

-- ----------------------------
-- Records of ad_config
-- ----------------------------
BEGIN;
INSERT INTO `ad_config` VALUES (1, 'website', '网站logo', 'logo', 'image', '', '', 100, 1);
INSERT INTO `ad_config` VALUES (2, 'website', '网站名称', 'site_name', 'input', 'KevinFei-Blog', '', 100, 1);
INSERT INTO `ad_config` VALUES (3, 'website', '网站标题', 'site_title', 'input', 'KevinFei博客', '', 100, 1);
INSERT INTO `ad_config` VALUES (4, 'website', '网站关键字', 'site_keywords', 'input', 'KevinFei，博客，blog，成长的小白菜，', '', 100, 1);
INSERT INTO `ad_config` VALUES (5, 'website', '网站描述', 'site_description', 'textarea', 'KevinFei，博客管理系统，blog，kevinfei，jingfei，博客，凯文，成长的小白菜', '', 100, 1);
INSERT INTO `ad_config` VALUES (6, 'website', '域名', 'site_host', 'input', 'http://blog.kevinfei.com/', NULL, 100, 1);
INSERT INTO `ad_config` VALUES (7, 'website', '版权信息', 'site_copyright', 'input', '博客后台管理系统-遵循Apache2开源协议-发布', '', 100, 1);
INSERT INTO `ad_config` VALUES (8, 'website', 'ICP备案号', 'site_icp', 'input', '京ICP备16022068号', '', 100, 1);
INSERT INTO `ad_config` VALUES (9, 'website', '统计代码', 'site_code', 'textarea', '<a href=\"https://www.cnzz.com/stat/website.php?web_id=1277360007\" target=\"_blank\" title=\"站长统计\">站长统计</a>', '', 100, 1);
INSERT INTO `ad_config` VALUES (10, 'contact', '公司地址', 'address', 'input', '', '', 100, 1);
INSERT INTO `ad_config` VALUES (11, 'contact', '联系电话', 'tel', 'input', '', '', 100, 1);
INSERT INTO `ad_config` VALUES (12, 'contact', '联系邮箱', 'email', 'input', '', '', 100, 1);
INSERT INTO `ad_config` VALUES (13, 'contact', '公司名称', 'company', 'input', '', '', 100, 1);
COMMIT;

-- ----------------------------
-- Table structure for ad_messageboard
-- ----------------------------
DROP TABLE IF EXISTS `ad_messageboard`;
CREATE TABLE `ad_messageboard` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `mobile` char(20) DEFAULT '' COMMENT '手机',
  `email` varchar(32) NOT NULL DEFAULT '' COMMENT '邮箱',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '留言的url',
  `login_count` int(11) NOT NULL DEFAULT '0' COMMENT '留言次数',
  `comment` varchar(255) DEFAULT NULL COMMENT '留言内容',
  `comment_post_id` int(11) DEFAULT NULL COMMENT '文章id',
  `comment_parent` int(11) DEFAULT NULL COMMENT '回复的留言id',
  `last_login_time` int(11) unsigned DEFAULT '0' COMMENT '最近留言时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0禁用/1启动',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='留言';

-- ----------------------------
-- Records of ad_messageboard
-- ----------------------------
BEGIN;
INSERT INTO `ad_messageboard` VALUES (27, 'kevin', '', '794783766@qq.com', 'http://blog.kevinfei.com', 0, '这篇文章真的很不错！', 70, 0, 0, 1557393786, 1557393786, 1);
INSERT INTO `ad_messageboard` VALUES (28, '凯文', '', '794783766@qq.com', 'http://blog.kevinfei.com', 0, '新改版的博客系统，目前已改版完成。', 68, 0, 0, 1557420953, 1557420953, 1);
INSERT INTO `ad_messageboard` VALUES (29, 'kevinfei', '', '794783766@qq.com', 'blog.kevinfei.com', 0, '循环4次  数组的变化分别是:\r\n\r\n1->    [1,2,3,1]\r\n\r\n2->    [1,2,3,2]\r\n\r\n3->    [1,2,3,3]     第三次value指向最后一个元素3    但是value是全局引用在上次循环指向了最后一个元素  所以value=3的时候 也会把最后一个元素的值改为3\r\n\r\n4->    [1,2,3,3]', 78, 0, 0, 1564626790, 1564626790, 1);
INSERT INTO `ad_messageboard` VALUES (30, '叶子', '', '794783766@qq.com', 'http://blog.kevinfei.com', 0, '学习了，谢谢', 70, 0, 0, 1568790302, 1568790302, 1);
COMMIT;

-- ----------------------------
-- Table structure for ad_product
-- ----------------------------
DROP TABLE IF EXISTS `ad_product`;
CREATE TABLE `ad_product` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `price` varchar(255) NOT NULL DEFAULT '100' COMMENT '排序',
  `name` varchar(255) DEFAULT '' COMMENT '关键字',
  `phone` varchar(255) DEFAULT '' COMMENT '描述',
  `createtime` datetime DEFAULT NULL,
  `purl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of ad_product
-- ----------------------------
BEGIN;
INSERT INTO `ad_product` VALUES (1, 2, 'F343CX蜗轮传动扇形盲板阀/电动盲板阀/液动盲板阀/冶金非标阀门', '380.00元', '永嘉县科申阀门厂', '13587633367\n/\n0577-67997720', '2020-02-18 06:10:12', 'http://china.makepolo.com/product-detail/100353714835.html');
INSERT INTO `ad_product` VALUES (2, 2, '供应高温球阀柱塞阀等特种阀门', '面议', '江阴市文和五金电器经营部', '15052240819\n/\n0510-81611681', '2020-02-18 06:10:12', 'http://china.makepolo.com/product-detail/100503493049.html');
INSERT INTO `ad_product` VALUES (3, 2, 'QT450-10耐磨，耐腐蚀阀门', '1.00元', '临海市鼎星铸造有限公司', '15868601256\n/\n0576-85520211', '2020-02-18 06:10:12', 'http://china.makepolo.com/product-detail/100228015146.html');
INSERT INTO `ad_product` VALUES (4, 2, 'Q41F-6PE 玻璃钢球阀 耐腐蚀阀门', '1750.00元', '浙江高创泵阀有限公司', '13738706958\n/\n0577-67973177', '2020-02-18 06:10:12', 'http://china.makepolo.com/product-detail/100136935080.html');
INSERT INTO `ad_product` VALUES (5, 2, '德国EA阀门', '面议', '北京根炬科技发展有限公司', '13521004452\n/\n010-88457503', '2020-02-18 06:10:13', 'http://china.makepolo.com/product-detail/100311891001.html');
INSERT INTO `ad_product` VALUES (6, 2, '批发供应铜螺纹煤气电磁阀、法兰铸铁煤气电磁阀', '480.00元', '广州市广首阀门机电有限公司', '13533304020\n/\n020-38602289/85698593/85699317', '2020-02-18 06:10:13', 'http://china.makepolo.com/product-detail/100269518413.html');
INSERT INTO `ad_product` VALUES (7, 3, 'CNC龙门式数控机床', '150000元/件', '连云港天梦机械有限公司', '18605261695\n/\n-', '2020-02-18 06:10:13', '//china.makepolo.com/product-detail/101061003977.html');
INSERT INTO `ad_product` VALUES (8, 3, '二手日本兄弟机S500z1加工中心，钻攻中心', '66元/件', '深圳市发菱西数控技术有限公司', '13662569628\n/\n0755-2311872', '2020-02-18 06:10:13', 'http://china.makepolo.com/product-detail/101065049006.html');
INSERT INTO `ad_product` VALUES (9, 3, '东莞车床厂家捷程数控JSWAY排刀式CNC机床CF36 加工速度快10%', '1元/件', '中山市捷程数控机床有限公司', '13715268010\n/\n0755-82862900', '2020-02-18 06:10:14', 'http://china.makepolo.com/product-detail/101064999575.html');
INSERT INTO `ad_product` VALUES (10, 3, 'VMC855加工中心 数控铣床 cnc机床 数控加工中心 厂家直销', '158000元/台', '山东莱欧智能装备有限公司', '18254465449\n/\n0632-5990061', '2020-02-18 06:10:14', 'http://china.makepolo.com/product-detail/101064468632.html');
INSERT INTO `ad_product` VALUES (11, 3, '厂家直销台湾高配数控加工中心 多功能立式加工中心稳定性好', '152000元/件', '滕州市科永达数控机床有限公司', '13280215078\n/\n0632-5505918', '2020-02-18 06:10:14', 'http://china.makepolo.com/product-detail/101064395166.html');
INSERT INTO `ad_product` VALUES (12, 3, '厂家直销1160立式加工中心发那科系统 台湾进口刀库', '145000元/件', '滕州大兴机床有限公司', '13280277936\n/\n0632-5505919', '2020-02-18 06:10:14', 'http://china.makepolo.com/product-detail/101064464098.html');
INSERT INTO `ad_product` VALUES (13, 3, 'cnc五轴联动加工中心雕刻机床 速必胜五轴隼卯数控', '190000元/件', '济南德玛仕自动化科技有限公司', '18654518769\n/\n-', '2020-02-18 06:10:14', 'http://china.makepolo.com/product-detail/101064563987.html');
INSERT INTO `ad_product` VALUES (14, 3, '锐业锋数控 厂家直销 五轴雕刻机', '235000元/件', '济南市历城区锐业锋机械厂', '18668928318\n/\n-', '2020-02-18 06:10:14', 'http://china.makepolo.com/product-detail/101065466411.html');
INSERT INTO `ad_product` VALUES (15, 3, '厚街,佛珠车床, 佛珠机视频优质', '3500元/台', '东莞市国鹰精密机械设备有限公司', '13720321699\n/\n0769-83623889', '2020-02-18 06:10:14', 'http://china.makepolo.com/product-detail/101064644374.html');
INSERT INTO `ad_product` VALUES (16, 3, '保定伟业液压机械厂长期生产钢钎维机械', '10元/件', '清苑县伟业液压机械厂', '13082362195\n/\n0312-8101958', '2020-02-18 06:10:15', 'http://china.makepolo.com/product-detail/101063760128.html');
INSERT INTO `ad_product` VALUES (17, 3, '供应齿轮加工设备，进口数控插齿机，滚齿机，磨齿机', '面议', '佛山市顺德区德吉机械设备有限公司', '15920733965\n/\n-', '2020-02-18 06:10:15', 'http://china.makepolo.com/product-detail/101063702309.html');
INSERT INTO `ad_product` VALUES (18, 3, '轩业CK-30数控机床机械设备 高精度 45°斜床身线轨数控车床', '78000元/件', '山东轩业精密机械有限公司', '13256191730\n/\n0531-82814533', '2020-02-18 06:10:15', 'http://china.makepolo.com/product-detail/101063653897.html');
INSERT INTO `ad_product` VALUES (19, 3, '供应厂家直销xq5032铣床-XQ5032立式铣床', '38000元/件', '山东亚森数控机床有限公司', '13280290850\n/\n-', '2020-02-18 06:10:15', 'http://china.makepolo.com/product-detail/101063030235.html');
INSERT INTO `ad_product` VALUES (20, 3, '上海专业机械加工 各种五金精密件  机械 配件  模具', '1元/件', '上海龙澄金属制品有限公司', '15000114403\n/\n39292402', '2020-02-18 06:10:16', 'http://china.makepolo.com/product-detail/101063451529.html');
INSERT INTO `ad_product` VALUES (21, 3, '厂家直销钢筋滚丝机 建筑工地钢筋套丝机', '4200元/件', '济宁国聚机械有限公司', '13258029618\n/\n-', '2020-02-18 06:10:16', 'http://china.makepolo.com/product-detail/101063570425.html');
INSERT INTO `ad_product` VALUES (22, 3, '卧式刨槽机 高速刨槽机 1250×3200  龙门式刨槽机', '面议', '江苏创恒机械科技有限公司', '15250660299\n/\n-', '2020-02-18 06:10:16', 'http://china.makepolo.com/product-detail/101062376869.html');
INSERT INTO `ad_product` VALUES (23, 3, '铣床配件钻铣床配件 变速箱齿轮配件滕州齿轮大全', '8元/件', '滕州市德沃数控机床有限公司', '13506327322\n/\n0632-5966211', '2020-02-18 06:10:16', 'http://china.makepolo.com/product-detail/101065072534.html');
INSERT INTO `ad_product` VALUES (24, 3, '日本okk-vp600低价处理，在位机台，欢迎您来试机', '300000元/件', '广州艺宝科技有限公司', '18680480101\n/\n-', '2020-02-18 06:10:16', 'http://china.makepolo.com/product-detail/101062017910.html');
INSERT INTO `ad_product` VALUES (25, 3, '天津全自动数控钻孔机', '8.0元/台', '东莞市中创数控设备科技有限公司天津分公司', '15822095075\n/\n-', '2020-02-18 06:10:16', 'http://china.makepolo.com/product-detail/101064098889.html');
INSERT INTO `ad_product` VALUES (26, 3, '多功能钻铣床 数控机床 摇臂立式钻床  效率高厂家直销 整机保修', '95500元/件', '深圳市瑞源勋自动化设备有限公司', '13249396520\n/\n84006891', '2020-02-18 06:10:17', 'http://china.makepolo.com/product-detail/101062342040.html');
INSERT INTO `ad_product` VALUES (27, 3, '骏宇科技立式加工中心855/850数控铣床', '190000元/台', '杭州骏宇科技有限公司', '13968156448\n/\n0571-82789195', '2020-02-18 06:10:17', 'http://china.makepolo.com/product-detail/101061978157.html');
INSERT INTO `ad_product` VALUES (28, 3, '圆柱雕刻机 橄榄核菩提子雕刻机 立体雕刻机', '15000元/件', '济南鼎美克数控机械有限公司', '13220589980\n/\n-', '2020-02-18 06:10:17', 'http://china.makepolo.com/product-detail/101063026258.html');
INSERT INTO `ad_product` VALUES (29, 3, '非标订制龙门式数控钻铣床', '150000元/件', '连云港天梦机械有限公司', '18652701518\n/\n-', '2020-02-18 06:10:17', 'http://china.makepolo.com/product-detail/101061495944.html');
INSERT INTO `ad_product` VALUES (30, 3, '苏州珩磨机生产厂家，认准苏州红业生珩磨机', '面议', '江苏红业生智能科技有限公司', '13913705177\n/\n0512-66098335', '2020-02-18 06:10:17', 'http://china.makepolo.com/product-detail/101060313093.html');
INSERT INTO `ad_product` VALUES (31, 3, '千岛QD520五轴联动数控工具磨床 工厂直销  数控刀具磨床', '590000元/件', '东莞市千岛机械制造有限公司', '13926899797\n/\n0769-85349400', '2020-02-18 06:10:18', 'http://china.makepolo.com/product-detail/101060014157.html');
INSERT INTO `ad_product` VALUES (32, 3, '派克机器DMCC3大三轴数控高速加工中心', '435361元/台', '济南派克机器有限公司', '13188934348\n/\n0531-88977166', '2020-02-18 06:10:18', 'http://china.makepolo.com/product-detail/101060436866.html');
INSERT INTO `ad_product` VALUES (33, 3, '长安千岛QD420四轴数控刀具磨床', '380000元/件', '东莞市志强机械设备有限公司', '13826968726\n/\n85349400', '2020-02-18 06:10:18', 'http://china.makepolo.com/product-detail/101061082033.html');
INSERT INTO `ad_product` VALUES (34, 3, '新款高速铁管冲孔机 液压圆管冲弧机 直销防盗网冲孔机 扶手坡口', '3500元/台', '佛山市广通精诚液压机械有限公司', '18942440360\n/\n0757-86681349', '2020-02-18 06:10:18', 'http://china.makepolo.com/product-detail/101064431504.html');
INSERT INTO `ad_product` VALUES (35, 3, 'VL-855立式加工中心整机', '147000元/件', '山东大侨发展股份有限公司', '13245488808\n/\n0634-8830777', '2020-02-18 06:10:18', 'http://china.makepolo.com/product-detail/101059549729.html');
INSERT INTO `ad_product` VALUES (36, 3, '东泽全电伺服数控冲床DES-300', '580000元/件', '青岛东泽数控科技有限公司', '15763962887\n/\n-', '2020-02-18 06:10:19', 'http://china.makepolo.com/product-detail/101059213631.html');
INSERT INTO `ad_product` VALUES (37, 3, '供应高速液压冲床，防盗网冲孔机，锌钢护栏冲孔机', '5800元/台', '佛山市广通精诚液压有限公司', '15816952855\n/\n0757-86681349', '2020-02-18 06:10:19', 'http://china.makepolo.com/product-detail/101059806755.html');
INSERT INTO `ad_product` VALUES (38, 3, '重型高精度双端面研磨机刀具2MK84891B-DJ研磨机生产厂家', '455555元/台', '洛阳聚享新科智能科技有限公司', '18338124395\n/\n0379-60116019', '2020-02-18 06:10:19', 'http://china.makepolo.com/product-detail/101058615167.html');
INSERT INTO `ad_product` VALUES (39, 3, '供应台湾3号炮塔式数显铣床 3H', '40000元/件', '东莞市荣田精密机械有限公司', '13650131911\n/\n0769-81871911', '2020-02-18 06:10:19', 'http://china.makepolo.com/product-detail/101057759048.html');
INSERT INTO `ad_product` VALUES (40, 3, '阀门专用加工设备 水泵 消防栓 三通管件专用机床 数控车床 钻床', '99000元/件', '河北禹创重工机械有限公司', '13111778751\n/\n0317-8337982', '2020-02-18 06:10:19', 'http://china.makepolo.com/product-detail/101057140152.html');
INSERT INTO `ad_product` VALUES (41, 3, '专业生产自动数控车床 小五金加工车床 效率高', '53800元/台', '宁波市鄞州邱隘海鼎机械厂', '18067229182\n/\n0574-88396117', '2020-02-18 06:10:19', 'http://china.makepolo.com/product-detail/101057046742.html');
INSERT INTO `ad_product` VALUES (42, 3, '厂家直销0640数控车床卧式高精度数控车床', '5000元/件', '邢台凌盛机械制造有限公司', '13363712671\n/\n0319-7623926', '2020-02-18 06:10:20', 'http://china.makepolo.com/product-detail/101056987688.html');
INSERT INTO `ad_product` VALUES (43, 3, '钢筋直螺纹剥肋滚丝机 建筑工地钢筋套丝机', '4850元/台', '济宁方诚工矿设备有限公司', '15265875059\n/\n0537-2246996', '2020-02-18 06:10:20', 'http://china.makepolo.com/product-detail/101064697046.html');
INSERT INTO `ad_product` VALUES (44, 3, '远诚数控45D高精密数控车床', '面议', '东莞市远诚数控科技有限公司', '18819505909\n/\n-', '2020-02-18 06:10:20', 'http://china.makepolo.com/product-detail/101056488540.html');
INSERT INTO `ad_product` VALUES (45, 3, '霍夫勒RAPID 1250成型砂轮磨齿机', '面议', '温州迈欧克机电设备有限公司', '18124298181\n/\n0577-86880577', '2020-02-18 06:10:20', 'http://china.makepolo.com/product-detail/101056742577.html');
INSERT INTO `ad_product` VALUES (46, 4, '供应JA23--100锻压机床', '面议', '淄博市淄川机床厂', '13806485119\n/\n0533-5410671', '2020-02-18 06:10:21', 'http://china.makepolo.com/product-detail/100442890644.html');
INSERT INTO `ad_product` VALUES (47, 4, 'JB23-100T开式可倾压力机 冲床 锻压机床', '52000.00元', '南京中辉锻压机床制造厂（普通合伙）', '18761621616\n/\n025-57277855', '2020-02-18 06:10:21', 'http://china.makepolo.com/product-detail/100285568261.html');
INSERT INTO `ad_product` VALUES (48, 4, '厂家推荐 供应锻压机床', '100000.00元', '余姚市吉德惠铜压铸厂', '13705847698\n/\n0574-62585220', '2020-02-18 06:10:21', 'http://china.makepolo.com/product-detail/100312173497.html');
INSERT INTO `ad_product` VALUES (49, 4, '供应二手闭式单点压力机/630T冲床/俄罗斯锻压机床', '55000元/台', '东宁泰瑞贸易有限公司', '18606777707\n/\n0453-3637335', '2020-02-18 06:10:22', 'http://china.makepolo.com/product-detail/101037289978.html');
INSERT INTO `ad_product` VALUES (50, 4, '安徽名牌 JB23-25型冲床压力机锻压机床', '12000.00元', '马鞍山市环锐重工机械制造有限公司', '15955516252\n/\n0555-2925298', '2020-02-18 06:10:22', 'http://china.makepolo.com/product-detail/100342086191.html');
INSERT INTO `ad_product` VALUES (51, 4, '龙门型钢板整平及弯曲成型专用液压机 ，自动液压机，锻压机床', '面议', '无锡大帝液压机械有限公司', '13771518561\n/\n0510-83383808', '2020-02-18 06:10:22', 'http://china.makepolo.com/product-detail/100450574759.html');
INSERT INTO `ad_product` VALUES (52, 4, '我厂热销卷锥体中型卷板机 锻压机床', '面议', '桓台县果里镇宏泰锻压机床厂', '13589585016\n/\n0533-7975628', '2020-02-18 06:10:22', 'http://china.makepolo.com/product-detail/100217736711.html');
INSERT INTO `ad_product` VALUES (53, 4, '现货俄罗斯6300吨热模锻压力机 二手K8548B锻压机床', '888元/台', '浙江鼎能机械制造有限公司', '18738004640\n/\n0577-58127366', '2020-02-18 06:10:22', 'http://china.makepolo.com/product-detail/101060159326.html');
INSERT INTO `ad_product` VALUES (54, 4, '维修定制锻压机床摩擦压力机', '3333.00元', '青岛蜗牛机械有限公司', '13963928249\n/\n0532-82299525', '2020-02-18 06:10:22', 'http://china.makepolo.com/product-detail/100289857897.html');
INSERT INTO `ad_product` VALUES (55, 4, '供应剪板机 机械剪板机 电动剪板机 脚踏式剪板机 小型电动剪板机', '16000.00元', '马鞍山市旭天机床制造有限公司', '18605551480\n/\n0555-6775189', '2020-02-18 06:10:22', 'http://china.makepolo.com/product-detail/100355314541.html');
INSERT INTO `ad_product` VALUES (56, 4, '供应 JB23-25吨开式可倾压力机(图) 锻压机床 四柱液压机', '13000.00元', '马鞍山市金宇冲压机床厂', '13965546410\n/\n0555-6064936', '2020-02-18 06:10:23', 'http://china.makepolo.com/product-detail/100462437332.html');
INSERT INTO `ad_product` VALUES (57, 4, '高密锻压机床机械压力机锻压机械冲床', '200000元/件', '山东省高密市东辰机械制造有限公司', '13863689999\n/\n0536-2869928', '2020-02-18 06:10:23', 'http://china.makepolo.com/product-detail/101061307777.html');
INSERT INTO `ad_product` VALUES (58, 4, '供应JZ23高性能开式可倾压力机 锻压机床 冲床', '43200.00元', '浙江博仑高精机械有限公司', '15158259588\n/\n0575-83362228', '2020-02-18 06:10:23', 'http://china.makepolo.com/product-detail/100468005041.html');
INSERT INTO `ad_product` VALUES (59, 4, '厂家生产 高品质C41-75kg空气锤 锻压机床 电动空气锤', '35000.00元', '滕州宏铭机床有限公司', '13475245243\n/\n0632-5615397/13666328630', '2020-02-18 06:10:23', 'http://china.makepolo.com/product-detail/100460382348.html');
INSERT INTO `ad_product` VALUES (60, 4, '厂家热销 开式锻压机床冲床 J-23-6.3开式可倾压力机', '5700.00元', '浙江双穗锻压机床有限公司', '13736358088\n/\n0577-65270158', '2020-02-18 06:10:23', 'http://china.makepolo.com/product-detail/100212111396.html');
INSERT INTO `ad_product` VALUES (61, 4, '供应 手动压力机 锻压机床 压力机 二手压力 冲压设备 摩擦压力机', '1000.00元', '辽阳锻压机床备件销售处', '13081783303\n/\n0419-2146176', '2020-02-18 06:10:23', 'http://china.makepolo.com/product-detail/100044847130.html');
INSERT INTO `ad_product` VALUES (62, 4, '供应变频节能复合材料成型液压机 湖州液压机 四柱液压机专业制造', '170000.00元', '湖州鑫科锻压机床有限公司', '13967295257\n/\n0572-2698886', '2020-02-18 06:10:23', 'http://china.makepolo.com/product-detail/100356536853.html');
INSERT INTO `ad_product` VALUES (63, 4, '供应JS23-25T冲床（锻压机床、冲床系列设备）', '面议', '高密三江机械制造有限公司', '15965038999\n/\n0536-2582133', '2020-02-18 06:10:23', 'http://china.makepolo.com/product-detail/100394551721.html');
INSERT INTO `ad_product` VALUES (64, 4, '供应优质重型锻压机床设备C41-75kg双体系列空气锤（图）', '36000.00元', '滕州市龙阳弘发机床厂', '13475247524\n/\n0632-2034129', '2020-02-18 06:10:23', 'http://china.makepolo.com/product-detail/100214129196.html');
INSERT INTO `ad_product` VALUES (65, 4, '南京双力锻压机床 Q11机械剪板机', '面议', '南京双力锻压机床有限公司', '13690355830\n/\n025-57263775', '2020-02-18 06:10:24', 'http://china.makepolo.com/product-detail/100156233704.html');
INSERT INTO `ad_product` VALUES (66, 4, '转让2.5米二手折弯机一台', '面议', '东莞市凤岗新鸿翔机械设备经营部', '13929255256\n/\n0769-87883455', '2020-02-18 06:10:24', 'http://china.makepolo.com/product-detail/100141036432.html');
INSERT INTO `ad_product` VALUES (67, 4, '剪板机折弯机卷板机扫地机', '面议', '南通铭德机床有限公司', '15371923336\n/\n0513-88212192', '2020-02-18 06:10:24', 'http://china.makepolo.com/product-detail/100084285990.html');
INSERT INTO `ad_product` VALUES (68, 4, '供应液压机 单柱式六台联动液压机 滕州锻压机床二厂', '1000000.00元', '山东滕州市锻压机床二厂', '18600033194\n/\n 0632 5512006', '2020-02-18 06:10:24', 'http://china.makepolo.com/product-detail/100383222998.html');
INSERT INTO `ad_product` VALUES (69, 4, '专业生产电动剪板机、脚踏剪板机等大型机床', '65000.00元', '马鞍山奇锋刀模具厂', '13515553666\n/\n0555-6761149', '2020-02-18 06:10:24', 'http://china.makepolo.com/product-detail/100434802430.html');
INSERT INTO `ad_product` VALUES (70, 4, '沃得锻压机床深圳代理，吨位齐全，价格优惠', '100000.00元', '深圳市恒冠精密机械有限公司', '13723433842\n/\n0755-18124795613', '2020-02-18 06:10:24', 'http://china.makepolo.com/product-detail/100397927901.html');
INSERT INTO `ad_product` VALUES (71, 4, '厂家直销 12吨 小型冲床 锻压机床', '2800.00元', '孙恺', '13012718101\n/\n0533-5411816', '2020-02-18 06:10:24', 'http://china.makepolo.com/product-detail/100249154894.html');
INSERT INTO `ad_product` VALUES (72, 4, '多种型号 欢迎订购 专业供应压力机, 锻压机床 品质保证', '面议', '瑞安市瑞泰冲压机械厂', '13705786055\n/\n0577-65209055', '2020-02-18 06:10:25', 'http://china.makepolo.com/product-detail/100475999834.html');
INSERT INTO `ad_product` VALUES (73, 4, '黔南锻压机床 Q11Y—系列液压闸式剪板机', '面议', '广州市黄埔险峰黔南机床总汇', '13922242703\n/\n020-82292672', '2020-02-18 06:10:25', 'http://china.makepolo.com/product-detail/100285948887.html');
INSERT INTO `ad_product` VALUES (74, 4, '厦门锻压机床有限公司 J21M-200T 气动冲床', '54元', '沈阳一机4S店', '15816839156\n/\n0769-33219199', '2020-02-18 06:10:25', 'http://china.makepolo.com/product-detail/100197520092.html');
INSERT INTO `ad_product` VALUES (75, 4, '厂家推荐 供应锻压机床', '100000.00元', '余姚市吉德惠铜压铸厂', '13705847698\n/\n0574-62585220', '2020-02-18 06:10:25', 'http://china.makepolo.com/product-detail/100312480906.html');
INSERT INTO `ad_product` VALUES (76, 4, '安徽名牌 J21S-63型冲床压力机锻压机床', '35000.00元', '马鞍山市环锐重工机械制造有限公司', '15955516252\n/\n0555-2925298', '2020-02-18 06:10:25', 'http://china.makepolo.com/product-detail/100342086200.html');
INSERT INTO `ad_product` VALUES (77, 4, '供400摩擦压力机 及 锻压机床配件', '3333.00元', '青岛蜗牛机械有限公司', '13963928249\n/\n0532-82299525', '2020-02-18 06:10:25', 'http://china.makepolo.com/product-detail/100287740830.html');
INSERT INTO `ad_product` VALUES (78, 4, '厂家热销 锻压机床冲床 J23-25开式可倾压力机', '15500.00元', '浙江双穗锻压机床有限公司', '13736358088\n/\n0577-65270158', '2020-02-18 06:10:25', 'http://china.makepolo.com/product-detail/100212084678.html');
INSERT INTO `ad_product` VALUES (79, 4, '供应： 锻压机床 二手 冲床', '5000.00元', '辽阳锻压机床备件销售处', '13081783303\n/\n0419-2146176', '2020-02-18 06:10:25', 'http://china.makepolo.com/product-detail/100044937509.html');
INSERT INTO `ad_product` VALUES (80, 4, '供应锻压机床C41-16KG空气锤 出口品质 气锤 国标品质', '5900.00元', '滕州宏铭机床有限公司', '15965117685\n/\n0632-5615397/13666328630', '2020-02-18 06:10:26', 'http://china.makepolo.com/product-detail/100466210802.html');
INSERT INTO `ad_product` VALUES (81, 4, '供应优质重型锻压机床设备C41-75kg、150kg系列空气锤', '36000.00元', '滕州市龙阳弘发机床厂', '13475247524\n/\n0632-2034129', '2020-02-18 06:10:26', 'http://china.makepolo.com/product-detail/100211808651.html');
INSERT INTO `ad_product` VALUES (82, 4, '供应Y79汽车刹车片成型液压机 复合材料成型 加热 湖州液压机', '450000.00元', '湖州鑫科锻压机床有限公司', '13967295257\n/\n0572-2698886', '2020-02-18 06:10:26', 'http://china.makepolo.com/product-detail/100356536834.html');
INSERT INTO `ad_product` VALUES (83, 4, 'Y32系列橡塑制品液压机，大帝液压，锻压机床，液压机生产商', '面议', '无锡大帝液压机械有限公司', '13771518561\n/\n0510-83383808', '2020-02-18 06:10:28', 'http://china.makepolo.com/product-detail/100450574768.html');
INSERT INTO `ad_product` VALUES (84, 4, '黔南锻压机床 WS67K—系列电液同步数控板料折弯机', '面议', '广州市黄埔险峰黔南机床总汇', '13922242703\n/\n020-82292672', '2020-02-18 06:10:28', 'http://china.makepolo.com/product-detail/100285994558.html');
INSERT INTO `ad_product` VALUES (85, 4, '功能齐全 性能优秀 供应 锻压机床 J23-35T 瑞泰产品 欢迎订购', '面议', '瑞安市瑞泰冲压机械厂', '13705786055\n/\n0577-65209055', '2020-02-18 06:10:28', 'http://china.makepolo.com/product-detail/100482658729.html');
INSERT INTO `ad_product` VALUES (86, 5, '台捷火花机  特种加工机床&gt;电火花加工机床', '68000元/台', '东莞市胜诺五金机械有限公司', '13556684188\n/\n0769-85336170', '2020-02-18 06:10:28', 'http://china.makepolo.com/product-detail/100858076540.html');
INSERT INTO `ad_product` VALUES (87, 5, '星辉数控油泥五轴加工机床E10-3760', '100元/台', '济南星辉数控机械科技有限公司', '18653131757\n/\n0531-69987188', '2020-02-18 06:10:29', 'http://china.makepolo.com/product-detail/101041086454.html');
INSERT INTO `ad_product` VALUES (88, 5, '液压机床，深内孔加工机床', '面议', '潍坊弘安机械装备有限公司', '15306368330\n/\n536-6733668', '2020-02-18 06:10:29', 'http://china.makepolo.com/product-detail/100066494965.html');
INSERT INTO `ad_product` VALUES (89, 5, '螺纹加工机床榆林滚丝机销售部', '18000元/台', '任县厚德机械制造厂', '13731594382\n/\n0319-7588336', '2020-02-18 06:10:29', 'http://china.makepolo.com/product-detail/100181130060.html');
INSERT INTO `ad_product` VALUES (90, 5, 'CJS0640切、车精密机床', '面议', '玉环县巨星机床厂', '13967674477\n/\n0576-87491531', '2020-02-18 06:10:29', 'http://china.makepolo.com/product-detail/100098438181.html');
INSERT INTO `ad_product` VALUES (91, 5, '生产销售 JQ32-200液压机床 四柱三梁液压机械 图 现货供应', '面议', '滕州市新田力机床有限公司', '13188925018\n/\n 0632 6252169', '2020-02-18 06:10:29', 'http://china.makepolo.com/product-detail/100106915141.html');
INSERT INTO `ad_product` VALUES (92, 5, '超薄型小剪式举升机枣庄锐锋数控机床', '面议', '枣庄市锐锋数控机床有限公司', '13561133445\n/\n0632-3972300', '2020-02-18 06:10:30', 'http://china.makepolo.com/product-detail/100131091239.html');
INSERT INTO `ad_product` VALUES (93, 5, 'PCB冲压专用机床', '面议', '深圳市圣诺亚科技有限公司', '13751199658\n/\n0755-28020048', '2020-02-18 06:10:30', 'http://china.makepolo.com/product-detail/100090854078.html');
INSERT INTO `ad_product` VALUES (94, 5, '富翔供应专用旋管数控机床', '面议', '广州富翔数控机床设备有限公司', '13560159507\n/\n 020 87033487', '2020-02-18 06:10:30', 'http://china.makepolo.com/product-detail/100141626320.html');
INSERT INTO `ad_product` VALUES (95, 5, '主动轮螺纹退火机床', '面议', '十堰深思科技有限公司', '13508686548\n/\n0719-8266885', '2020-02-18 06:10:31', 'http://china.makepolo.com/product-detail/100146999920.html');
INSERT INTO `ad_product` VALUES (96, 5, '本厂长期供应全新25t冲压机床', '面议', '淄博新盛机床', '13506435900\n/\n 0533 5552357', '2020-02-18 06:10:31', 'http://china.makepolo.com/product-detail/100187209180.html');
INSERT INTO `ad_product` VALUES (97, 5, 'YDK7760直齿锥齿轮专用电火花线切割机床', '180000元/台', '泰州市晨虹数控设备制造有限公司', '13365200209\n/\n0523-86261606', '2020-02-18 06:10:31', 'http://china.makepolo.com/product-detail/100030730682.html');
INSERT INTO `ad_product` VALUES (98, 5, 'YL27系列四柱式单动薄板拉伸机床', '面议', '徐义清', '13601711389\n/\n021-59750637', '2020-02-18 06:10:31', 'http://china.makepolo.com/product-detail/100084555953.html');
INSERT INTO `ad_product` VALUES (99, 5, 'QA34-25机械联合冲剪机', '面议', '安徽中德机床股份有限公司', '13777089869\n/\n0574-28809000', '2020-02-18 06:10:32', 'http://china.makepolo.com/product-detail/100097388228.html');
INSERT INTO `ad_product` VALUES (100, 5, '电火花小孔加工机床，电火花穿孔机，诚招各地代理经销商', '面议', '苏州市庆诚数控设备有限公司', '18994425691\n/\n0512-66724156', '2020-02-18 06:10:32', 'http://china.makepolo.com/product-detail/100181012837.html');
INSERT INTO `ad_product` VALUES (101, 5, '售SUC8119P凸轮轴径向孔加工数控机床', '面议', '沈阳第一机床厂机床销售中心', '13555877025\n/\n024-25846605/25845232/25558577', '2020-02-18 06:10:33', 'http://china.makepolo.com/product-detail/100050933854.html');
INSERT INTO `ad_product` VALUES (102, 5, '枣庄市滕东机床有限公司', '48000元', '枣庄市滕东机床有限公司', '15588222117\n/\n0632-5552206', '2020-02-18 06:10:33', 'http://china.makepolo.com/product-detail/100136033449.html');
INSERT INTO `ad_product` VALUES (103, 5, '武重产机床齿轮配件', '100元', '湖北剑江工程技术有限公司', '13886132610\n/\n027-51881033', '2020-02-18 06:10:33', 'http://china.makepolo.com/product-detail/100141390594.html');
INSERT INTO `ad_product` VALUES (104, 5, '铁工 铁工机 铁工机床 钢铁加工机床', '98000元', '上海金三力机械有限公司', '18818068823\n/\n021-58008813', '2020-02-18 06:10:33', 'http://china.makepolo.com/product-detail/100392409153.html');
INSERT INTO `ad_product` VALUES (105, 5, '重庆浩斌机床有限公司', '面议', '九龙坡区浩斌机床设备经营部', '13500347795\n/\n023-86352048', '2020-02-18 06:10:34', 'http://china.makepolo.com/product-detail/100131799142.html');
INSERT INTO `ad_product` VALUES (106, 5, '线切割机床.原装进口瑞士夏米尔CHARMILLES机台二十台', '650000元', '东莞市誉满五金机械有限公司', '139257677011\n/\n 0769 85331509', '2020-02-18 06:10:34', 'http://china.makepolo.com/product-detail/100139693753.html');
INSERT INTO `ad_product` VALUES (107, 5, 'sowin硕方供应车铣复合加工机床，微型车削中心', '面议', '深圳硕方精密机械有限公司--业务部', '13684970251\n/\n 0755 29874501', '2020-02-18 06:10:34', 'http://china.makepolo.com/product-detail/100103597353.html');
INSERT INTO `ad_product` VALUES (108, 5, '回收二手数控机床及销售', '面议', '昆山市玉山镇明星亮机械经营部', '15190121304\n/\n0512-57939328', '2020-02-18 06:10:34', 'http://china.makepolo.com/product-detail/100107796332.html');
INSERT INTO `ad_product` VALUES (109, 5, '数控淬火机床', '80000元/台', '株洲市湘宁高中频设备有限责任公司', '13873354441\n/\n0731-22580023', '2020-02-18 06:10:34', 'http://china.makepolo.com/product-detail/26871708.html');
INSERT INTO `ad_product` VALUES (110, 5, '云帆机床水箱纸带过滤机', '12000元/个', '烟台云帆过滤系统有限公司', '13515452159\n/\n0535-6029680', '2020-02-18 06:10:34', 'http://china.makepolo.com/product-detail/20782201.html');
INSERT INTO `ad_product` VALUES (111, 5, '玉环华锐数控自动送料机床', '32000元/台', '玉环华锐数控机床有限公司', '13511436261\n/\n0576-87558582', '2020-02-18 06:10:34', 'http://china.makepolo.com/product-detail/100185715532.html');
INSERT INTO `ad_product` VALUES (112, 5, '株洲友平厂家低价批发{轴类淬火机床}', '242300.00元/件', '株洲市友平机电设备有限公司', '13786380604\n/\n0731-27271816', '2020-02-18 06:10:35', 'http://china.makepolo.com/product-detail/100683402124.html');
INSERT INTO `ad_product` VALUES (113, 5, '供应HWJ300约翰逊网焊接机床', '56万', '石家庄仁春网业设备有限公司（原河北正大机械制造有限公司）', '15303231857\n/\n0153-03231857', '2020-02-18 06:10:35', 'http://china.makepolo.com/product-detail/100349318382.html');
INSERT INTO `ad_product` VALUES (114, 5, 'CNC-A35高精密镜面电火花成型机床', '210000元/台', '东莞市日鑫机械有限公司', '15086609627\n/\n0769-82302096', '2020-02-18 06:10:35', 'http://china.makepolo.com/product-detail/101060313938.html');
INSERT INTO `ad_product` VALUES (115, 5, 'CH-40KW感应淬火设备数控淬火机床', '36000元/个', '常州创辉高频淬火设备有限公司', '13915057685\n/\n0519-82068168', '2020-02-18 06:10:35', 'http://china.makepolo.com/product-detail/100104732365.html');
INSERT INTO `ad_product` VALUES (116, 5, '机床自动下料装置改造', '100000元/件', '北京安培通科技有限公司', '13366223264\n/\n010-59418496', '2020-02-18 06:10:35', 'http://china.makepolo.com/product-detail/100584747681.html');
INSERT INTO `ad_product` VALUES (117, 5, '东莞市马扎克龙门数控机床', '1980000元/台', '东莞市马扎克数控科技有限公司', '18689492620\n/\n82186689', '2020-02-18 06:10:36', 'http://china.makepolo.com/product-detail/101047459138.html');
INSERT INTO `ad_product` VALUES (118, 5, '机床工作灯金属软管，机械照明定型金属软管，工作灯支架', '面议', '东莞市寮步天杰五金厂', '15814118837\n/\n0769-82219387', '2020-02-18 06:10:36', 'http://china.makepolo.com/product-detail/100119828491.html');
INSERT INTO `ad_product` VALUES (119, 5, '高质量高标准冲压机床', '面议', '常州市旭辉机电有限公司', '13813694118\n/\n0519-83985488', '2020-02-18 06:10:36', 'http://china.makepolo.com/product-detail/100117668265.html');
INSERT INTO `ad_product` VALUES (120, 5, '新型铁皮轧边机价格-机床/金属切削机床', '面议', '廊坊兴耀保温材料有限公司', '15032461382\n/\n0316-3289372', '2020-02-18 06:10:36', 'http://china.makepolo.com/product-detail/100804019035.html');
INSERT INTO `ad_product` VALUES (121, 5, '苏州大型五轴机床加工', '面议', '苏州巨龙电力器材有限公司', '18913137473\n/\n0152-50404558', '2020-02-18 06:10:36', 'http://china.makepolo.com/product-detail/100019611009.html');
INSERT INTO `ad_product` VALUES (122, 5, 'CY6140/4000机床', '面议', '南宁欧法利机械设备有限公司', '15277028338\n/\n0771-3113985', '2020-02-18 06:10:36', 'http://china.makepolo.com/product-detail/30828613.html');
INSERT INTO `ad_product` VALUES (123, 5, 'DK7732A线切割机床', '面议', '宁波市江北数控设备厂', '18668861920\n/\n574-87635088', '2020-02-18 06:10:36', 'http://china.makepolo.com/product-detail/100053247847.html');
INSERT INTO `ad_product` VALUES (124, 5, '高品质 高质量 高性价比 RPA-110T锻压设备机床', '面议', '扬州日高锻压自动化有限公司', '13684986698\n/\n0755-25022870', '2020-02-18 06:10:37', 'http://china.makepolo.com/product-detail/100198343268.html');
INSERT INTO `ad_product` VALUES (125, 5, '厂家机床测头／三维测头／3D测头／加工中心在线检测／机床测量头', '18000元/台', '广东广世共盈网络科技有限公司', '13794986111\n/\n0769-89778777', '2020-02-18 06:10:37', 'http://china.makepolo.com/product-detail/101024769560.html');
INSERT INTO `ad_product` VALUES (126, 6, '厂家提供机床附件拖板加长型滑台 机械单向工作滑台', '3000.00元', '台州市珠峰工具有限公司', '15957655376\n/\n0576-86968069', '2020-02-18 06:10:38', 'http://china.makepolo.com/product-detail/100423675807.html');
INSERT INTO `ad_product` VALUES (127, 6, '钢铝拖链，塑料拖链，机床附件', '140.00元', '河北经纬机械制造有限公司', '0534-7081851/7085786\n/\n0534-7081851/7085786', '2020-02-18 06:10:38', 'http://china.makepolo.com/product-detail/100358346176.html');
INSERT INTO `ad_product` VALUES (128, 6, '专业维修机床 机床附件', '1.00元', '东莞市大朗台鑫机械维修部', '18825548885\n/\n0769-81738853', '2020-02-18 06:10:39', 'http://china.makepolo.com/product-detail/100296679043.html');
INSERT INTO `ad_product` VALUES (129, 6, '厂家直销 尼龙拖链 型号齐全一米起订-沧州天锐机床附件', '150.00元', '张明寨', '13373239376\n/\n0317-6348556', '2020-02-18 06:10:39', 'http://china.makepolo.com/product-detail/100450496941.html');
INSERT INTO `ad_product` VALUES (130, 6, '桥式TL钢拖链沧州机床附件', '1256元/米', '盐山县木子李机床附件厂', '13731711230\n/\n0317-6345330', '2020-02-18 06:10:39', 'http://china.makepolo.com/product-detail/100874604336.html');
INSERT INTO `ad_product` VALUES (131, 6, 'FIBRO 分度台，直线导轨，机床附件', '10元/个', '上海狄放贸易有限公司', '15618994997\n/\n021-63063805', '2020-02-18 06:10:39', 'http://china.makepolo.com/product-detail/100459196986.html');
INSERT INTO `ad_product` VALUES (132, 6, '防尘罩方罩 丝杠护罩 防护罩 圆筒式防护罩 机床附件', '50.00元', '张志文', '13582473997\n/\n317-6348897', '2020-02-18 06:10:39', 'http://china.makepolo.com/product-detail/100356796655.html');
INSERT INTO `ad_product` VALUES (133, 6, '套装攻丝夹头 锥柄丝攻夹头 快换攻丝夹头 泗水机床附件', '700.00元', '泗水县浩源机床附件厂', '13176755984\n/\n0537-4018637', '2020-02-18 06:10:39', 'http://china.makepolo.com/product-detail/100434127942.html');
INSERT INTO `ad_product` VALUES (134, 6, '山东厂家直销 CBT滚珠丝杆副 滚珠丝杠副 机床附件', '1.00元', '济宁瑞特尔精密机械有限公司', '13583707187\n/\n0537-3623952', '2020-02-18 06:10:40', 'http://china.makepolo.com/product-detail/100350752665.html');
INSERT INTO `ad_product` VALUES (135, 6, '机床Z轴设定仪/机床对刀仪/机床附件/机械式对刀仪/数控机床附件', '270.00元', '杨名法', '13798596947\n/\n0755-27162024', '2020-02-18 06:10:40', 'http://china.makepolo.com/product-detail/100260015143.html');
INSERT INTO `ad_product` VALUES (136, 6, '台州大久厂家批发DJ-02004R8变径套 机床附件', '面议', '台州大久机床附件有限公司', '0576-82935656\n/\n 0576 82935656', '2020-02-18 06:10:40', 'http://china.makepolo.com/product-detail/100308495772.html');
INSERT INTO `ad_product` VALUES (137, 6, '苏州供应机床灯具刮屑板拖链等机床附件 并可定做异型机床附件', '122.00元', '苏州悦丰烁机电设备有限公司', '13915515689\n/\n0512-68386176', '2020-02-18 06:10:41', 'http://china.makepolo.com/product-detail/100269307636.html');
INSERT INTO `ad_product` VALUES (138, 6, '优质镀鉻转动手柄M8*63北京批发机床附件', '5.50元', '北京市木樨园永隆五金商店', '13910415911\n/\n010-67990143', '2020-02-18 06:10:42', 'http://china.makepolo.com/product-detail/100216735654.html');
INSERT INTO `ad_product` VALUES (139, 6, '专业生产 销售普通顶尖、质优价廉 机床附件', '6.00元', '泗水县宏鑫机床附件厂(普通合伙)', '13505475412\n/\n0537-4010078', '2020-02-18 06:10:42', 'http://china.makepolo.com/product-detail/100208947104.html');
INSERT INTO `ad_product` VALUES (140, 6, '生产销售 TL-3拖链 盐山拖链¶ 机床附件 塑料拖链', '60.00元', '盐山聚丰机床附件制造有限公司', '13131721325\n/\n0317-6349776', '2020-02-18 06:10:42', 'http://china.makepolo.com/product-detail/100355068573.html');
INSERT INTO `ad_product` VALUES (141, 6, '专业生产铝型材防护帘.及各种机床附件', '50.00元', '庆云天城机床附件有限公司', '15564410871\n/\n0534-3778444', '2020-02-18 06:10:42', 'http://china.makepolo.com/product-detail/100423699327.html');
INSERT INTO `ad_product` VALUES (142, 6, '机床专用刻度盘/供应机床各类刻度盘/刻度环/机床配件/机床附件', '1.00元', '泰兴市天星金属工艺有限公司', '13805265302\n/\n0523-87455010', '2020-02-18 06:10:42', 'http://china.makepolo.com/product-detail/100385839809.html');
INSERT INTO `ad_product` VALUES (143, 6, '批发供应SBS电子走刀器齿轮 机床附件（图）', '30.00元', '余姚市冈野机械有限公司', '13780020070\n/\n574-66225682', '2020-02-18 06:10:42', 'http://china.makepolo.com/product-detail/100189833091.html');
INSERT INTO `ad_product` VALUES (144, 6, '供应机床防护罩，风琴防护罩，天津机床附件', '95.00元', '王长亮', '13861784466\n/\n0317-6344888', '2020-02-18 06:10:43', 'http://china.makepolo.com/product-detail/100460804527.html');
INSERT INTO `ad_product` VALUES (145, 6, '重型机械专用钢铝拖链、冶金设备专用钢铝拖链、机床附件', '185.00元', '沧州富盛精密机床附件制造有限公司', '13803238971\n/\n 0317 6304178', '2020-02-18 06:10:43', 'http://china.makepolo.com/product-detail/100309147352.html');
INSERT INTO `ad_product` VALUES (146, 6, '机床附件批发 通用配件 精密机床配件附件', '面议', '禹州市万昌机械有限公司', '13613747868\n/\n-', '2020-02-18 06:10:43', 'http://china.makepolo.com/product-detail/100294800760.html');
INSERT INTO `ad_product` VALUES (147, 6, '机床附件，万向冷却管生产厂家，四分1/2系列', '1.00元', '东莞市长安昊通五金工具商行', '13751411350\n/\n0769-81622946', '2020-02-18 06:10:43', 'http://china.makepolo.com/product-detail/100360808886.html');
INSERT INTO `ad_product` VALUES (148, 6, '销售生产批发机床防护罩等机床附件', '100.00元', '盐山县精益机床附件制造有限公司销售处', '13831768985\n/\n0317-3086598', '2020-02-18 06:10:43', 'http://china.makepolo.com/product-detail/101052677790.html');
INSERT INTO `ad_product` VALUES (149, 6, '昆山机床附件 机床CNC防护罩', '3000.00元', '昆山泰科尤斯机械科技有限公司', '18914986906\n/\n0512-57554800', '2020-02-18 06:10:43', 'http://china.makepolo.com/product-detail/100388252542.html');
INSERT INTO `ad_product` VALUES (150, 6, '刀套、机床附件、导套', '38.00元', '德州北宇机械有限公司1', '13316880767\n/\n0755-32902887', '2020-02-18 06:10:44', 'http://china.makepolo.com/product-detail/100312455155.html');
INSERT INTO `ad_product` VALUES (151, 6, '高精度 莫氏高速回转顶尖 机床附件批发 厂家直销', '100.00元', '济宁勤丰机械五金有限公司', '0537-3281595\n/\n 0537 3281595', '2020-02-18 06:10:44', 'http://china.makepolo.com/product-detail/100425102032.html');
INSERT INTO `ad_product` VALUES (152, 6, '排屑机--渤海精益机床附件制造有限公司', '3000.00元', '王福祥', '15133735207\n/\n0317-6344887', '2020-02-18 06:10:44', 'http://china.makepolo.com/product-detail/100420601904.html');
INSERT INTO `ad_product` VALUES (153, 6, '北京机床附件厂烟台经销处 供JXT 25系列铣夹头 三箭铣夹头', '1560.00元', '烟台宏益机电设备有限公司', '18615011592\n/\n 0535 6852906', '2020-02-18 06:10:44', 'http://china.makepolo.com/product-detail/100507387289.html');
INSERT INTO `ad_product` VALUES (154, 6, 'TL系列钢制拖链,钢制拖链,拖链_钢制拖链系列山东盛达', '150元', '庆云日盛数控机床附件制造有限公司', '18866008203\n/\n534-3662000', '2020-02-18 06:10:44', 'http://china.makepolo.com/product-detail/100186109215.html');
INSERT INTO `ad_product` VALUES (155, 6, '供应机床附件/手轮手柄/铁手轮、3寸电镀手轮 木工机械设备', '3.00元', '佛山市顺德区伦教景茂机械配件店', '13929195567\n/\n0757-22171255', '2020-02-18 06:10:45', 'http://china.makepolo.com/product-detail/100451385702.html');
INSERT INTO `ad_product` VALUES (156, 6, '供应机床附件电缆防爆软管系列', '8.00元', '沧州誉丰数控机床附件制造有限公司', '13731735599\n/\n0317-6222995/6222997', '2020-02-18 06:10:45', 'http://china.makepolo.com/product-detail/100467443793.html');
INSERT INTO `ad_product` VALUES (157, 6, '厂家直销机床附件、工程塑料拖链、桥式型塑料拖链', '40.00元', '王智政', '13962442440\n/\n0317-6344187', '2020-02-18 06:10:45', 'http://china.makepolo.com/product-detail/100318155641.html');
INSERT INTO `ad_product` VALUES (158, 6, '数控车床配件 机床附件 风机护罩 排风设备配件 厂家直销', '12.00元', '玉环县安川数控机床厂', '18658682315\n/\n 0576 81712733', '2020-02-18 06:10:45', 'http://china.makepolo.com/product-detail/100507462134.html');
INSERT INTO `ad_product` VALUES (159, 6, '厂家优质供应机床附件-卷帘式防护罩', '25.00元', '盐山县天工机床附件制造厂', '15076714165\n/\n0317-6340156', '2020-02-18 06:10:45', 'http://china.makepolo.com/product-detail/100489140552.html');
INSERT INTO `ad_product` VALUES (160, 6, '大量供应可打开式 丝杠防护罩 （拉链型）-天锐机床附件', '18.00元', '张明寨', '13373239376\n/\n0317-6348556', '2020-02-18 06:10:45', 'http://china.makepolo.com/product-detail/100450497217.html');
INSERT INTO `ad_product` VALUES (161, 6, '撞块槽板铝合金沧州机床附件', '1元/件', '盐山县木子李机床附件厂', '13731711230\n/\n0317-6345330', '2020-02-18 06:10:46', 'http://china.makepolo.com/product-detail/100875091976.html');
INSERT INTO `ad_product` VALUES (162, 6, 'KNOLL 机床附件', '10元/个', '上海狄放贸易有限公司', '15618994997\n/\n021-63063805', '2020-02-18 06:10:46', 'http://china.makepolo.com/product-detail/100485888358.html');
INSERT INTO `ad_product` VALUES (163, 6, '批发机床灯具等各种机床附件', '99.00元', '苏州悦丰烁机电设备有限公司', '13915515689\n/\n0512-68386176', '2020-02-18 06:10:46', 'http://china.makepolo.com/product-detail/100269258738.html');
INSERT INTO `ad_product` VALUES (164, 6, '山东厂家直销 强力加长回转合金顶尖 机床附件', '2.00元', '济宁瑞特尔精密机械有限公司', '13583707187\n/\n0537-3623952', '2020-02-18 06:10:46', 'http://china.makepolo.com/product-detail/100350752680.html');
INSERT INTO `ad_product` VALUES (165, 6, '生产定做 加长变径套 特长型变径套 直柄变径套等各类机床附件', '1.00元', '泗水县宏鑫机床附件厂(普通合伙)', '13505475412\n/\n0537-4010078', '2020-02-18 06:10:46', 'http://china.makepolo.com/product-detail/100373875757.html');
INSERT INTO `ad_product` VALUES (166, 8, '上海煜柯 真空获取与应用设备 大型罗茨泵', '15000.00元/个', '上海煜柯机电科技有限公司', '13916539828\n/\n021-62288709', '2020-02-18 06:10:46', 'http://china.makepolo.com/product-detail/100975959553.html');
INSERT INTO `ad_product` VALUES (167, 10, '甘草粉碎机-超微粉碎机-果壳粉碎机-粉碎设备-粉碎机', '5000.00元', '常州市钱江干燥设备工程有限公司', '13861058898\n/\n0519-88670786', '2020-02-18 06:10:47', 'http://china.makepolo.com/product-detail/100394893035.html');
INSERT INTO `ad_product` VALUES (168, 10, '特价产品：粉碎机，粉碎设备，20B粉碎机', '11000.00元', '常州市金象干燥设备有限公司', '13906117130\n/\n0519-88909773', '2020-02-18 06:10:47', 'http://china.makepolo.com/product-detail/100350026000.html');
INSERT INTO `ad_product` VALUES (169, 10, '特价供应涡轮粉碎机/多功能粉碎设备/江阴粉碎机/嵊州粉碎机', '9000元', '上海亿筛机械有限公司', '18049754649\n/\n021-64423600', '2020-02-18 06:10:48', 'http://china.makepolo.com/product-detail/100167118423.html');
INSERT INTO `ad_product` VALUES (170, 10, '药用粉碎设备 高效不锈钢粉碎机', '6000元/个', '广州市旭朗机械设备工厂', '13533749137\n/\n020-23327056', '2020-02-18 06:10:48', 'http://china.makepolo.com/product-detail/100139474977.html');
INSERT INTO `ad_product` VALUES (171, 10, '磨粉机.粉碎设备.粉碎机.食品粉碎机', '7000元/个', '广州市旭朗机械设备总公司', '13556053205\n/\n020-23327058', '2020-02-18 06:10:48', 'http://china.makepolo.com/product-detail/100181743735.html');
INSERT INTO `ad_product` VALUES (172, 10, '供应吸尘连续粉碎机 高效粉碎设备30B不锈钢白砂糖粉碎机', '14700元/台', '常州市东南干燥设备有限公司', '13584355559\n/\n0519-88902391', '2020-02-18 06:10:48', 'http://china.makepolo.com/product-detail/100465598578.html');
INSERT INTO `ad_product` VALUES (173, 10, '供应种香菇木材粉碎设备 香菇料粉碎机 菇木粉碎机', '4500元/台', '郑州浩宇机械设备有限公司', '13526541622\n/\n0371-86003528', '2020-02-18 06:10:49', 'http://china.makepolo.com/product-detail/100098827196.html');
INSERT INTO `ad_product` VALUES (174, 10, '金属粉碎设备 废旧家电粉碎机 铁盒粉碎机', '29000元', '郑州市中原区宏达机械制造厂', '13598875438\n/\n0371-56786677', '2020-02-18 06:10:49', 'http://china.makepolo.com/product-detail/100177105872.html');
INSERT INTO `ad_product` VALUES (175, 10, '玉米秸秆粉碎设备宁夏 大豆粉碎机', '860元/台', '曲阜市恒信机械设备销售中心', '18369815679\n/\n0537-4651499', '2020-02-18 06:10:50', 'http://china.makepolo.com/product-detail/101061583239.html');
INSERT INTO `ad_product` VALUES (176, 10, '饲料加工厂专用粉碎设备 豆粕、麸皮粉碎机 猪饲料粉碎机', '12500元/件', '山东双鹤机械制造股份有限公司', '15010592154\n/\n0534-6683777', '2020-02-18 06:10:50', 'http://china.makepolo.com/product-detail/101041904664.html');
INSERT INTO `ad_product` VALUES (177, 10, '调味品齿盘打碎机-粉碎设备-粉碎机-打粉机', '1180元/台', '山东昌隆节能环保工程有限公司', '15563120618\n/\n0537-4719789', '2020-02-18 06:10:50', 'http://china.makepolo.com/product-detail/101063738993.html');
INSERT INTO `ad_product` VALUES (178, 10, '供应金格瑞粉碎机65X100，多功能粉碎机，粉碎设备，粉碎机', '面议', '山东金格瑞机械有限公司', '13953126301\n/\n-', '2020-02-18 06:10:50', 'http://china.makepolo.com/product-detail/100571237465.html');
INSERT INTO `ad_product` VALUES (179, 10, '硅灰石粉碎，水镁石粉碎设备，原煤粉碎机，青石粉碎机', '180000.00元', '河南佰辰机械设备有限公司', '15736798222\n/\n0371-86555711', '2020-02-18 06:10:51', 'http://china.makepolo.com/product-detail/100806263894.html');
INSERT INTO `ad_product` VALUES (180, 10, '粉碎设备 粉碎机 破碎机', '1元/件', '山东中煤工矿集团', '18463728400\n/\n400-086-0537', '2020-02-18 06:10:51', 'http://china.makepolo.com/product-detail/100851450728.html');
INSERT INTO `ad_product` VALUES (181, 10, '供应日照粉碎设备除尘粉碎机，粉碎机械万能除尘粉碎机', '1400.00元', '历城区飞驰机械设备经营部销售部门', '13808928353\n/\n 0531 82319157', '2020-02-18 06:10:51', 'http://china.makepolo.com/product-detail/100290397045.html');
INSERT INTO `ad_product` VALUES (182, 10, '专业厂家 提供各类粉碎机 粉碎设备 锤式粉碎机 厂家直销', '面议', '潍坊市寒亭区正强机械厂', '13964613977\n/\n536-7588945', '2020-02-18 06:10:52', 'http://china.makepolo.com/product-detail/100366452483.html');
INSERT INTO `ad_product` VALUES (183, 10, '工程机械粉碎设备粉碎机', '面议', '永州恒丰机械有限公司', '15869978888\n/\n0746-8229288', '2020-02-18 06:10:52', 'http://china.makepolo.com/product-detail/100243277787.html');
INSERT INTO `ad_product` VALUES (184, 10, '厂家供应新一代金属粉碎机 易拉罐粉碎机 废旧金属粉碎设备', '22000.00元', '巩义市大峪沟新阳机械厂', '18037861168\n/\n0371-86029962', '2020-02-18 06:10:53', 'http://china.makepolo.com/product-detail/100214451428.html');
INSERT INTO `ad_product` VALUES (185, 10, '30B粉碎机 吸尘粉碎机组 粉碎与吸法为一体的新一代粉碎设备', '15000.00元', '常州市恒迈干燥设备有限公司', '15251911777\n/\n0519-88912279', '2020-02-18 06:10:53', 'http://china.makepolo.com/product-detail/100455106137.html');
INSERT INTO `ad_product` VALUES (186, 10, '化工粉碎设备 粉碎机 设备先进质量佳 十年销量领先', '8000.00元', '鹤山市沙坪和康机械销售中心', '13048166388\n/\n0750-875029-0', '2020-02-18 06:10:53', 'http://china.makepolo.com/product-detail/100491485603.html');
INSERT INTO `ad_product` VALUES (187, 10, '供应药用粉碎机械-中药材粉碎机-打碎机-药材粉碎机-万能粉碎设备', '80000.00元', '江苏瑰宝集团有限公司', '15950418511\n/\n0510-86382957', '2020-02-18 06:10:53', 'http://china.makepolo.com/product-detail/100378397063.html');
INSERT INTO `ad_product` VALUES (188, 10, '提供二手饲料粉碎设备 二手万能粉碎机', '100元/件', '梁山县隆兴二手化工设备购销部', '15053770177\n/\n0537-7601886', '2020-02-18 06:10:54', 'http://china.makepolo.com/product-detail/100732138133.html');
INSERT INTO `ad_product` VALUES (189, 10, '化工粉碎设备，食品粉碎机', '88000元/台', '江阴市海顺机械设备制造有限公司', '13771284109\n/\n0510-86386777', '2020-02-18 06:10:54', 'http://china.makepolo.com/product-detail/101035833007.html');
INSERT INTO `ad_product` VALUES (190, 10, '河南华东新型木头粉碎机绿色环保粉碎设备', '11111元/件', '河南省巩义市华东冶矿机械厂', '13607673581\n/\n0371-64564926', '2020-02-18 06:10:54', 'http://china.makepolo.com/product-detail/100779988121.html');
INSERT INTO `ad_product` VALUES (191, 10, '中药白茅根粉碎设备WFJ超微粉碎机不锈钢脉冲除尘超细磨粉设备', '68000.00元', '江阴市丫匀机械制造有限公司', '18800575880\n/\n-', '2020-02-18 06:10:55', 'http://china.makepolo.com/product-detail/100798784495.html');
INSERT INTO `ad_product` VALUES (192, 10, '厂家直销 木材加工粉碎设备（木材粉碎机）', '5000元/台', '郑州市长兴机械设备有限公司', '13460212273\n/\n0371-67859371', '2020-02-18 06:10:55', 'http://china.makepolo.com/product-detail/100952583858.html');
INSERT INTO `ad_product` VALUES (193, 10, '厂家现货不锈钢多用粉碎机 打药材香辛料粉碎设备', '7000元/台', '广州市旭朗机械设备有限公司', '13556053205\n/\n020-28277188', '2020-02-18 06:10:55', 'http://china.makepolo.com/product-detail/101062638726.html');
INSERT INTO `ad_product` VALUES (194, 10, '塑胶水桶粉碎设备 粉碎机/破碎机/打碎机 清洗运输生产线', '22000元/台', '东莞市赛柯机械有限公司', '13316624973\n/\n0769-82669936', '2020-02-18 06:10:55', 'http://china.makepolo.com/product-detail/100887786939.html');
INSERT INTO `ad_product` VALUES (195, 10, '粉碎设备 塑料粉碎机 香菇菌种专用粉碎机 快达牌粉碎机', '13800.00元', '常州市快达干燥设备有限公司', '18118011505\n/\n0519-81699369', '2020-02-18 06:10:55', 'http://china.makepolo.com/product-detail/100533850732.html');
INSERT INTO `ad_product` VALUES (196, 10, '超细粉碎机 超微粉碎设备 食品超微粉碎机', '面议', '潍坊正远粉体工程设备有限公司', '15963629458\n/\n0536-8880565', '2020-02-18 06:10:55', 'http://china.makepolo.com/product-detail/100208460431.html');
INSERT INTO `ad_product` VALUES (197, 10, '厂家直销 湿物料粉碎设备/超微胶体粉碎机/立时胶体磨机粉碎机', '2000.00元', '泉州市洛江区富迪食品技术研发服务中心', '13720853668\n/\n0595-22689169', '2020-02-18 06:10:55', 'http://china.makepolo.com/product-detail/100359759560.html');
INSERT INTO `ad_product` VALUES (198, 10, '玉米秸秆饲料粉碎设备 锤片粉碎机', '面议', '曲阜市颗粒机械研究所', '15653784378\n/\n0537-4567399', '2020-02-18 06:10:55', 'http://china.makepolo.com/product-detail/100292286293.html');
INSERT INTO `ad_product` VALUES (199, 10, '粉碎设备--粉碎机，高效，节能项目工程', '面议', '青岛奥博机械有限公司', '15969881108\n/\n0532-68001586', '2020-02-18 06:10:56', 'http://china.makepolo.com/product-detail/100351349724.html');
INSERT INTO `ad_product` VALUES (200, 10, '厂家直销 久品 打粉机 打粉机色粉 粉碎设备 粉碎机', '180.00元', '永康市久品工贸有限公司', ' 0579 87182269\n/\n 0579 87182269', '2020-02-18 06:10:56', 'http://china.makepolo.com/product-detail/100233478783.html');
INSERT INTO `ad_product` VALUES (201, 10, '专业供应 碳酸钙食品粉碎设备 高速多功能大型药物粉碎机', '85005.00元', '嵊州市欣乐粉碎设备有限公司', '13905853407\n/\n0575-83104217', '2020-02-18 06:10:56', 'http://china.makepolo.com/product-detail/100799359575.html');
INSERT INTO `ad_product` VALUES (202, 10, '杂木木屑粉碎机 废旧木材边角料粉碎设备 大型木材粉碎机', '4200元/台', '郑州鑫磊机械设备有限公司', '13838015371\n/\n0371-53638083', '2020-02-18 06:10:56', 'http://china.makepolo.com/product-detail/101033576196.html');
INSERT INTO `ad_product` VALUES (203, 10, '畅销干菠萝粉碎机 菠萝干粉碎设备 高效率磨粉机 WFJ超微粉碎机', '60000元/台', '江阴市佳科机械制造有限公司', '13656154624\n/\n0510-86388823', '2020-02-18 06:10:56', 'http://china.makepolo.com/product-detail/101010272778.html');
INSERT INTO `ad_product` VALUES (204, 10, '树枝粉碎机 小型果园树杈粉碎设备 多功能 园林树枝木材粉碎机', '2800元/台', '郑州志乾机械设备有限公司', '18037812955\n/\n0371-64563622', '2020-02-18 06:10:56', 'http://china.makepolo.com/product-detail/101063664529.html');
INSERT INTO `ad_product` VALUES (205, 10, '特价供应粉碎机，粉碎设备，30B粉碎机', '13000.00元', '常州市金象干燥设备有限公司', '13906117130\n/\n0519-88909773', '2020-02-18 06:10:56', 'http://china.makepolo.com/product-detail/100350025502.html');
INSERT INTO `ad_product` VALUES (206, 10, '玉米秸秆粉碎设备重庆 单相电粉碎机', '860元/台', '曲阜市恒信机械设备销售中心', '18369815679\n/\n0537-4651499', '2020-02-18 06:10:56', 'http://china.makepolo.com/product-detail/101061301474.html');
INSERT INTO `ad_product` VALUES (207, 11, '镍触媒（分离设备、镍催化剂）', '90元', '苏州市高科气体设备有限公司（营销部）', '13814890472\n/\n512 65561156-', '2020-02-18 06:10:57', 'http://china.makepolo.com/product-detail/28929754.html');
INSERT INTO `ad_product` VALUES (208, 11, '低温空气分离设备、深冷氮氧分离装置', '面议', '富阳天澳空分设备有限公司', '15257148656\n/\n0571-63165088', '2020-02-18 06:10:57', 'http://china.makepolo.com/product-detail/30332756.html');
INSERT INTO `ad_product` VALUES (209, 11, '杜尔气体VPSA制氧机设备节能环保技术先进', '90000元/件', '苏州杜尔气体化工装备有限公司', '18626101607\n/\n0139-15550577', '2020-02-18 06:10:57', 'http://china.makepolo.com/product-detail/101065611543.html');
INSERT INTO `ad_product` VALUES (210, 11, '钯扩散氢气分离设备', '面议', '山东省聊城市科威化工仪器有限公司', '15063548238\n/\n 0635 8216269', '2020-02-18 06:10:57', 'http://china.makepolo.com/product-detail/100022495769.html');
INSERT INTO `ad_product` VALUES (211, 11, '苏州高普牌铜带光亮退火用氮气和氢气机，自由制取气体。', '1元/套', '苏州市高普超纯气体技术有限公司', '13338698829\n/\n0512-66610166', '2020-02-18 06:10:57', 'http://china.makepolo.com/product-detail/100017262305.html');
INSERT INTO `ad_product` VALUES (212, 11, '供应辰睿立方制氧设备', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:10:57', 'http://china.makepolo.com/product-detail/100471844756.html');
INSERT INTO `ad_product` VALUES (213, 11, '供应APPSA制氮机，氮气发生机，PSA制氧', '面议', '深圳中航迪赛科技有限公司', '13827436630\n/\n0755-86174730', '2020-02-18 06:10:58', 'http://china.makepolo.com/product-detail/100200936689.html');
INSERT INTO `ad_product` VALUES (214, 11, '瑞仁净化氨分解专业生产厂家', '5000000元/台', '苏州瑞仁净化设备有限公司', '13862598519\n/\n0512-65862671', '2020-02-18 06:10:58', 'http://china.makepolo.com/product-detail/100785123223.html');
INSERT INTO `ad_product` VALUES (215, 11, '杜尔气体公司设计的VPSA制氧机设备更节能环保技术更先进', '90000元/件', '苏州杜尔气体化工装备有限公司', '18626101607\n/\n0139-15550577', '2020-02-18 06:10:58', 'http://china.makepolo.com/product-detail/101065611554.html');
INSERT INTO `ad_product` VALUES (216, 11, '供应辰睿立方氧气设备', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:10:58', 'http://china.makepolo.com/product-detail/100471844751.html');
INSERT INTO `ad_product` VALUES (217, 11, '醋酐生产加工储运用氮气设备', '面议', '苏州市高普超纯气体技术有限公司', '13338698829\n/\n0512-66610166', '2020-02-18 06:10:59', 'http://china.makepolo.com/product-detail/100018754902.html');
INSERT INTO `ad_product` VALUES (218, 11, '杜尔气体公司制造的VPSA制氧机设备更节能环保技术更先进', '90000元/件', '苏州杜尔气体化工装备有限公司', '18626101607\n/\n0139-15550577', '2020-02-18 06:10:59', 'http://china.makepolo.com/product-detail/101065611549.html');
INSERT INTO `ad_product` VALUES (219, 11, '供应辰睿制氧吸附设备', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:10:59', 'http://china.makepolo.com/product-detail/100471844713.html');
INSERT INTO `ad_product` VALUES (220, 11, '供应辰睿制氧机报价', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:10:59', 'http://china.makepolo.com/product-detail/100471844721.html');
INSERT INTO `ad_product` VALUES (221, 11, '供应辰睿食品制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:10:59', 'http://china.makepolo.com/product-detail/100471844780.html');
INSERT INTO `ad_product` VALUES (222, 11, '供应辰睿小型工业制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:10:59', 'http://china.makepolo.com/product-detail/100471844714.html');
INSERT INTO `ad_product` VALUES (223, 11, '供应辰睿真空变压吸附制氧', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:10:59', 'http://china.makepolo.com/product-detail/100471844765.html');
INSERT INTO `ad_product` VALUES (224, 11, '供应辰睿空分制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:10:59', 'http://china.makepolo.com/product-detail/100471844782.html');
INSERT INTO `ad_product` VALUES (225, 11, '供应辰睿造纸制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:10:59', 'http://china.makepolo.com/product-detail/100471844741.html');
INSERT INTO `ad_product` VALUES (226, 11, '供应轻工行业制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:10:59', 'http://china.makepolo.com/product-detail/100471844738.html');
INSERT INTO `ad_product` VALUES (227, 11, '供应辰睿助燃设备制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:10:59', 'http://china.makepolo.com/product-detail/100471844694.html');
INSERT INTO `ad_product` VALUES (228, 11, '供应辰睿鼓风炉富氧燃烧用制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:10:59', 'http://china.makepolo.com/product-detail/100471844755.html');
INSERT INTO `ad_product` VALUES (229, 11, '供应辰睿制氧机系统', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:00', 'http://china.makepolo.com/product-detail/100471844750.html');
INSERT INTO `ad_product` VALUES (230, 11, '供应辰睿立方氧气发生器', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:00', 'http://china.makepolo.com/product-detail/100471844757.html');
INSERT INTO `ad_product` VALUES (231, 11, '供应辰睿工业制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:00', 'http://china.makepolo.com/product-detail/100471844776.html');
INSERT INTO `ad_product` VALUES (232, 11, '供应辰睿制氧机原理', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:00', 'http://china.makepolo.com/product-detail/100471844749.html');
INSERT INTO `ad_product` VALUES (233, 11, '供应辰睿大型制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:00', 'http://china.makepolo.com/product-detail/100471844775.html');
INSERT INTO `ad_product` VALUES (234, 11, '供应辰睿水产养殖制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:00', 'http://china.makepolo.com/product-detail/100471844773.html');
INSERT INTO `ad_product` VALUES (235, 11, '供应辰睿助燃制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:00', 'http://china.makepolo.com/product-detail/100471844761.html');
INSERT INTO `ad_product` VALUES (236, 11, '供应辰睿冶炼用制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:00', 'http://china.makepolo.com/product-detail/100471844762.html');
INSERT INTO `ad_product` VALUES (237, 11, '供应辰睿热销制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:00', 'http://china.makepolo.com/product-detail/100471844770.html');
INSERT INTO `ad_product` VALUES (238, 11, '供应辰睿生物技术制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:00', 'http://china.makepolo.com/product-detail/100471844726.html');
INSERT INTO `ad_product` VALUES (239, 11, '供应辰睿变压吸附制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:00', 'http://china.makepolo.com/product-detail/100471844769.html');
INSERT INTO `ad_product` VALUES (240, 11, '供应辰睿水产制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:01', 'http://china.makepolo.com/product-detail/100471844730.html');
INSERT INTO `ad_product` VALUES (241, 11, '供应辰睿制氧机配件', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:01', 'http://china.makepolo.com/product-detail/100471844784.html');
INSERT INTO `ad_product` VALUES (242, 11, '供应辰睿污水处理制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:01', 'http://china.makepolo.com/product-detail/100471844742.html');
INSERT INTO `ad_product` VALUES (243, 11, '供应辰睿氧气发生器', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:01', 'http://china.makepolo.com/product-detail/100471844783.html');
INSERT INTO `ad_product` VALUES (244, 11, '供应辰睿工业制氧机价格', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:01', 'http://china.makepolo.com/product-detail/100471844716.html');
INSERT INTO `ad_product` VALUES (245, 11, '供应辰睿工业用制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:01', 'http://china.makepolo.com/product-detail/100471844717.html');
INSERT INTO `ad_product` VALUES (246, 11, '供应辰睿制氧机', '10000元/个', '杭州辰睿空分设备制造有限公司', '13735897417\n/\n0571-63492966', '2020-02-18 06:11:01', 'http://china.makepolo.com/product-detail/100471844715.html');
INSERT INTO `ad_product` VALUES (247, 13, '过滤分离筛分设备筛分设备', '10000元/台', '宁津县鑫力达机械设备有限公司', '15969765954\n/\n0534-5682828', '2020-02-18 06:11:02', 'http://china.makepolo.com/product-detail/100601297015.html');
INSERT INTO `ad_product` VALUES (248, 13, '过滤 分离 筛分设备遥控器双推杆模拟量输出功能可定制', '15800元/件', '成都易德莱斯科技有限公司', '19940500542\n/\n028-84215008', '2020-02-18 06:11:02', 'http://china.makepolo.com/product-detail/101063753308.html');
INSERT INTO `ad_product` VALUES (249, 13, '农业粮食过滤、分离、筛分设备-hyl-25型谷物筛分机，玉米振动筛', '26000元/件', '新乡市宏源振动设备有限公司', '13223734129\n/\n0373-2677463', '2020-02-18 06:11:02', 'http://china.makepolo.com/product-detail/100822078946.html');
INSERT INTO `ad_product` VALUES (250, 13, '玉米中杂质过滤、分离、筛分设备 多功能清粮机', '8000元/台', '宏源振动设备有限公司', '18339546509\n/\n0373-2678390', '2020-02-18 06:11:03', 'http://china.makepolo.com/product-detail/101018398312.html');
INSERT INTO `ad_product` VALUES (251, 13, '三级过滤器三大优点 过滤、分离、筛分设备', '面议', '山东神华机械制造有限公司', '18553715758\n/\n0537-3151329', '2020-02-18 06:11:03', 'http://china.makepolo.com/product-detail/100909827164.html');
INSERT INTO `ad_product` VALUES (252, 13, '厂家过滤除沫器，分离筛分设备丝网除沫器，张家口丝网除沫器', '100元/件', '安平县九鑫过滤网业有限公司', '13833888883\n/\n0318-7800015', '2020-02-18 06:11:03', 'http://china.makepolo.com/product-detail/101052678437.html');
INSERT INTO `ad_product` VALUES (253, 13, '固液分离筛分设 450过滤机30年质造厂家 新乡液体除杂过滤', '4880元/台', '新乡市辰威机械有限公司', '13083801818\n/\n0373-7035908', '2020-02-18 06:11:04', 'http://china.makepolo.com/product-detail/101065508245.html');
INSERT INTO `ad_product` VALUES (254, 13, '特价上海低价筛分设备/筛选设备/过滤设备/分级设备', '5000.00元', '上海亿筛机械有限公司', '18049754649\n/\n021-64423600', '2020-02-18 06:11:04', 'http://china.makepolo.com/product-detail/100190469990.html');
INSERT INTO `ad_product` VALUES (255, 13, '塑料颗粒用双电机直排筛粉机 明洋直排筛分设备', '7800.00元', '新乡市明洋筛分机械有限公司', '15903033385\n/\n0373-5755777', '2020-02-18 06:11:04', 'http://china.makepolo.com/product-detail/100324891335.html');
INSERT INTO `ad_product` VALUES (256, 13, '圆形振动筛 食品调料 果汁多用振动筛 筛分过滤分离多功能旋振筛', '1000元/件', '新乡市鹏鼎机械设备有限公司', '13525011399\n/\n-', '2020-02-18 06:11:05', 'http://china.makepolo.com/product-detail/101064735998.html');
INSERT INTO `ad_product` VALUES (257, 13, '天龙牌旋振筛，振动筛，筛分设备，分离设备', '面议', '河南天龙机械制造有限公司(销售部)', '13569873228\n/\n 0373 3350555', '2020-02-18 06:11:05', 'http://china.makepolo.com/product-detail/100119446228.html');
INSERT INTO `ad_product` VALUES (258, 13, '壤土振动筛 过筛壤土里的粉粒、砂粒-壤土筛分过滤分离机械', '5300.00元', '新乡市东升环保设备有限公司', '18937367711\n/\n-', '2020-02-18 06:11:05', 'http://china.makepolo.com/product-detail/100620242926.html');
INSERT INTO `ad_product` VALUES (259, 13, '矿石筛分装置 旋转筛分斗 水砂过滤 沙石分离 滚筒筛分斗', '16880元/个', '山东松川工程机械有限公司', '13355126961\n/\n-', '2020-02-18 06:11:05', 'http://china.makepolo.com/product-detail/101059581124.html');
INSERT INTO `ad_product` VALUES (260, 13, '质量最好 价格低 供应旋转振动筛 用于筛分过滤、固液分离', '6500.00元', '新乡市绿声通用机械设备制造有限公司', '13937348704\n/\n0373-5860668/3333922', '2020-02-18 06:11:06', 'http://china.makepolo.com/product-detail/100334113497.html');
INSERT INTO `ad_product` VALUES (261, 13, '新乡世华厂家供应加缘式过滤筛 专用固液分离高效筛分机 供应全国', '7000元/台', '新乡市世华振动机械有限公司', '13949620946\n/\n0373-2685760', '2020-02-18 06:11:06', 'http://china.makepolo.com/product-detail/101024144083.html');
INSERT INTO `ad_product` VALUES (262, 13, '轻质碳酸钙专用筛分设备三元旋振筛新乡振威厂价直销', '9500.00元', '新乡市振威筛分机械有限公司', '13623906771\n/\n0373-5726998', '2020-02-18 06:11:06', 'http://china.makepolo.com/product-detail/100332028146.html');
INSERT INTO `ad_product` VALUES (263, 13, '肥料筛分设备 固液分离振动筛  树脂粉直排筛', '10000元/件', '新乡市恒宇机械设备有限公司', '15937327517\n/\n0373-5712316', '2020-02-18 06:11:06', 'http://china.makepolo.com/product-detail/100745629817.html');
INSERT INTO `ad_product` VALUES (264, 13, '涂料筛分设备_专用加缘筛_过滤分离筛机', '1000元/台', '新乡市锐成机械设备有限公司', '13462348443\n/\n0373-5058600', '2020-02-18 06:11:06', 'http://china.makepolo.com/product-detail/100754319362.html');
INSERT INTO `ad_product` VALUES (265, 13, '浙江供应建筑机械筛沙机 沙石分离 全自动筛沙机 筛分设备', '4100.00元', '安平县飞天机械厂', '13833897705\n/\n0318-5183466', '2020-02-18 06:11:07', 'http://china.makepolo.com/product-detail/100346994750.html');
INSERT INTO `ad_product` VALUES (266, 13, '转让二手过滤几 二手分离机 离心机设备  二手筛分设备', '10000元/台', '梁山县浩运二手化工设备经营部', '13615479600\n/\n0136-1547960', '2020-02-18 06:11:07', 'http://china.makepolo.com/product-detail/101046918979.html');
INSERT INTO `ad_product` VALUES (267, 13, 'VIP批发供应高岭土筛分设备 振动筛 筛选设备 直线振动筛', '22000.00元', '新乡市德重机械有限公司', '15837386795\n/\n 0373 5077026', '2020-02-18 06:11:07', 'http://china.makepolo.com/product-detail/100222133807.html');
INSERT INTO `ad_product` VALUES (268, 13, '碎米分离振动筛  花生抽风式大小分级筛分机 五谷杂粮过滤除杂机', '1000元/台', '济宁市丰瑞机械有限公司', '15345377639\n/\n0537-3650334', '2020-02-18 06:11:07', 'http://china.makepolo.com/product-detail/101036321128.html');
INSERT INTO `ad_product` VALUES (269, 13, '厂家不锈钢液体筛分机 固液分离电筛机 振动筛机豆浆果汁过滤', '5500元/台', '新乡市大用振动设备有限公司', '15637336530\n/\n-', '2020-02-18 06:11:08', 'http://china.makepolo.com/product-detail/101056119453.html');
INSERT INTO `ad_product` VALUES (270, 13, 'Finex22筛分机高速过滤树脂干湿分离振动筛', '200000元/件', '拉塞尔工业设备（上海）有限公司', '18621517678\n/\n021-64264030', '2020-02-18 06:11:08', 'http://china.makepolo.com/product-detail/101040324068.html');
INSERT INTO `ad_product` VALUES (271, 13, '淀粉专用振动筛 圆形筛分设备，圆振动筛', '12000元/台', '新乡市未来振动设备有限公司', '13333738691\n/\n-', '2020-02-18 06:11:08', 'http://china.makepolo.com/product-detail/101062243768.html');
INSERT INTO `ad_product` VALUES (272, 13, '高速振动筛 粉体振动筛机 固液分离筛分设备', '6300.00元', '东莞市建星环保科技有限公司', '13829249968\n/\n0769-89870061', '2020-02-18 06:11:08', 'http://china.makepolo.com/product-detail/100430939787.html');
INSERT INTO `ad_product` VALUES (273, 13, '筛分设备/旋振筛', '6500元/台', '新乡市共成振动设备有限公司', '13525008219\n/\n0373-2513806', '2020-02-18 06:11:09', 'http://china.makepolo.com/product-detail/32509745.html');
INSERT INTO `ad_product` VALUES (274, 13, '厂家直销 筛分分级设备', '6600.00元', '新乡市天丰振动机械有限公司', '13603730156\n/\n0373-3358862', '2020-02-18 06:11:09', 'http://china.makepolo.com/product-detail/100365164458.html');
INSERT INTO `ad_product` VALUES (275, 13, '粮食过滤、分离、筛分设备--hyl-25型谷物筛分机，玉米振动筛', '26000元/件', '新乡市宏源振动设备有限公司', '13223734129\n/\n0373-2677463', '2020-02-18 06:11:09', 'http://china.makepolo.com/product-detail/100820735997.html');
INSERT INTO `ad_product` VALUES (276, 13, '供应过滤、分离、筛分设备 DZSF系列沙土筛分机', '5500元/台', '宏源振动设备有限公司', '18339546509\n/\n0373-2678390', '2020-02-18 06:11:09', 'http://china.makepolo.com/product-detail/101020910048.html');
INSERT INTO `ad_product` VALUES (277, 13, '过滤、分离、筛分设备筛沙机选矿设备', '10000元/台', '宁津县鑫力达机械设备有限公司', '15969765954\n/\n0534-5682828', '2020-02-18 06:11:10', 'http://china.makepolo.com/product-detail/100771195606.html');
INSERT INTO `ad_product` VALUES (278, 13, '滤尘过滤器产品特点 过滤、分离、筛分设备', '面议', '山东神华机械制造有限公司', '18553715758\n/\n0537-3151329', '2020-02-18 06:11:10', 'http://china.makepolo.com/product-detail/100909828929.html');
INSERT INTO `ad_product` VALUES (279, 13, '热销过滤除沫器，分离筛分设备丝网除沫器，张家口丝网除沫器', '100元/件', '安平县九鑫过滤网业有限公司', '13833888883\n/\n0318-7800015', '2020-02-18 06:11:10', 'http://china.makepolo.com/product-detail/101050025184.html');
INSERT INTO `ad_product` VALUES (280, 13, '食品调料 果汁多用振动筛 筛分过滤分离多功能旋振筛', '1000元/件', '新乡市鹏鼎机械设备有限公司', '13525011399\n/\n-', '2020-02-18 06:11:10', 'http://china.makepolo.com/product-detail/101064736018.html');
INSERT INTO `ad_product` VALUES (281, 13, '特价筛选设备、筛分设备、分级机械,旋振筛-筛分行业的优选', '5000元', '上海亿筛机械有限公司', '18049754649\n/\n021-64423600', '2020-02-18 06:11:11', 'http://china.makepolo.com/product-detail/100193323879.html');
INSERT INTO `ad_product` VALUES (282, 13, '陶瓷浆液筛分设备_专用加缘筛_过滤分离筛机', '1000元/台', '新乡市锐成机械设备有限公司', '13462348443\n/\n0373-5058600', '2020-02-18 06:11:11', 'http://china.makepolo.com/product-detail/100754319093.html');
INSERT INTO `ad_product` VALUES (283, 13, '提供不锈钢液体筛分机 固液分离电筛机 振动筛机豆浆果汁过滤', '5500元/台', '新乡市大用振动设备有限公司', '15637336530\n/\n-', '2020-02-18 06:11:11', 'http://china.makepolo.com/product-detail/101053213407.html');
INSERT INTO `ad_product` VALUES (284, 13, '供应安平筛沙机 民用筛沙机 电动筛分设备', '4100.00元', '安平县飞天机械厂', '13833897705\n/\n0318-5183466', '2020-02-18 06:11:11', 'http://china.makepolo.com/product-detail/100347006444.html');
INSERT INTO `ad_product` VALUES (285, 13, '供应食品调味剂旋振筛 多层振动筛分 过滤 分离筛分设备', '1元/台', '宏源振动设备有限公司', '18339546509\n/\n0373-2678390', '2020-02-18 06:11:11', 'http://china.makepolo.com/product-detail/100940054471.html');
INSERT INTO `ad_product` VALUES (286, 13, '振动筛 亚麻籽筛分设备 振动过滤亚麻籽颗粒 大小分离筛', '4500元/台', '新乡市宏源振动设备有限公司', '13569833759\n/\n0373-2610868', '2020-02-18 06:11:11', 'http://china.makepolo.com/product-detail/100910976935.html');
INSERT INTO `ad_product` VALUES (287, 14, '德国EFD感应热处理设备', '1200元/台', '天津赛力斯自动化科技有限公司', '18622238076\n/\n022-27312816', '2020-02-18 06:11:11', 'http://china.makepolo.com/product-detail/101060929340.html');
INSERT INTO `ad_product` VALUES (288, 14, 'JX-15 热处理设备', '5000.00元', '深圳市聚鑫感应加热设备技术有限公司', '15816876556\n/\n0755-28670086', '2020-02-18 06:11:12', 'http://china.makepolo.com/product-detail/100378235502.html');
INSERT INTO `ad_product` VALUES (289, 14, '高频淬火炉-链轮热处理设备', '1000元/件', '河南郑州英福伦高频设备有限公司', '15838311591\n/\n0371-67995355', '2020-02-18 06:11:12', 'http://china.makepolo.com/product-detail/101033455696.html');
INSERT INTO `ad_product` VALUES (290, 14, '供应订做钢铁两用式浇包/铸造设备八环铸造公司生产/热处理设备', '5000.00元', '武穴市八环冲天炉成套设备有限公司', '13872041137\n/\n0713-6273211', '2020-02-18 06:11:12', 'http://china.makepolo.com/product-detail/100449576730.html');
INSERT INTO `ad_product` VALUES (291, 14, '塑料成型产品加热水煮箱、塑料热处理设备', '98000元', '余姚市巨能节能科技有限公司', '13567459477\n/\n0574-66204788', '2020-02-18 06:11:12', 'http://china.makepolo.com/product-detail/100167885828.html');
INSERT INTO `ad_product` VALUES (292, 14, '大型金属五金件热锻 淬火 回火 热熔 钎焊 烧结等热处理设备', '19800.00元', '台州市路桥红日电子设备厂', '15068662186\n/\n0576-82338825', '2020-02-18 06:11:12', 'http://china.makepolo.com/product-detail/100379929053.html');
INSERT INTO `ad_product` VALUES (293, 14, '佛山卖大齿轮淬火机、大轴心淬火机，高频加热机，金属热处理设备', '1元/套', '佛山市顺德区伟迪生精密机电有限公司', '13433119639\n/\n0757-28797980', '2020-02-18 06:11:12', 'http://china.makepolo.com/product-detail/101006221828.html');
INSERT INTO `ad_product` VALUES (294, 14, '细长轴 淬火机床 成套设备 卧式通用 10米长轴 感应热处理设备', '面议', '十堰天舒机电科技有限公司', '13597863170\n/\n0719-8208681', '2020-02-18 06:11:13', 'http://china.makepolo.com/product-detail/100429084639.html');
INSERT INTO `ad_product` VALUES (295, 14, '供应大型压力容器球罐焊前预热焊后消氢热处理设备', '面议', '广州市蓝炬燃烧设备有限公司', '13380030281\n/\n020-84854520/815', '2020-02-18 06:11:13', 'http://china.makepolo.com/product-detail/100363020011.html');
INSERT INTO `ad_product` VALUES (296, 14, '供应热处理设备，热处理温度控制箱', '4500.00元', '苏州航达热处理科技有限公司', '13511612432\n/\n0512-63670028/663670066', '2020-02-18 06:11:13', 'http://china.makepolo.com/product-detail/100060035597.html');
INSERT INTO `ad_product` VALUES (297, 14, '淬火，退火，热处理设备，到张家港刚华高频电子厂', '18000.00元', '张家港市塘桥镇鹿苑钢华高频电子厂', '18913613313\n/\n0512-58389811', '2020-02-18 06:11:13', 'http://china.makepolo.com/product-detail/100381705598.html');
INSERT INTO `ad_product` VALUES (298, 14, '五金工具表面热处理设备', '10000.00元/个', '江阴市瑞邦机电有限公司', '18961678400\n/\n0510-81699399', '2020-02-18 06:11:14', 'http://china.makepolo.com/product-detail/100539690438.html');
INSERT INTO `ad_product` VALUES (299, 14, '供应超音频热处理设备', '10000.00元', '潍坊华研机电技术有限公司', '13853633083\n/\n0536-8303708', '2020-02-18 06:11:14', 'http://china.makepolo.com/product-detail/100454358217.html');
INSERT INTO `ad_product` VALUES (300, 14, '焊接热处理设备出租，品种全，价格低，服务优', '10000.00元', '吴江市平望中创电热电器厂', '13606252967\n/\n0512-63671878', '2020-02-18 06:11:14', 'http://china.makepolo.com/product-detail/100387064588.html');
INSERT INTO `ad_product` VALUES (301, 14, '供应DWK便携式智能温度控制箱热处理设备', '15800.00元', '吴江市龙马电器有限公司', '15851689699\n/\n0512-63680766', '2020-02-18 06:11:14', 'http://china.makepolo.com/product-detail/100295161117.html');
INSERT INTO `ad_product` VALUES (302, 14, '供应高频热处理设备、超音频锻造加热设备', '面议', '昆山鑫鑫高频加热设备有限公司', '18962423858\n/\n0512-50192758', '2020-02-18 06:11:15', 'http://china.makepolo.com/product-detail/100368205229.html');
INSERT INTO `ad_product` VALUES (303, 14, '供应热处理设备用于轧辊和轴类淬火即淬火机床', '面议', '无锡市理田机电设备有限公司', '13301510710\n/\n0510-85262952', '2020-02-18 06:11:15', 'http://china.makepolo.com/product-detail/100081854606.html');
INSERT INTO `ad_product` VALUES (304, 14, '批发供应耐热钢铸件，热处理设备配件 开封中宇电炉', '面议', '开封中宇科技电炉工程有限公司', '18637807720\n/\n0371-22810123', '2020-02-18 06:11:15', 'http://china.makepolo.com/product-detail/100275419806.html');
INSERT INTO `ad_product` VALUES (305, 14, '九辰烘干设备 热处理设备', '2500元/台', '淄博九辰节能科技有限公司', '13031782006\n/\n0533-3593344/3593322/3590990', '2020-02-18 06:11:15', 'http://china.makepolo.com/product-detail/100048507161.html');
INSERT INTO `ad_product` VALUES (306, 14, '高频加热设备 淬火设备 热处理设备', '面议', '义乌市巡科电器有限公司', '13325791520\n/\n0579-85797305', '2020-02-18 06:11:15', 'http://china.makepolo.com/product-detail/100450301964.html');
INSERT INTO `ad_product` VALUES (307, 14, '优价提供美国原厂WAUKEE 热处理设备 加热设备 S-5SS流量计', '面议', '南京南鼎商贸有限公司', '13218026044\n/\n025-68853616', '2020-02-18 06:11:15', 'http://china.makepolo.com/product-detail/100213815892.html');
INSERT INTO `ad_product` VALUES (308, 14, '不锈钢制品热处理设备', '3800元/台', '济南亿冠机电设备有限公司', '18865928583\n/\n-', '2020-02-18 06:11:15', 'http://china.makepolo.com/product-detail/101048229598.html');
INSERT INTO `ad_product` VALUES (309, 14, '汽车配件 摩拖车配件高频淬火热处理设备', '1元/套', '中山市豪宇机电有限公司', '13680141789\n/\n0760-86151989', '2020-02-18 06:11:16', 'http://china.makepolo.com/product-detail/101061772963.html');
INSERT INTO `ad_product` VALUES (310, 14, '比亚特全自动焊接热处理设备', '36000元/台', '郑州比亚特自动化设备有限公司', '18103828979\n/\n0371-61369929', '2020-02-18 06:11:16', 'http://china.makepolo.com/product-detail/101033009114.html');
INSERT INTO `ad_product` VALUES (311, 14, '供应高频透热、焊接、回火、 退火、 热处理设备', '18000元/套', '河南中兴电气有限公司', '15038917136\n/\n0374-5611999', '2020-02-18 06:11:16', 'http://china.makepolo.com/product-detail/100804978885.html');
INSERT INTO `ad_product` VALUES (312, 14, '供应汽车配件、摩配高频淬火处理设备热处理设备13683820215', '38000.00元', '郑州华韵电磁科技有限公司', '13683820215\n/\n0371-86599898', '2020-02-18 06:11:16', 'http://china.makepolo.com/product-detail/100491271762.html');
INSERT INTO `ad_product` VALUES (313, 14, '高频感应加热炉厂家高频热处理设备', '18000元/台', '河南超锋电气设备有限公司', '18317459662\n/\n0374-2355679', '2020-02-18 06:11:16', 'http://china.makepolo.com/product-detail/100744313547.html');
INSERT INTO `ad_product` VALUES (314, 14, '供应高频电源， 高频机 ，热处理设备', '88888/套', '株洲市华阳高中频设备有限公司', '13307335218\n/\n0731-28289859', '2020-02-18 06:11:16', 'http://china.makepolo.com/product-detail/100308519197.html');
INSERT INTO `ad_product` VALUES (315, 14, '厂家直销金属热处理设备', '8300元/台', '永康市跃龙电子设备有限公司', '13967974710\n/\n0579-87218762', '2020-02-18 06:11:19', 'http://china.makepolo.com/product-detail/100791698838.html');
INSERT INTO `ad_product` VALUES (316, 14, '永达高频淬火感应加热设备热处理设备', '30000元/台', '沈丘永达高频设备有限公司', '13839481109\n/\n-', '2020-02-18 06:11:19', 'http://china.makepolo.com/product-detail/101062833455.html');
INSERT INTO `ad_product` VALUES (317, 14, '昆山超音频锻打热处理设备', '18000元/台', '昆山泰斗机电设备有限公司', '15962677950\n/\n0512-50126138', '2020-02-18 06:11:20', 'http://china.makepolo.com/product-detail/100996237532.html');
INSERT INTO `ad_product` VALUES (318, 14, '多种高品质的热处理设备', '38000.00元', '江阴市新源机械制造有限公司', '13616167695\n/\n- - -', '2020-02-18 06:11:20', 'http://china.makepolo.com/product-detail/100205262459.html');
INSERT INTO `ad_product` VALUES (319, 14, '高频加热炉高效钢套热处理设备', '32000元/件', '河南超锋电气有限公司', '13069504241\n/\n0374-2355679', '2020-02-18 06:11:20', 'http://china.makepolo.com/product-detail/100405654162.html');
INSERT INTO `ad_product` VALUES (320, 14, '超高频感应加热设备 6KW加热机 金属工件表面热处理设备', '13000.00元', '深圳市中星科高频技术有限公司', '18923429199\n/\n0755-18923429199', '2020-02-18 06:11:20', 'http://china.makepolo.com/product-detail/100370885747.html');
INSERT INTO `ad_product` VALUES (321, 14, '数控淬火机床 高频感应加热热处理设备', '15000.00元', '东莞市力华机械设备有限公司', '13412622426\n/\n0769-82380901', '2020-02-18 06:11:20', 'http://china.makepolo.com/product-detail/100534135183.html');
INSERT INTO `ad_product` VALUES (322, 14, '厂家生产供应HR-TP70超音频感应加热设备 热处理设备', '19800.00元', '台州市路桥红日电子设备厂', '15068662186\n/\n0576-82338825', '2020-02-18 06:11:20', 'http://china.makepolo.com/product-detail/100379606241.html');
INSERT INTO `ad_product` VALUES (323, 14, '轧辊 淬火机床 成套设备 立式 感应器扫描淬火 感应热处理设备', '面议', '十堰天舒机电科技有限公司', '13597863170\n/\n0719-8208681', '2020-02-18 06:11:20', 'http://china.makepolo.com/product-detail/100428326922.html');
INSERT INTO `ad_product` VALUES (324, 14, '压花辊表面淬火热处理设备', '1000元/件', '河南郑州英福伦高频设备有限公司', '15838311591\n/\n0371-67995355', '2020-02-18 06:11:21', 'http://china.makepolo.com/product-detail/101038981105.html');
INSERT INTO `ad_product` VALUES (325, 14, '张家港高频退火 淬火  热处理设备厂家', '18000.00元', '张家港市塘桥镇鹿苑钢华高频电子厂', '18913613313\n/\n0512-58389811', '2020-02-18 06:11:21', 'http://china.makepolo.com/product-detail/100285924170.html');
INSERT INTO `ad_product` VALUES (326, 14, '供应耐热钢铸件，开封中宇电炉 热处理设备配件', '面议', '开封中宇科技电炉工程有限公司', '18637807720\n/\n0371-22810123', '2020-02-18 06:11:21', 'http://china.makepolo.com/product-detail/100267513314.html');
COMMIT;

-- ----------------------------
-- Table structure for ad_search_log
-- ----------------------------
DROP TABLE IF EXISTS `ad_search_log`;
CREATE TABLE `ad_search_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `scentent` varchar(255) NOT NULL DEFAULT '' COMMENT '内容',
  `url` varchar(255) DEFAULT '' COMMENT '请求链接',
  `method` varchar(50) NOT NULL DEFAULT '' COMMENT '请求类型',
  `type` varchar(50) NOT NULL DEFAULT '' COMMENT '资源类型',
  `param` text NOT NULL COMMENT '请求参数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1319 DEFAULT CHARSET=utf8 COMMENT='搜索日志';

-- ----------------------------
-- Records of ad_search_log
-- ----------------------------
BEGIN;
INSERT INTO `ad_search_log` VALUES (9, 'PHP', 's=//home/category/search&stype=PHP', 'GET', 'search', 'stype=PHP', 1564965457, 1);
INSERT INTO `ad_search_log` VALUES (10, 'API', 's=//home/category/search&stype=API', 'GET', 'search', 'stype=API', 1564965519, 1);
INSERT INTO `ad_search_log` VALUES (11, '刷机', 's=//home/category/search&stype=%E5%88%B7%E6%9C%BA', 'GET', 'search', 'stype=刷机', 1564965616, 1);
INSERT INTO `ad_search_log` VALUES (12, '生活', 's=//home/category/search&stype=%E7%94%9F%E6%B4%BB', 'GET', 'search', 'stype=生活', 1564965855, 1);
INSERT INTO `ad_search_log` VALUES (1310, 'igt', 's=/home/category/search.html&stype=igt&type=tags', 'GET', 'tags', 'stype=igt', 1578295176, 1);
INSERT INTO `ad_search_log` VALUES (1311, 'GIT', 's=/home/category/search.html&stype=GIT&type=tags', 'GET', 'tags', 'stype=GIT', 1578300163, 1);
INSERT INTO `ad_search_log` VALUES (1312, 'brew', 's=/home/category/search.html&stype=brew&type=tags', 'GET', 'tags', 'stype=brew', 1578310832, 1);
INSERT INTO `ad_search_log` VALUES (1313, 'git', 's=/home/category/search.html&stype=git&type=tags', 'GET', 'tags', 'stype=git', 1578316053, 1);
INSERT INTO `ad_search_log` VALUES (1314, '设计模式', 's=/home/category/search.html&stype=%E8%AE%BE%E8%AE%A1%E6%A8%A1%E5%BC%8F&type=tags', 'GET', 'tags', 'stype=设计模式', 1578316704, 1);
INSERT INTO `ad_search_log` VALUES (1315, 'php', 's=/home/category/search.html&stype=php&type=tags', 'GET', 'tags', 'stype=php', 1578321929, 1);
INSERT INTO `ad_search_log` VALUES (1316, 'Restful', 's=/home/category/search.html&stype=Restful&type=tags', 'GET', 'tags', 'stype=Restful', 1578330394, 1);
INSERT INTO `ad_search_log` VALUES (1317, 'git私服', 's=/home/category/search.html&stype=git%E7%A7%81%E6%9C%8D&type=tags', 'GET', 'tags', 'stype=git私服', 1578331908, 1);
INSERT INTO `ad_search_log` VALUES (1318, 'mysql', 's=/home/category/search.html&stype=mysql&type=tags', 'GET', 'tags', 'stype=mysql', 1578339458, 1);
COMMIT;

-- ----------------------------
-- Table structure for ad_system
-- ----------------------------
DROP TABLE IF EXISTS `ad_system`;
CREATE TABLE `ad_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '名称',
  `content` char(255) NOT NULL COMMENT '值',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态1启用，2禁用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `title` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ad_system
-- ----------------------------
BEGIN;
INSERT INTO `ad_system` VALUES (52, 'sitename', 'LuiciCms', 1, '2019-12-31 12:17:04', '2019-12-31 12:17:04');
INSERT INTO `ad_system` VALUES (53, 'domain', 'http://layci.kevinfei.com/welcome/index', 1, '2019-12-31 12:17:04', '2019-12-31 12:17:04');
INSERT INTO `ad_system` VALUES (54, 'cache', '|png|gif|jpg|jpeg|zip|rar|', 1, '2019-12-31 12:17:04', '2019-12-31 12:17:04');
INSERT INTO `ad_system` VALUES (55, 'title', 'LuiciCms 简洁易用后台管理系统', 1, '2019-12-31 12:17:04', '2019-12-31 12:17:04');
INSERT INTO `ad_system` VALUES (56, 'keywords', 'LuiciCms、快速搭建 、高效 、简洁 、小巧的后台内容管理系统', 1, '2019-12-31 12:17:04', '2019-12-31 12:17:04');
INSERT INTO `ad_system` VALUES (57, 'descript', 'LuiciCms、快速搭建 、高效 、简洁 、小巧的后台内容管理系统', 1, '2019-12-31 12:17:04', '2019-12-31 12:17:04');
INSERT INTO `ad_system` VALUES (58, 'copyright', '© 2020 layci.kevinfei.com MIT license .', 1, '2019-12-31 12:17:04', '2019-12-31 12:17:04');
COMMIT;

-- ----------------------------
-- Table structure for ad_user
-- ----------------------------
DROP TABLE IF EXISTS `ad_user`;
CREATE TABLE `ad_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `mobile` char(20) DEFAULT '' COMMENT '手机',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `sex` int(11) DEFAULT '0',
  `integral` int(11) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0禁用/1启动',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` varchar(16) NOT NULL DEFAULT '' COMMENT '上次登录IP',
  `login_count` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='会员';

-- ----------------------------
-- Records of ad_user
-- ----------------------------
BEGIN;
INSERT INTO `ad_user` VALUES (1, 'lejRej', '13800138000', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 1, 1539134525, '127.0.0.1', 1, 1539134389, 1539134525);
INSERT INTO `ad_user` VALUES (2, 'jingfei', '13681406358', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 1, 1539134525, '127.0.0.1', 3, 1539134389, 1539134389);
INSERT INTO `ad_user` VALUES (3, 'kevinfei', '13800138000', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 1, 1539134525, '127.0.0.1', 5, 1539134389, 1539134389);
INSERT INTO `ad_user` VALUES (4, 'sdHag', '13800138000', '96e79218965eb72c92a549dd5a330112', 0, 10, 1, 1539134525, '127.0.0.1', 76, 1539134389, 1580962538);
INSERT INTO `ad_user` VALUES (24, 'zhaNv', '13800138000', '96e79218965eb72c92a549dd5a330112', 0, 1111, 1, 0, '', 0, 1580899506, 1581028230);
INSERT INTO `ad_user` VALUES (27, 'kkkkkk', '13800138000', '96e79218965eb72c92a549dd5a330112', 0, 100, 1, 0, '', 0, 1581028868, 1581028868);
INSERT INTO `ad_user` VALUES (28, 'llllllllll', '13800138000', '96e79218965eb72c92a549dd5a330112', 0, 5555, 1, 0, '', 0, 1581028882, 1581028882);
INSERT INTO `ad_user` VALUES (29, 'pppppppp', '13800138000', '7fa8282ad93047a4d6fe6111c93b308a', 0, 999, 1, 0, '', 0, 1581028896, 1581028896);
INSERT INTO `ad_user` VALUES (30, 'uuuuuuu', '13800138000', '7fa8282ad93047a4d6fe6111c93b308a', 0, 8888, 1, 0, '', 0, 1581028910, 1581028910);
INSERT INTO `ad_user` VALUES (33, 'QQQQQQQQ', '13800138000', '96e79218965eb72c92a549dd5a330112', 0, 111, 1, 0, '', 0, 1581029806, 1581112611);
INSERT INTO `ad_user` VALUES (36, 'WWWWWWW', '13800138000', 'dcb64c94e1b81cd1cd3eb4a73ad27d99', 0, 4444, 1, 0, '', 0, 1581029850, 1581112627);
INSERT INTO `ad_user` VALUES (40, 'EEEEEEEEEEE', '13800138000', '1d09b3bfa8cc26dcba9afff1f1224f84', 0, 1111, 1, 0, '', 0, 1581112714, 1581112714);
COMMIT;

-- ----------------------------
-- Table structure for ad_user_log
-- ----------------------------
DROP TABLE IF EXISTS `ad_user_log`;
CREATE TABLE `ad_user_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '管理员用户名',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `ip` varchar(16) NOT NULL DEFAULT '' COMMENT 'ip地址',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '请求链接',
  `method` varchar(32) NOT NULL DEFAULT '' COMMENT '请求类型',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '资源类型',
  `param` text NOT NULL COMMENT '请求参数',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '日志备注',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员日志';

SET FOREIGN_KEY_CHECKS = 1;

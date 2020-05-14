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

 Date: 26/03/2020 02:05:42
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
INSERT INTO `ad_admin` VALUES (6, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '13800138000', '799788777@qq.com', 1, 1584025319, '127.0.0.1', 0, 1579584689, 1584025319);
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
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员日志';

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='文章';

-- ----------------------------
-- Records of ad_article
-- ----------------------------
BEGIN;
INSERT INTO `ad_article` VALUES (1, 2, 'php strlen mb_strlen计算中英文混排字符串长度', '', '成长的小白菜', '本文主要是介绍 在php中常见的计算字符串长度的函数有：strlen 和 mb_strlen，下面是对这两个函数的比较说明（编码方式UTF8）', '', '<p>在php中常见的计算字符串长度的函数有：strlen和mb_strlen，下面是对这两个函数的比较说明（编码方式UTF8）</p><p><br/></p><p>比较strlen和mb_strlen</p><p><br/>当字符全是英文字符的时候，两者是一样。这里主要比较一下，中英文混排的时候，两个计算结果。（测试时编码方式是UTF8）</p><p><br/>&lt;?php <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;$str=‘中文a字1符‘; <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo strlen($str); <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo ‘‘; <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo mb_strlen($str,‘UTF8‘); <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//输出结果 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//14 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//6 <br/>?> <br/></p><p><br/>结果分析：在strlen计算时，对待一个UTF8的中文字符是3个长度，所以“中文a字1符”长度是3*4+2=14 <br/>在mb_strlen计算时，选定内码为UTF8，则会将一个中文字符当作长度1来计算，所以“中文a字1符”长度是6 <br/>关于中英文混排串的占位符计算： <br/>利用这两个函数则可以联合计算出一个中英文混排的串的占位是多少（一个中文字符的占位是2，英文字符是1），计算的方法是：如果一个混排字符串有a个中文，b个英文，占位是: <br/></p><p><br/></p><p><br/>&lt;?php <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$str=‘中文a字1符‘; <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//计算如下 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo (strlen($str) + mb_strlen($str,‘UTF8‘)) / 2; <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//输出结果 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//10 <br/>?> <br/></p><p><br/>例如 “中文a字1符” 的strlen($str)值是14，mb_strlen($str)值是6，则可以计算出“中文a字1符”的占位是10. <br/>附网站的一篇文章：<br/>还是有关中文的问题。PHP内置的字符串长度函数strlen无法正确处理中文字符串，它得到的只是字符串所占的字节数。对于GB2312的中文编码，strlen得到的值是汉字个数的2倍，而对于UTF-8编码的中文，就是3倍的差异了（在UTF-8编码下，一个汉字占3个字节）。 <br/><br/>采用mb_strlen函数可以较好地解决这个问题。mb_strlen的用法和strlen类似，只不过它有第二个可选参数用于指定字符编码。例如得到UTF-8的字符串$str长度，可以用mb_strlen($str,&#39;UTF-8&#39;)。如果省略第二个参数，则会使用PHP的内部编码。内部编码可以通过mb_internal_encoding()函数得到。需要注意的是，mb_strlen并不是PHP核心函数，使用前需要确保在php.ini中加载了php_mbstring.dll，即确保“extension=php_mbstring.dll”这一行存在并且没有被注释掉，否则会出现未定义函数的问题。</p><p>&nbsp;</p>', 269, 0, 0, 1, 100, 'strlen，string，php，mb_strlen', '计算中英文混排字符串长度', 0, 1553226602, 1566846224);
INSERT INTO `ad_article` VALUES (2, 2, 'git利用post-receive自动化部署', '/public/upload/image/20190417/7676e689b32b762112274b6f795054f0.jpg', '成长的小白菜', '实现git利用post-receive自动化部署项目，git push 直接完成代码部署到服务器的目录，利用git的hooks中的post-receive来实现代码提交完成之后的动作。将仓库指定一个--work-tree然后进行检出操作checkout --force...', '', '<p>我自己的项目结构是这样的，每一个仓库对应一个项目，例如<code>public/wx</code>项目对应<code>repo/wx.git</code>仓库</p><pre class=\"hljs typescript\">.\r\n├──&nbsp;public\r\n&nbsp;&nbsp;&nbsp;&nbsp;└──&nbsp;wx&nbsp;&nbsp;&nbsp;//&nbsp;这是我们的web代码部署目录\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|──&nbsp;index.php\r\n│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;test2.ph\r\n│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;test3.php\r\n│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└──&nbsp;test.php\r\n└──&nbsp;repo&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;这个是我们的仓库目录\r\n&nbsp;&nbsp;&nbsp;&nbsp;└──&nbsp;wx.git&nbsp;//&nbsp;这个对应wx项目的仓库\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;branches\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;config\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;description\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;HEAD\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;hooks&nbsp;//&nbsp;post-receive钩子代码写在这里面\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;index\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;info\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├──&nbsp;objects\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└──&nbsp;refs</pre><p>再看下hooks文件目录</p><pre class=\"hljs css\">.\r\n├──&nbsp;applypatch-msg.sample\r\n├──&nbsp;commit-msg.sample\r\n├──&nbsp;post-commit.sample\r\n├──&nbsp;post-receive\r\n├──&nbsp;post-receive.sample\r\n├──&nbsp;post-update.sample\r\n├──&nbsp;pre-applypatch.sample\r\n├──&nbsp;pre-commit.sample\r\n├──&nbsp;prepare-commit-msg.sample\r\n├──&nbsp;pre-rebase.sample\r\n└──&nbsp;update.sample</pre><p>我们将<code>post-receive.sample</code>复制一份<code>post-receive</code>，并且编写代码如下</p><pre class=\"hljs properties\">#&nbsp;指定我的代码检出目录DIR=/www/public/wxgit&nbsp;--work-tree=${DIR}&nbsp;clean&nbsp;-fd\r\n\r\n#&nbsp;直接强制检出git&nbsp;--work-tree=${DIR}&nbsp;checkout&nbsp;--force</pre><h2>如何生成目录</h2><p>上面看到的repo目录中的<code>wx.git</code>实际上是一个裸仓库，我们用下面的命令来生成这样一个仓库。</p><pre class=\"hljs properties\">cd&nbsp;/www/repo\r\n\r\ngit&nbsp;init&nbsp;--bare&nbsp;wx.git</pre><p>对于代码部署目录和仓库我们已经通过<code>post-receive</code>进行了关联了，因为我们一旦将代码push到仓库，那么会自动检出到<code>publish/wx</code>目录下。</p><h2>远程部署</h2><p>在本地电脑上，我们添加远程仓库</p><pre class=\"hljs groovy\">git&nbsp;init\r\n\r\ngit&nbsp;remote&nbsp;add&nbsp;origin&nbsp;git@xxx.xxx.xxx.xxx:/www/repo/wx.git</pre><p>这个时候我们添加了远程仓库，那么我们来测试下<code>push</code>操作</p><pre class=\"hljs properties\">touch&nbsp;index.php\r\n\r\ngit&nbsp;add&nbsp;.\r\n\r\ngit&nbsp;commit&nbsp;-m&nbsp;&#39;test&#39;\r\n\r\ngit&nbsp;push&nbsp;origin&nbsp;master</pre><p>可能会提示一个<code>--set-upstream</code>，直接执行下就好了。执行完之后我们登陆服务器，会发现文件已经出现在<code>public/wx/index.php</code></p><h2>注意点</h2><ol class=\" list-paddingleft-2\"><li><p><span style=\"color: rgb(255, 0, 0);\">如果我们没有配置</span><code><span style=\"color: rgb(255, 0, 0);\">ssh免密码登陆</span></code><span style=\"color: rgb(255, 0, 0);\">的话，我们需要在</span><code><span style=\"color: rgb(255, 0, 0);\">push</span></code><span style=\"color: rgb(255, 0, 0);\">代码的时候输入密码</span></p></li><li><p><span style=\"color: rgb(255, 0, 0);\">如果我们添加的远程仓库不是</span><code><span style=\"color: rgb(255, 0, 0);\">root@xxx.xxx.xx.xx</span></code><span style=\"color: rgb(255, 0, 0);\">，例如是<code>git</code></span><code><span style=\"color: rgb(255, 0, 0);\">@xx.xx.xx.xx</span></code><span style=\"color: rgb(255, 0, 0);\">，那么我们要确保 git</span><span style=\"color: rgb(255, 0, 0);\">用户对</span><code><span style=\"color: rgb(255, 0, 0);\">wx.git</span></code><span style=\"color: rgb(255, 0, 0);\">目录下的文件有</span><code><span style=\"color: rgb(255, 0, 0);\">777</span></code><span style=\"color: rgb(255, 0, 0);\">权限。</span></p></li></ol><h3>新增仓库</h3><ol class=\" list-paddingleft-2\"><li><p>需要登陆远程服务器进行初始化<code>repo_name.git</code>仓库</p></li><li><p>需要手动创建<code>public/repo_name</code>文件夹，并且修改权限为777</p></li><li><p>需要重新编写<code>hooks/post-recieve</code>文件，修改里面的DIR路径为<code>public/repo_name</code></p></li></ol><p><br/></p>', 505, 0, 0, 1, 100, 'git自动化部署，post-receive', 'git自动化部署，post-receive，git利用post-receive自动化部署', 0, 1554712984, 1566174378);
INSERT INTO `ad_article` VALUES (4, 9, '分布式数据库拆表拆库的常用策略', '', '成长的小白菜', '在大容量，高负荷的web系统中，对数据库进行一系列拆分，可有效提升数据库容量和性能。在初学程序的早期，程序员通常都喜欢按传统数据库设计模式，设计为单库和单一功能表的结构，这样的结构在数据量和并发量达到一定程度之后，会出现严重性能问题和维护问题...', '/public/upload/image/20190417/518eef98bcf2061022ba1e3be2b42efb.jpg', '<p><br/></p><p>在大容量，高负荷的web系统中，对数据库进行一系列拆分，可有效提升数据库容量和性能。在初学程序的早期，程序员通常都喜欢按传统数据库设计模式，设计为单库和单一功能表的结构，这样的结构在数据量和并发量达到一定程度之后，会出现严重性能问题和维护问题。在出现问题的时候才着手进行优化，会非常痛苦，所以应该在系统架设之初就考虑好之后会出现的问题。</p><p>目前有些数据库策略是采用单库结构，然后通过同步分发到数台服务器实现读写分离。个人觉得这样的策略非常笨拙，还是想办法将其分隔开来好，否则每台机器的内存都很容易超支。</p><p>一般只对数据量比较大的表进行拆分，这应该没有什么异议；还有一种是有可能会进行维护的比较重要的表，比如文章目录表，如果有从其它系统倒数据进来的可能的话，也要拆掉，不然倒数据时一不小心把目录表弄坏了，发现忘了备份，那真是欲哭无泪。</p><p>下面来分析一下：</p><p><strong>一、时间结构</strong></p><p>如果业务系统对时效性较高，比如新闻发布系统的文章表，可以把数据库设计成时间结构，按时间分有几种结构：</p><p>1) 平板式:<br/>表类似：<br/>article_200901<br/>article_200902<br/>article_200903</p><p>用年来分还是用月可自定，但用日期的话表就太多了，也没这必要。一般建议是按月分就可以。</p><p>这种分法，其难处在于，假设我要列20条数据，结果这三张表里都有2条，那么业务上很有可能要求读三次表。如果时间长了，有几十张表，而每张表是0条，那不就是要读完整个系统的表才行么？另外这个结构，要作分页是比较难实现的。</p><p>主键：在这个系统中，主键是11位带毫秒的时间戳，不要用自动编号，否则难以通过主键定位到表，也可以在查询时带上时间，但比较烦琐。</p><p>2) 归档式:</p><p>表类似：<br/>article_old<br/>article_new</p><p>为了解决平板式的缺点，可以采用时间归档式设计，可以看到这个系统只有两张表。一张是旧文章表，一张是新文章表，新文章表放2个月的信息，每天定期把2个月中的最早一天的文章归入旧表中。这样一方面可以解决性能问题，因为一般新闻发布系统读取的都是新的内容，旧的内容读取少；第二可以委婉地解决功能问题，比如平板式所说的问题，在归档式中最多也只需要读2张表就完成了。</p><p>归档式的缺点在于旧表容量还是相对比较大，如果业务允许，可对旧表中的超旧内容进行再归档或直接清理掉。<br/><strong><br/>二、版块结构</strong></p><p>如果按照文章的所属版块进行拆表，比如新闻、体育版块拆表，一方面可以使每个表数据量分离，另一方面是各版块之间相互影响可降到最低。假如新闻版块的数据表损坏或需要维护，并不会影响到体育版块的正常工作，从而降低了风险。版块结构同时常用于bbs这样的系统。</p><p>板块结构也有几种分法：</p><p>1) 对应式:</p><p>对于版块数量不多，而且较为固定的形式，就直接对应就好。比如新闻版块，可以分出新闻的目录表，新闻的文章表等。</p><p>news_category<br/>news_article<br/>sports_category<br/>sports_article</p><p>可看到每一个版块都对应着一组相同的表结构，好处就是一目了然。在功能上，因为版块之间还是有一些隔阂，所以需要联合查询的需求不多，开发上比时间结构的方式要轻松。</p><p>主键：依旧要考虑的，在这个系统中，主键是版块 时间戳，单纯的时间戳或自动编号也能用，查询时要记得带上版块用于定位表。</p><p>2) 冷热式:</p><p>对应式的缺点是，如果版块数量很大而且不确定，那要分出的表数量就太多了。举个例子：百度贴吧，如果按一个词条一个表设计，那得有多少张表呢？</p><p>用这样的方式吧。</p><p>tieba_汽车<br/>tieba_飞机<br/>tieba_火箭<br/>tieba__unite</p><p>这个表汽车、火箭表是属于热门表，定义为新建的版块放在unite表里面，待到其超过一万张主贴的时候才开对应表结构。因为在贴吧这种系统中，冷门版块肯定比热门版块多得多，这些冷门版块通常只有几张帖子，为它们开表也太浪费了；同时热门版块数量和访问量等，又比冷门版块多得多，非常有特点。</p><p>unite表还可以扩展成哈希表，利用词条的md5编码，可以分成n张表，我算了一下，md5前一位可分36张表，两位即是1296张表，足够了。</p><p>tieba_unite_ab<br/>tieba_unite_ac<br/>…<br/><strong><br/>三、哈希结构</strong></p><p>哈希结构通常用于博客之类的基于用户的场合，在博客这样的系统里有几个特点，1是用户数量非常多，2是每个用户发的文章数量都较少，3是用户发文章不定期，4是每个用户发得不多，但总量仍非常之大。基于这些特点，用以上所说的任何一种分表方式都不合适，一没有固定的时效不宜用时间拆，二用户很多，而且还偏偏都是冷门，所以也不宜用版块（用户）拆。</p><p>哈希结构在上面有所提及，既然按每个用户不好直接拆，那就把一群用户归进一个表好了。</p><p>blog_aa<br/>blog_ab<br/>blog_ac<br/>…</p><p>如上所说，md5取前两位哈希可以达到1296张表，如果觉得不够，那就再加一位，总数可达46656张表，还不够？</p><p>表的数量太多，要创建这些表也是挺麻烦的，可以考虑在程序里往数据库insert之前，多执行一句判断表存在与否并创建表的语句，很实用，消耗也并不很大。</p><p>主键：依旧要考虑的，在这个系统中，主键是用户ID 时间戳，单纯的时间戳或自动编号也能用，但查询时要记得带上用户名用于定位表。</p><p><strong>四、总分结构</strong></p><p>以上的这些结构，根据每个业务系统，能想出的估计还有很多。不过现在互联网业务越来越复杂了，有些时候，单一的拆分法还不能实现需求，需要几种拆分方案一起实施，多管齐下，这时候其中的逻辑会让人绕晕。我就开发过一个系统，仅仅是将哈希结构和时间结构混着一用，觉得逻辑就相当复杂。</p><p>所以，除了拆表之外，按最原始的单库单表，再建一个总表，是非常有利的架构。在这个架构中，每次往数据库会写入两倍数据，读取主要依赖拆表提升性能，总表用于实现拆表后难以实现的功能并且用于每天的定时备份；另外总表和分表还相互是一个完整的备份，任何一个分表损坏或数据不正常，都可以从总表中读到正确的数据并恢复，反之亦然。</p><p>在总分结构中，让人感到质疑的是总表的性能和可维护性。我的方案是总表可采用相对能保证稳定的一些服务软件和架构，例如oracle，或lvs \r\npgpool \r\nPostgreSQL，重点保证数据稳定；相对的，分表就用轻量级的mysql，重点在于速度。能够对总分表各采用不同的软件和方案，也是总分结构的一大特点</p><p>No related posts.</p><p><br/></p><p><br/></p>', 212, 0, 0, 1, 100, '', '', 0, 1492674064, 1568263962);
INSERT INTO `ad_article` VALUES (5, 3, '转载：深入理解PHP内存管理之谁动了我的内存', '', '成长的小白菜', 'php源码分析之深入理解PHP内存管理之谁动了我的内存，php内存管理。', '', '<p>首先让我们看一个问题: 如下代码的输出,</p><pre class=\"sh_php sh_sourceCode\">var_dump(memory_get_usage());\r\n$a&nbsp;=&nbsp;\"laruence\";\r\nvar_dump(memory_get_usage());\r\nunset($a);\r\nvar_dump(memory_get_usage());</pre><p>输出(在我的个人电脑上, 可能会因为系统,PHP版本,载入的扩展不同而不同):</p><pre class=\"sh_bash\">int(90440)\r\nint(90640)\r\nint(90472)</pre><p>注意到 90472-90440=32, 于是就有了各种的结论, 有的人说PHP的unset并不真正释放内存, 有的说, PHP的unset只是在释放大变量(大量字符串, 大数组)的时候才会真正free内存, 更有人说, 在PHP层面讨论内存是没有意义的.</p><p>那么, 到底unset会不会释放内存? 这32个字节跑哪里去了?</p><p>要回答这个问题, &nbsp;我将从俩个方面入手:</p><h3>这32个字节去哪里了</h3><p><strong>首先我们要打破一个思维: PHP不像C语言那样, 只有你显示的调用内存分配相关API才会有内存的分配. </strong><br/>也就是说, 在PHP中, 有很多我们看不到的内存分配过程.<br/>比如对于:</p><pre class=\"sh_php sh_sourceCode\">$a&nbsp;=&nbsp;\"laruence\";</pre><p>隐式的内存分配点就有:</p><pre class=\"sh_bash\">1.&nbsp;为变量名分配内存,&nbsp;存入符号表2.&nbsp;为变量值分配内存</pre><p>所以, 不能只看表象.<br/>第二, <strong>别怀疑,PHP的unset确实会释放内存</strong>(当然, 还要结合引用和计数, 这部分的内容请参看我之前的文章<a href=\"http://www.laruence.com/2008/09/19/520.html\">深入理解PHP原理之变量分离/引用</a>), 但这个释放不是C编程意义上的释放, 不是交回给OS.<br/>对于PHP来说, &nbsp;它自身提供了一套和C语言对内存分配相似的内存管理API:</p><pre class=\"sh_php sh_sourceCode\">emalloc(size_t&nbsp;size);\r\nefree(void&nbsp;*ptr);\r\necalloc(size_t&nbsp;nmemb,&nbsp;size_t&nbsp;size);\r\nerealloc(void&nbsp;*ptr,&nbsp;size_t&nbsp;size);\r\nestrdup(const&nbsp;char&nbsp;*s);\r\nestrndup(const&nbsp;char&nbsp;*s,&nbsp;unsigned&nbsp;int&nbsp;length);</pre><p>这些API和C的API意义对应, 在PHP内部都是通过这些API来管理内存的.</p><p>当我们调用emalloc申请内存的时候, PHP并不是简单的向OS要内存, 而是会像OS要一个大块的内存, 然后把其中的一块分配给申请者, 这样当再有逻辑来申请内存的时候, 就不再需要向OS申请内存了, 避免了频繁的系统调用.</p><p>比如如下的例子:</p><pre class=\"sh_php sh_sourceCode\"><?php\r\n&nbsp;&nbsp;&nbsp;&nbsp;var_dump(memory_get_usage(TRUE));&nbsp;//注意获取的是real_size\r\n&nbsp;&nbsp;&nbsp;&nbsp;$a&nbsp;=&nbsp;\"laruence\";\r\n&nbsp;&nbsp;&nbsp;&nbsp;var_dump(memory_get_usage(TRUE));\r\n&nbsp;&nbsp;&nbsp;&nbsp;unset($a);\r\n&nbsp;&nbsp;&nbsp;&nbsp;var_dump(memory_get_usage(TRUE));</pre><p>输出:</p><pre class=\"sh_bash\">int(262144)int(262144)int(262144)</pre><p>也就是我们在定义变量$a的时候, PHP并没有向系统申请新内存.</p><p>同样的, 在我们调用efree释放内存的时候, PHP也不会把内存还给OS, 而会把这块内存, 归入自己维护的空闲内存列表. \r\n而对于小块内存来说, 更可能的是, 把它放到内存缓存列表中去(后记, 某些版本的PHP, 比如我验证过的PHP5.2.4, 5.2.6, \r\n5.2.8, 在调用get_memory_usage()的时候, 不会减去内存缓存列表中的可用内存块大小, 导致看起来, \r\nunset以后内存不变, 见评论).</p><p>现在让我来回答这32个字节跑哪里去了, &nbsp;就向我刚才说的, 很多内存分配的过程不是显式的, 看了下面的代码你就明白了:</p><pre class=\"sh_php sh_sourceCode\"><br/></pre><p>输出:</p><pre class=\"sh_bash\">string(43)&nbsp;\"I&nbsp;am&nbsp;Laruence,&nbsp;From&nbsp;http://www.laruence.com\"int(90808)&nbsp;//赋值前\r\n\r\nint(90976)int(90808)&nbsp;//是的,&nbsp;内存正常释放了</pre><p>90808-90808 = 0, 正常了, 也就是说这32个字节是被输出函数给占用了(严格来说, 是被输出的Header占用了)</p><h3>只增不减的数组</h3><p>Hashtable是PHP的核心结构(了解Hashtable, 可以参看我之前的文章<a href=\"http://www.laruence.com/2009/08/23/1065.html\">深入理解PHP之数组(遍历顺序)</a>), 数组也是用她来表示的, 而符号表也是</p><p>一种关联数组, 对于如下代码:</p><pre class=\"sh_php sh_sourceCode\">var_dump(\"I&nbsp;am&nbsp;Laruence,&nbsp;From&nbsp;&nbsp;\r\nvar_dump(memory_get_usage());\r\n$array&nbsp;=&nbsp;array_fill(1,&nbsp;100,&nbsp;\"laruence\");\r\nforeach&nbsp;($array&nbsp;as&nbsp;$key&nbsp;=>&nbsp;$value)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;${$value&nbsp;.&nbsp;$key}&nbsp;=&nbsp;NULL;\r\n}\r\nvar_dump(memory_get_usage());\r\nforeach&nbsp;($array&nbsp;as&nbsp;$key=>&nbsp;$value)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;unset(${$value&nbsp;.&nbsp;$key});\r\n}\r\nvar_dump(memory_get_usage());</pre><p>我们定义了100个变量, &nbsp;然后又按个Unset了他们, 来看看输出:</p><pre class=\"sh_bash\">string(43)&nbsp;\"I&nbsp;am&nbsp;Laruence,&nbsp;From&nbsp;http://www.laruence.com\"int(93560)int(118848)int(104448)</pre><p>Wow, 怎么少了这么多内存?<br/>这是因为对于Hashtable来说, 定义它的时候, 不可能一次性分配足够多的内存块, 来保存未知个数的元素, 所以PHP会在初始化的时候, 只是分配</p><p>一小部分内存块给HashTable, 当不够用的时候再RESIZE扩容,</p><p>而Hashtable, 只能扩容, 不会减少, 对于上面的例子, 当我们存入100个变量的时候, 符号表不够用了, 做了一次扩容, \r\n而当我们依次unset掉这100</p><p>个变量以后, 变量占用的内存是释放了(118848 – 104448), 但是符号表并没有缩小, \r\n所以这些少的内存是被符号表本身占去了…</p><p>现在, 你是不是对PHP的内存管理有了一个初步的认识了呢?</p><p><br/></p>', 117, 0, 0, 1, 100, '内存管理之谁动了我的内存、php、内存、kevinFei、博客', '内存管理之谁动了我的内存、php、内存、kevinFei、博客', 0, 1564635845, 1564932578);
INSERT INTO `ad_article` VALUES (6, 3, '深入理解PHP之数组(遍历顺序)', '', '惠新辰', '转载鸟哥深入理解PHP之数组(遍历顺序)，本文章主要是解释php的foreach循环的编辑指针和遍历顺序的解释。欢迎大家查看和学习！', '', '<p>经常会有人问我, PHP的数组, 如果用foreach来访问, 遍历的顺序是固定的么? 以什么顺序遍历呢?<br/>比如:</p><pre class=\"sh_php sh_sourceCode\">&lt;?php\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr[&#39;laruence&#39;]&nbsp;=&nbsp;&#39;huixinchen&#39;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr[&#39;yahoo&#39;]&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;2007;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr[&#39;baidu&#39;]&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;2008;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;($arr&nbsp;as&nbsp;$key&nbsp;=>&nbsp;$val)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//结果是什么?\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p>又比如:</p><pre class=\"sh_php sh_sourceCode\">&lt;?php\r\n&nbsp;&nbsp;&nbsp;&nbsp;$arr[2]&nbsp;=&nbsp;&#39;huixinchen&#39;;\r\n&nbsp;&nbsp;&nbsp;&nbsp;$arr[1]&nbsp;&nbsp;=&nbsp;2007;\r\n&nbsp;&nbsp;&nbsp;&nbsp;$arr[0]&nbsp;&nbsp;=&nbsp;2008;\r\n&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;($arr&nbsp;as&nbsp;$key&nbsp;=>&nbsp;$val)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;//现在结果又是什么?\r\n&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p>要完全了解清楚这个问题, 我想首先应该要大家了解PHP数组的内部实现结构………</p><h3>PHP的数组</h3><p>在PHP中, 数组是用一种HASH结构(HashTable)来实现的, PHP使用了一些机制, 使得可以在O(1)的时间复杂度下实现数组的增删, 并同时支持线性遍历和随机访问.</p><p>之前的文章中也讨论过, <a href=\"http://www.laruence.com/2009/07/23/994.html\" target=\"_blank\">PHP的HASH算法</a>, 基于此, 我们做进一步的延伸.</p><p>认识HashTable之前, 首先让我们看看HashTable的结构定义, 我加了注释方便大家理解:</p><pre class=\"sh_cpp sh_sourceCode\">typedef&nbsp;struct&nbsp;_hashtable&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint&nbsp;nTableSize;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;散列表大小,&nbsp;Hash值的区间&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint&nbsp;nTableMask;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;等于nTableSize&nbsp;-1,&nbsp;用于快速定位&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint&nbsp;nNumOfElements;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;HashTable中实际元素的个数&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ulong&nbsp;nNextFreeElement;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;下个空闲可用位置的数字索引&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bucket&nbsp;*pInternalPointer;&nbsp;&nbsp;&nbsp;/*&nbsp;内部位置指针,&nbsp;会被reset,&nbsp;current这些遍历函数使用&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bucket&nbsp;*pListHead;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;头元素,&nbsp;用于线性遍历&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bucket&nbsp;*pListTail;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;尾元素,&nbsp;用于线性遍历&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bucket&nbsp;**arBuckets;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;实际的存储容器&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dtor_func_t&nbsp;pDestructor;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;元素的析构函数(指针)&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_bool&nbsp;persistent;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned&nbsp;char&nbsp;nApplyCount;&nbsp;&nbsp;/*&nbsp;循环遍历保护&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_bool&nbsp;bApplyProtection;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#if&nbsp;ZEND_DEBUG\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;inconsistent;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#endif\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;\r\nHashTable;</pre><p>关于nApplyCount的意义, 我们可以通过一个例子来了解:</p><pre class=\"sh_php sh_sourceCode\">&lt;?php&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr&nbsp;=&nbsp;array(1,2,3,4,5,);&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$arr[]&nbsp;=&nbsp;&$arr;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var_export($arr);&nbsp;//Fatal&nbsp;error:&nbsp;Nesting&nbsp;level&nbsp;too&nbsp;deep&nbsp;-&nbsp;recursive&nbsp;dependency?</pre><p>这个字段就是为了防治循环引用导致的无限循环而设立的.</p><p>查看上面的结构, 可以看出, 对于HashTable, 关键元素就是arBuckets了, 这个是实际存储的容器, 让我们来看看它的结构定义:</p><pre class=\"sh_cpp sh_sourceCode\">typedef&nbsp;struct&nbsp;bucket&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ulong&nbsp;h;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;数字索引/hash值&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint&nbsp;nKeyLength;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;字符索引的长度&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;void&nbsp;*pData;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;数据&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;void&nbsp;*pDataPtr;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;数据指针&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct&nbsp;bucket&nbsp;*pListNext;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;下一个元素,&nbsp;用于线性遍历&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct&nbsp;bucket&nbsp;*pListLast;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;上一个元素,&nbsp;用于线性遍历&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct&nbsp;bucket&nbsp;*pNext;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;处于同一个拉链中的下一个元素&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct&nbsp;bucket&nbsp;*pLast;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;处于同一拉链中的上一个元素&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;char&nbsp;arKey[1];&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;节省内存,方便初始化的技巧&nbsp;*/\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;\r\n&nbsp;Bucket;</pre><p>我们注意到, 最后一个元素, 这个是flexible array技巧, 可以节省内存,和方便初始化的一种做法, 有兴趣的朋友可以google flexible array.</p><p>h是元素的Hash值,对于数字索引的元素,h为直接索引值(通过nKeyLength=0来表示是数字索引).而对于字符串索引来说, 索引值保存在arKey中, 索引的长度保存在nKeyLength中.</p><p>在Bucket中，实际的数据是保存在pData指针指向的内存块中，通常这个内存块是系统另外分配的。但有一种情况例外，就是当Bucket保存\r\n \r\n的数据是一个指针时，HashTable将不会另外请求系统分配空间来保存这个指针，而是直接将该指针保存到pDataPtr中，然后再将pData指向本结构成员的地址。这样可以提高效率，减少内存碎片。由此我们可以看到PHP\r\n HashTable设计的精妙之处。如果Bucket中的数据不是一个指针，pDataPtr为NULL(本段来自Altair的”Zend HashTable详解”)</p><p>结合上面的HashTable结构, 我们来说明下HashTable的总结构图:<br/></p><p><a href=\"http://laruence-blog.stor.sinaapp.com/uploads/2009/07/e697a0e6a087e9a298.jpg\"><img src=\"/public/upload/image/20190805/1564935517952067.jpg\" alt=\"HashTable结构示意图\" title=\"e697a0e6a087e9a298\" class=\"size-full wp-image-1011\" width=\"500\" height=\"326\"/></a>HashTable结构示意图</p><p>HashTable的pListhHead指向线性列表形式下的第一个元素, 上图中是元素1, pListTail指向的是最后一个元素0, 而对于每一个元素pListNext就是红色线条画出的线性结构的下一个元素, 而pListLast是上一个元素.</p><p>pInternalPointer指向当前的内部指针的位置, 在对数组进行顺序遍历的时候, 这个指针指明了当前的元素.</p><p>当在线性(顺序)遍历的时候, 就会从pListHead开始, 顺着Bucket中的pListNext/pListLast, 根据移动pInternalPointer, 来实现对所有元素的线性遍历.</p><p>比如, 对于foreach, 如果我们查看它生成的opcode序列, 我们可以发现, 在foreach之前, 会首先有个FE_RESET来重置数组的内部指针, 也就是pInternalPointer(关于foreach可以参看<a href=\"http://www.laruence.com/2008/11/20/630.html\">深入理解PHP原理之foreach</a>), 然后通过每次FE_FETCH来递增pInternalPointer,从而实现顺序遍历.</p><p>类似的, 当我们使用, each/next系列函数来遍历的时候, 也是通过移动数组的内部指针而实现了顺序遍历, 这里有一个问题, 比如:</p><pre class=\"sh_php sh_sourceCode\">&lt;?php\r\n&nbsp;&nbsp;&nbsp;&nbsp;$arr&nbsp;=&nbsp;array(1,2,3,4,5);\r\n&nbsp;&nbsp;&nbsp;&nbsp;foreach&nbsp;($arr&nbsp;as&nbsp;$v)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;//可以获取\r\n&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;while&nbsp;(list($key,&nbsp;$v)&nbsp;=&nbsp;each($arr))&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;//获取不到\r\n&nbsp;&nbsp;&nbsp;&nbsp;}\r\n?></pre><p>了解到我刚才介绍的知识, 那么这个问题也就很明朗了, 因为foreach会自动reset, 而while这块不会reset, \r\n所以在foreach结束以后, pInternalPointer指向数组最末端, while语句块当然访问不到了, \r\n解决的办法就是在each之前, 先reset数组的内部指针.</p><p>而在随机访问的时候, 就会通过hash值确定在hash数组中的头指针位置, 然后通过pNext/pLast来找到特点元素.</p><p>增加元素的时候, 元素会插在相同Hash元素链的头部和线性列表的尾部. 也就是说, 元素在线性遍历的时候是根据插入的先后顺序来遍历的, 这个特殊的设计使得在PHP中,当使用数字索引时, 元素的先后顺序是由添加的顺序决定的,而不是索引顺序.</p><p>也就是说, PHP中遍历数组的顺序, 是和元素的添加先后相关的, 那么, 现在我们就很清楚的知道, 文章开头的问题的输出是:</p><pre class=\"sh_php sh_sourceCode\">huixinchen\r\n2007\r\n2008</pre><p>所以, 如果你想在数字索引的数组中按照索引大小遍历, 那么你就应该使用for, 而不是foreach</p><pre class=\"sh_php sh_sourceCode\">for($i=0,$l=count($arr);&nbsp;$i<$l;&nbsp;$i++)&nbsp;{&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;//这个时候,不能认为是顺序遍历(线性遍历)\r\n}</pre><p><br/></p>', 774, 0, 0, 1, 100, 'php、foreach、遍历顺序、指针、kevinFei、博客、深入理解PHP之数组(遍历顺序)', 'php、foreach、遍历顺序、指针、kevinFei、博客、深入理解PHP之数组(遍历顺序)', 0, 1564936886, 1564936886);
INSERT INTO `ad_article` VALUES (7, 1, '关于.gitignore文件失效的问题总结和解决办法', '', '成长的小白菜', '关于.gitignore文件失效的问题总结和解决办法。 .gitignore 是git版本控制器在提交文件时忽略提交文件。但是在我们实际搭建的时候会发现有时候和我们想的不一样。详情请看文章。', '', '<p style=\";font-family:&#39;microsoft yahei&#39;;font-size:13px;color:#3F3F3F\"><span style=\"background:white\"></span></p><p style=\";font-family:&#39;microsoft yahei&#39;;font-size:13px;color:#3F3F3F\"><span style=\"background:white\"></span><span style=\"background:white\"></span></p><p style=\"font-size: 21px; text-align: center;\"><span style=\"font-family:Calibri\">.gitignore </span><span style=\"font-family:&#39;Microsoft YaHei&#39;\">是</span><span style=\"font-family:Calibri\">git</span><span style=\"font-family:&#39;Microsoft YaHei&#39;\">版本控制器在提交文件时忽略提交文件</span></p><p style=\";font-family:&#39;microsoft yahei&#39;;font-size:13px;color:#3F3F3F\"><span style=\"background:white\">问题</span></p><ol style=\"margin-left:.375in;direction:ltr;unicode-bidi:embed;font-family:&#39;microsoft yahei&#39;;font-size:15px;font-weight:normal;font-style:normal\" class=\" list-paddingleft-2\"><li><p><span style=\"font-family:&#39;microsoft yahei&#39;;font-size:15px;font-weight:normal;font-style:normal;font-family:&#39;microsoft yahei&#39;;font-size:15px;background:white\">已经初始化项目了，并配置.gitignore文件了，可以另外追加忽略文件么？<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 直接追加进.gitignore文件忽略文件列表就可以了。</span></p></li><li><p><span style=\"font-family:&#39;microsoft yahei&#39;;font-size:15px;background:white\">已经加入.gitignore文件列表的被忽略文件，想要进行改动，并提交推送到远程仓库，要如何做？<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;只需要将被忽略的文件类型从.gitignore列表移除或注释掉，再次修改原来被忽略类型的文件时，就会提示此类文件被修改，需要加入版本控制了。</span></p></li><li><p><span style=\"font-family:&#39;microsoft yahei&#39;;font-size:15px;background:white\">原来被忽略的文件，取消忽略后，可以重新加入忽略么？<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 可以，同样只需要再次追加进.gitignore文件忽略文件列表就可以了。</span></p></li></ol><p style=\";font-family:Calibri;font-size:15px\">&nbsp;</p><p style=\";font-family:&#39;microsoft yahei&#39;;font-size:13px;color:#3F3F3F\"><span style=\"background:white\">真相</span></p><ol style=\"margin-left:.375in;direction:ltr;unicode-bidi:embed;font-family:&#39;microsoft yahei&#39;;font-size:15px;font-weight:normal;font-style:normal\" class=\" list-paddingleft-2\"><li><p><span style=\"font-family:&#39;microsoft yahei&#39;;font-size:15px;font-weight:normal;font-style:normal;font-family:&#39;microsoft yahei&#39;;font-size:15px;background:white\">上文中的问题1、2、3会生效么？<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2会立即生效，1和3会出现失效的情况。</span></p></li><li><p><span style=\"font-family:&#39;microsoft yahei&#39;;font-size:15px;background:white\">1和3为什么会出现失效的情况?<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 这是由于gitignore只能忽略那些原来没有被track的文件，如果某些文件已经被纳入了版本管理中，则修改.gitignore是无效的。</span></p></li><li><p><span style=\"font-family:&#39;microsoft yahei&#39;;font-size:15px;background:white\">怎么解决1和3失效的情况<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 先把本地缓存删除（改变成未track状态），然后再提交</span></p><p><span style=\"font-family:&#39;microsoft yahei&#39;;font-size:15px;background:white\"></span></p></li></ol><p><code class=\"bash plain\"><span style=\"background: white none repeat scroll 0% 0%; font-size: 14px;\">解决办法</span> &nbsp;&nbsp; <br/></code></p><p><code class=\"bash plain\">&nbsp;&nbsp;&nbsp;&nbsp;git rm -r --cached .<br/></code></p><p><code class=\"bash plain\">&nbsp;&nbsp;&nbsp;&nbsp;git add . &nbsp;&nbsp;&nbsp;&nbsp;<br/></code></p><p><code class=\"bash plain\"><code class=\"bash plain\">&nbsp;&nbsp;&nbsp;&nbsp;git commit -m &#39;commit log info&#39; </code><br/></code></p><p><code class=\"bash plain\">&nbsp;&nbsp;&nbsp;&nbsp;git push -u origin master -f </code><code class=\"bash plain\"></code></p><p><br/></p>', 758, 0, 0, 1, 100, '关于.gitignore文件失效的问题总结和解决办法、.gitignore、git、失效、忽略提交、php、kevinFei、博客、关于.gitignore文件失效的问题总结和解决办法', '关于.gitignore文件失效的问题总结和解决办法 、.gitignore、git、失效、忽略提交、php、kevinFei、博客', 0, 1564969720, 1566174244);
INSERT INTO `ad_article` VALUES (8, 3, 'PHP各个数据类型之间相互比较', '', '成长的小白菜', '之前的oneNote中记录一个之前记录的一个问题，整理的时候觉的这个问题还是挺有意思的，所以分享一下，主要还是借鉴鸟哥的博客内容和我自己当时记录的内容，希望可以给大家带来帮助', '', '<p style=\"text-align: center;\"><span style=\"font-size: 18px;\">PHP各个数据类型之间相互比较</span></p><p>正文：</p><p style=\";font-family:微软雅黑;font-size:15px\">PHP是怎么决定相比较的俩者的类型的呢?</p><p>还是老办法, 先从zend_language_scanner.l中找到==的opcode码 结果是T_IS_EQUAL<br/>然后在zend_language_parse.y中找到编译器看到T_IS_EQUAL会做什么:</p><pre class=\"sh_php sh_sourceCode\">expr&nbsp;T_IS_EQUAL&nbsp;expr&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_do_binary_op&nbsp;(&nbsp;ZEND_IS_EQUAL,&nbsp;&$$,&nbsp;&$1,&nbsp;&$3&nbsp;TSRMLS_CC&nbsp;);&nbsp;\r\n}</pre><p>那么接下就去zend_vm_def.h中寻找当ZE遇到ZEND_IS_EQUAL会做什么:</p><pre class=\"sh_php sh_sourceCode\">ZEND_VM_HANDLER(17,&nbsp;ZEND_IS_EQUAL,&nbsp;CONST|TMP|VAR|CV,&nbsp;CONST|TMP|VAR|CV)&nbsp;&nbsp;{&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_op&nbsp;*opline&nbsp;=&nbsp;EX(opline);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_free_op&nbsp;free_op1,&nbsp;free_op2;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;is_equal_function(&EX_T(opline->result.u.var).tmp_var,&nbsp;GET_OP1_ZVAL_PTR(BP_VAR_R),&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GET_OP2_ZVAL_PTR(BP_VAR_R)&nbsp;TSRMLS_CC);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FREE_OP1();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FREE_OP2();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ZEND_VM_NEXT_OPCODE();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n}</pre><p>看来,所有”==”判断都是由is_equal_function完成的, 让我们一起再看看它是什么样的:</p><pre class=\"sh_php sh_sourceCode\">ZEND_API&nbsp;int&nbsp;is_equal_function(zval&nbsp;*result,&nbsp;zval&nbsp;*op1,&nbsp;zval&nbsp;*op2&nbsp;TSRMLS_DC)&nbsp;{\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(compare_function(result,&nbsp;op1,&nbsp;op2&nbsp;TSRMLS_CC)&nbsp;==&nbsp;FAILURE)&nbsp;{&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;FAILURE;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;convert_to_boolean(result);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(result->value.lval&nbsp;==&nbsp;0)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result->value.lval&nbsp;=&nbsp;1;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result->value.lval&nbsp;=&nbsp;0;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;SUCCESS;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n}</pre><p>哦, 看来不是, 还要进一步查看compare_function<br/>\r\n &nbsp; 代码太长, 不贴了. 在compare_function中, 当俩个比较操作数都是string的时候,会调用zendi_smart_strcmp:</p><pre class=\"sh_php sh_sourceCode\">if&nbsp;(op1->type&nbsp;==&nbsp;IS_STRING&nbsp;&&&nbsp;op2->type&nbsp;==&nbsp;IS_STRING)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zendi_smart_strcmp(result,&nbsp;op1,&nbsp;op2);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COMPARE_RETURN_AND_FREE(SUCCESS);&nbsp;&nbsp;&nbsp;&nbsp;\r\n}</pre><p>而在zendi_smart_strcmp中, 对于俩个字符串, 会首先判断他们是否是numeric_string, 如果是,那么就会转换成整形来比较..</p><p>	那么什么是numeric string呢? &nbsp;因为PHP不区分类型, 所以她采用一个策略, 当你的变量看起来是一个数字的时候, 那么她就认为这个变量是一个数字. 简单来说, numeric_string就是表示数字的字符串:</p><p>	也就是说,如下的比较结果都是真:</p><pre class=\"sh_php sh_sourceCode\">var_dump(\"1\"&nbsp;==&nbsp;\"1e0\");&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nvar_dump(\"1\"&nbsp;==&nbsp;\"0x1\");&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nvar_dump(\"20\"&nbsp;==&nbsp;\"2e1\");&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nvar_dump(\"10\"&nbsp;==&nbsp;\"&nbsp;&nbsp;0x0a\");</pre><p><br/></p><p>结果：</p><p style=\";font-family:微软雅黑;font-size:15px;color:red\">整形 0 == null&nbsp; 等于空&nbsp; 但是不等于，布尔型的false或者true</p><p style=\";font-family:微软雅黑;font-size:15px\">&lt;?php</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$test=0;</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( $test == &#39; &#39; ){</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"在php中，0即为空\";&nbsp;&nbsp; //被输出</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( $test === &#39;&#39; ){</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"在php中，0即为空\"; &nbsp; //不被输出</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( $test == NULL){</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; echo \"在php中，0即为空\";&nbsp;&nbsp; //被输出</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( $test === NULL){</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; echo \"在php中，0即为空\";&nbsp;&nbsp; //不被输出</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( $test == false ){</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"在php中，0即为空\"; &nbsp; //被输出</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( $test === false){</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"在php中，0即为空\";&nbsp;&nbsp; //不被输出</p><p style=\";font-family:微软雅黑;font-size:15px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</p>', 696, 0, 0, 1, 100, 'PHP各个数据类型之间相互比较、PHP、数据类型、比较、if、整形、字符串、kevinFei、比较、博客', 'PHP各个数据类型之间相互比较、PHP、数据类型、比较、if、整形、字符串、kevinFei、比较、博客', 1, 1565040608, 1565627996);
INSERT INTO `ad_article` VALUES (9, 1, '转载：Yii/Yaf/Swoole3个框架的压测性能对比', '', '韩天峰', 'Yii/Yaf/Swoole3个框架的压测性能对比', '', '<p>本次压测使用的是一台4核I5 CPU，8G内存的笔记本。使用的版本是：</p><pre>swoole_framework&nbsp;github最新版\r\nYaf&nbsp;2.2.9\r\nYii-1.1.14</pre><p>php-fpm和swoole应用服务器均启用了8个进程，因为仅比较hello world，不存在阻塞，8进程足以压满CPU。php5-fpm中已经启用了apc对所有PHP进行缓存。</p><p>压测使用ab工具，参数为：</p><pre>&nbsp;ab&nbsp;-c&nbsp;100&nbsp;-n&nbsp;10000</pre><h2>Yaf</h2><pre>Server&nbsp;Software:&nbsp;nginx/1.2.6\r\n&nbsp;Server&nbsp;Hostname:&nbsp;localhost\r\n&nbsp;Server&nbsp;Port:&nbsp;80\r\n&nbsp;Document&nbsp;Path:&nbsp;/yafapp/\r\n&nbsp;Document&nbsp;Length:&nbsp;11&nbsp;bytes\r\n&nbsp;Concurrency&nbsp;Level:&nbsp;100\r\n&nbsp;Time&nbsp;taken&nbsp;for&nbsp;tests:&nbsp;1.336&nbsp;seconds\r\n&nbsp;Complete&nbsp;requests:&nbsp;10000\r\n&nbsp;Failed&nbsp;requests:&nbsp;0\r\n&nbsp;Write&nbsp;errors:&nbsp;0\r\n&nbsp;Total&nbsp;transferred:&nbsp;1770000&nbsp;bytes\r\n&nbsp;HTML&nbsp;transferred:&nbsp;110000&nbsp;bytes\r\n&nbsp;Requests&nbsp;per&nbsp;second:&nbsp;7486.03&nbsp;[#/sec]&nbsp;(mean)\r\n&nbsp;Time&nbsp;per&nbsp;request:&nbsp;13.358&nbsp;[ms]&nbsp;(mean)\r\n&nbsp;Time&nbsp;per&nbsp;request:&nbsp;0.134&nbsp;[ms]&nbsp;(mean,&nbsp;across&nbsp;all&nbsp;concurrent&nbsp;requests)\r\n&nbsp;Transfer&nbsp;rate:&nbsp;1293.97&nbsp;[Kbytes/sec]&nbsp;received</pre><h2>Yii</h2><pre>Server&nbsp;Software:&nbsp;nginx/1.2.6\r\n&nbsp;Server&nbsp;Hostname:&nbsp;localhost\r\n&nbsp;Server&nbsp;Port:&nbsp;80\r\n&nbsp;Document&nbsp;Path:&nbsp;/yiiapp/\r\n&nbsp;Document&nbsp;Length:&nbsp;11&nbsp;bytes\r\n&nbsp;Concurrency&nbsp;Level:&nbsp;100\r\n&nbsp;Time&nbsp;taken&nbsp;for&nbsp;tests:&nbsp;8.016&nbsp;seconds\r\n&nbsp;Complete&nbsp;requests:&nbsp;10000\r\n&nbsp;Failed&nbsp;requests:&nbsp;0\r\n&nbsp;Write&nbsp;errors:&nbsp;0\r\n&nbsp;Total&nbsp;transferred:&nbsp;1770000&nbsp;bytes\r\n&nbsp;HTML&nbsp;transferred:&nbsp;110000&nbsp;bytes\r\n&nbsp;Requests&nbsp;per&nbsp;second:&nbsp;1247.55&nbsp;[#/sec]&nbsp;(mean)</pre><h2>SwooleFramework</h2><pre>&nbsp;Server&nbsp;Software:&nbsp;Swoole\r\n&nbsp;Server&nbsp;Hostname:&nbsp;127.0.0.1\r\n&nbsp;Server&nbsp;Port:&nbsp;8888\r\n&nbsp;Document&nbsp;Path:&nbsp;/hello/index\r\n&nbsp;Document&nbsp;Length:&nbsp;11&nbsp;bytes&nbsp;\r\n&nbsp;Concurrency&nbsp;Level:&nbsp;100\r\n&nbsp;Time&nbsp;taken&nbsp;for&nbsp;tests:&nbsp;1.470&nbsp;seconds\r\n&nbsp;Complete&nbsp;requests:&nbsp;10000\r\n&nbsp;Failed&nbsp;requests:&nbsp;0\r\n&nbsp;Write&nbsp;errors:&nbsp;0\r\n&nbsp;Total&nbsp;transferred:&nbsp;2750000&nbsp;bytes\r\n&nbsp;HTML&nbsp;transferred:&nbsp;110000&nbsp;bytes\r\n&nbsp;Requests&nbsp;per&nbsp;second:&nbsp;6801.78&nbsp;[#/sec]&nbsp;(mean)\r\n&nbsp;Time&nbsp;per&nbsp;request:&nbsp;14.702&nbsp;[ms]&nbsp;(mean)\r\n&nbsp;Time&nbsp;per&nbsp;request:&nbsp;0.147&nbsp;[ms]&nbsp;(mean,&nbsp;across&nbsp;all&nbsp;concurrent&nbsp;requests)\r\n&nbsp;Transfer&nbsp;rate:&nbsp;1826.65&nbsp;[Kbytes/sec]&nbsp;receive</pre><h2>结果评价</h2><p>有些人说框架的消耗和业务逻辑相比不算什么，这句话在你的QPS不到10个时是完全正确的。但如果你的网站访问量很大，机器负载很高，那么框架的性能消耗就会很明显的体现出来了。</p><p>Yii压测只有1200QPS，假设网站的平均QPS为200，因为框架的消耗是纯CPU消耗，也就是光Yii就会带来(200/1200)*100%=16.7%的CPU消耗。而Yaf/Swoole的QPS可达7000，200qps仅占用</p><p>(200/7000)*100%=2.8%的CPU消耗。当然200QPS对于一个巨型网站来说只是一个小数目，框架的CPU消耗会随着QPS增加而直线上升。</p><p>Swoole框架的早期版本可达9000QPS，swoole框架本身还是很复杂的，因为全部是PHP的代码实现，仅底层使用了swoole扩展，如果做了足够的精简和优化，还是有很大的上升空间。</p><p>压测证明Yaf的性能非常好。如果你希望使用PHP应用服务器可以选择Swoole，如果是LAMP/LNMP架构可以使用Yaf框架。</p><p><span style=\"font-size: 14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该文章转载至：http://rango.swoole.com/archives/254</span></p>', 144, 0, 0, 1, 100, 'Yii/Yaf/Swoole3个框架的压测性能对比', 'Yii/Yaf/Swoole3个框架的压测性能对比', 3, 1565043777, 1565721941);
INSERT INTO `ad_article` VALUES (10, 3, 'PHP开发的八大设计模式介绍', '', '成长的小白菜', '编程开发的设计模式，是在开发中前辈总结出来的编码模式和风格，写该文章主要就是先大家介绍一下设计模式，在开发中使用设计模式会大大加快开发速度和效率也会为项目的实际编码和项目的架构及开发带来很多帮助。所以介绍一下设计模式。', '', '<p style=\"text-align: center;\"><span style=\"font-family: 宋体, SimSun;\">PHP开发的八大设计模式介绍</span></p><h4>单例模式</h4><ol class=\" list-paddingleft-2\"><li><p>$_instance必须声明为静态的私有变量</p></li><li><p>构造函数和析构函数必须声明为私有,防止外部程序new 类从而失去单例模式的意义</p></li><li><p>getInstance()方法必须设置为公有的,必须调用此方法 以返回实例的一个引用</p></li><li><p>::操作符只能访问静态变量和静态函数</p></li><li><p>new对象都会消耗内存</p></li><li><p>使用场景:最常用的地方是数据库连接。</p></li><li><p>使用单例模式生成一个对象后， 该对象可以被其它众多对象所使用。</p></li><li><p>私有的__clone()方法防止克隆对象</p></li></ol><p>单例模式，使某个类的对象仅允许创建一个。构造函数private修饰，&nbsp;<br/>申明一个static getInstance方法，在该方法里创建该对象的实例。如果该实例已经存在，则不创建。比如只需要创建一个数据库连接。</p><h4>工厂模式</h4><p>工厂模式，工厂方法或者类生成对象，而不是在代码中直接new。&nbsp;<br/>使用工厂模式，可以避免当改变某个类的名字或者方法之后，在调用这个类的所有的代码中都修改它的名字或者参数。</p><p>Test1.php<br/>&lt;?php<br/>class Test1{<br/>&nbsp;&nbsp;&nbsp; static function test(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo __FILE__;<br/>&nbsp;&nbsp;&nbsp; }<br/>}<br/>Factory.php<br/>&lt;?php<br/>&nbsp;&nbsp;&nbsp;&nbsp;class Factory{<br/>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;/*<br/>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;* 如果某个类在很多的文件中都new ClassName()，那么万一这个类的名字<br/>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;* 发生变更或者参数发生变化，如果不使用工厂模式，就需要修改每一个PHP<br/>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;* 代码，使用了工厂模式之后，只需要修改工厂类或者方法就可以了。<br/>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;*/<br/>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;static function createDatabase(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $test = new Test1();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;return $test;<br/>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>Test.php<br/>&lt;?php<br/>&nbsp;&nbsp;&nbsp;&nbsp;spl_autoload_register(&#39;autoload1&#39;);<br/>&nbsp;&nbsp;&nbsp;&nbsp;$test = Factory::createDatabase();<br/>&nbsp;&nbsp;&nbsp;&nbsp;$test->test();<br/>&nbsp;&nbsp;&nbsp;&nbsp;function autoload1($class){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $dir&nbsp; = __DIR__;<br/>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;$requireFile = $dir.\"\\\\\".$class.\".php\";<br/>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;require $requireFile;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}</p><p><img src=\"/public/upload/image/20190819/1566200234994378.png\" title=\"1566200234994378.png\" alt=\"1009472-20180411233545229-1881933869.png\"/></p><h4>注册模式</h4><p>注册模式，解决全局共享和交换对象。已经创建好的对象，挂在到某个全局可以使用的数组上，在需要使用的时候，直接从该数组上获取即可。将对象注册到全局的树上。任何地方直接去访问。</p><p>&lt;?php<br/>class Register<br/>{<br/>&nbsp;&nbsp;&nbsp; protected static&nbsp; $objects;<br/>&nbsp;&nbsp;&nbsp; function set($alias,$object)//将对象注册到全局的树上<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self::$objects[$alias]=$object;//将对象放到树上<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; static function get($name){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return self::$objects[$name];//获取某个注册到树上的对象<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function _unset($alias)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unset(self::$objects[$alias]);//移除某个注册到树上的对象。<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>?><br/></p><h4>适配器模式</h4><p>将各种截然不同的函数接口封装成统一的API。&nbsp;<br/>PHP中的数据库操作有MySQL,MySQLi,PDO三种，可以用适配器模式统一成一致，使不同的数据库操作，统一成一样的API。类似的场景还有cache适配器，可以将memcache,redis,file,apc等不同的缓存函数，统一成一致。&nbsp;<br/>首先定义一个接口(有几个方法，以及相应的参数)。然后，有几种不同的情况，就写几个类实现该接口。将完成相似功能的函数，统一成一致的方法。<br/></p><p>接口 IDatabase<br/>&lt;?php<br/>namespace IMooc;<br/>interface IDatabase<br/>{<br/>&nbsp;&nbsp;&nbsp; function connect($host, $user, $passwd, $dbname);<br/>&nbsp;&nbsp;&nbsp; function query($sql);<br/>&nbsp;&nbsp;&nbsp; function close();<br/>}</p><p>MySQL<br/>&lt;?php<br/>namespace IMooc\\Database;<br/>use IMooc\\IDatabase;<br/>class MySQL implements IDatabase<br/>{<br/>&nbsp;&nbsp;&nbsp; protected $conn;<br/>&nbsp;&nbsp;&nbsp; function connect($host, $user, $passwd, $dbname)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $conn = mysql_connect($host, $user, $passwd);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mysql_select_db($dbname, $conn);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->conn = $conn;<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function query($sql)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $res = mysql_query($sql, $this->conn);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return $res;<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function close()<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mysql_close($this->conn);<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>MySQLi<br/>&lt;?php<br/>namespace IMooc\\Database;<br/>use IMooc\\IDatabase;<br/>class MySQLi implements IDatabase<br/>{<br/>&nbsp;&nbsp;&nbsp; protected $conn;<br/>&nbsp;&nbsp;&nbsp; function connect($host, $user, $passwd, $dbname)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $conn = mysqli_connect($host, $user, $passwd, $dbname);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->conn = $conn;<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function query($sql)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return mysqli_query($this->conn, $sql);<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function close()<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mysqli_close($this->conn);<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>PDO<br/>&lt;?php<br/>namespace IMooc\\Database;<br/>use IMooc\\IDatabase;<br/>class PDO implements IDatabase<br/>{<br/>&nbsp;&nbsp;&nbsp; protected $conn;<br/>&nbsp;&nbsp;&nbsp; function connect($host, $user, $passwd, $dbname)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $conn = new \\PDO(\"mysql:host=$host;dbname=$dbname\", $user, $passwd);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->conn = $conn;<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;function query($sql)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return $this->conn->query($sql);<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function close()<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unset($this->conn);<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>通过以上案例，PHP与MySQL的数据库交互有三套API，在不同的场景下可能使用不同的API，那么开发好的代码，换一个环境，可能就要改变它的数据库API，那么就要改写所有的代码，使用适配器模式之后，就可以使用统一的API去屏蔽底层的API差异带来的环境改变之后需要改写代码的问题。</p><h4>策略模式</h4><p>策略模式，将一组特定的行为和算法封装成类，以适应某些特定的上下文环境。&nbsp;<br/>eg：假如有一个电商网站系统，针对男性女性用户要各自跳转到不同的商品类目，并且所有的广告位展示不同的广告。在传统的代码中，都是在系统中加入各种if\r\n \r\nelse的判断，硬编码的方式。如果有一天增加了一种用户，就需要改写代码。使用策略模式，如果新增加一种用户类型，只需要增加一种策略就可以。其他所有的地方只需要使用不同的策略就可以。&nbsp;<br/>首先声明策略的接口文件，约定了策略的包含的行为。然后，定义各个具体的策略实现类。</p><p>UserStrategy.php<br/><?php<br/>/*<br/>&nbsp;* 声明策略文件的接口，约定策略包含的行为。<br/>&nbsp;*/<br/>interface UserStrategy<br/>{<br/>&nbsp;&nbsp;&nbsp; function showAd();<br/>&nbsp;&nbsp;&nbsp; function showCategory();<br/>}</p><p>FemaleUser.php<br/>&lt;?php<br/>require_once &#39;Loader.php&#39;;<br/>class FemaleUser implements UserStrategy<br/>{<br/>&nbsp;&nbsp;&nbsp; function showAd(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"2016冬季女装\";<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function showCategory(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"女装\";<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>MaleUser.php<br/>&lt;?php<br/>require_once &#39;Loader.php&#39;;<br/>class MaleUser implements UserStrategy<br/>{<br/>&nbsp;&nbsp;&nbsp; function showAd(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"IPhone6s\";<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function showCategory(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"电子产品\";<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>Page.php//执行文件<br/>&lt;?php<br/>require_once &#39;Loader.php&#39;;<br/>class Page<br/>{<br/>&nbsp;&nbsp;&nbsp; protected $strategy;<br/>&nbsp;&nbsp;&nbsp; function index(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"AD\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->strategy->showAd();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"Category\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->strategy->showCategory();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"\";<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function setStrategy(UserStrategy $strategy){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->strategy=$strategy;<br/>&nbsp;&nbsp;&nbsp; }<br/>}<br/>$page = new Page();<br/>if(isset($_GET[&#39;male&#39;])){<br/>&nbsp;&nbsp;&nbsp; $strategy = new MaleUser();<br/>}else {<br/>&nbsp;&nbsp;&nbsp; $strategy = new FemaleUser();<br/>}<br/>$page->setStrategy($strategy);<br/>$page->index();</p><p>执行结果图：</p><p><img src=\"/public/upload/image/20190819/1566200298728784.png\" title=\"1566200298728784.png\" alt=\"1009472-20180411235931617-2111845980.png\"/><img src=\"/public/upload/image/20190819/1566200305362713.png\" title=\"1566200305362713.png\" alt=\"1009472-20180411235939863-1854572548.png\"/></p><p>&nbsp;总结：&nbsp;<br/>通过以上方式，可以发现，在不同用户登录时显示不同的内容，但是解决了在显示时的硬编码的问题。如果要增加一种策略，只需要增加一种策略实现类，然后在入口文件中执行判断，传入这个类即可。实现了解耦。&nbsp;<br/>实现依赖倒置和控制反转&nbsp;<em>（有待理解）</em>&nbsp;<br/>通过接口的方式，使得类和类之间不直接依赖。在使用该类的时候，才动态的传入该接口的一个实现类。如果要替换某个类，只需要提供一个实现了该接口的实现类，通过修改一行代码即可完成替换。</p><h4>观察者模式</h4><p>1：观察者模式(Observer)，当一个对象状态发生变化时，依赖它的对象全部会收到通知，并自动更新。&nbsp;<br/>2：场景:一个事件发生后，要执行一连串更新操作。传统的编程方式，就是在事件的代码之后直接加入处理的逻辑。当更新的逻辑增多之后，代码会变得难以维护。这种方式是耦合的，侵入式的，增加新的逻辑需要修改事件的主体代码。&nbsp;<br/>3：观察者模式实现了低耦合，非侵入式的通知与更新机制。 <br/></p><p>定义一个事件触发抽象类。</p><p>EventGenerator.php<br/>&lt;?php<br/>require_once &#39;Loader.php&#39;;<br/>abstract class EventGenerator{<br/>&nbsp;&nbsp;&nbsp; private $observers = array();<br/>&nbsp;&nbsp;&nbsp; function addObserver(Observer $observer){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->observers[]=$observer;<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function notify(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; foreach ($this->observers as $observer){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $observer->update();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>//定义一个观察者接口</p><p>Observer.php<br/>&lt;?php<br/>require_once &#39;Loader.php&#39;;<br/>interface Observer{<br/>&nbsp;&nbsp;&nbsp; function update();//这里就是在事件发生后要执行的逻辑<br/>}</p><p>?><br/></p><p>&lt;?php<br/>//一个实现了EventGenerator抽象类的类，用于具体定义某个发生的事件<br/>require &#39;Loader.php&#39;;<br/>class Event extends EventGenerator{<br/>&nbsp;&nbsp;&nbsp; function triger(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"Event\";<br/>&nbsp;&nbsp;&nbsp; }<br/>}<br/>class Observer1 implements Observer{<br/>&nbsp;&nbsp;&nbsp; function update(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"逻辑1\";<br/>&nbsp;&nbsp;&nbsp; }<br/>}<br/>class Observer2 implements Observer{<br/>&nbsp;&nbsp;&nbsp; function update(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \"逻辑2\";<br/>&nbsp;&nbsp;&nbsp; }<br/>}<br/>$event = new Event();<br/>$event->addObserver(new Observer1());<br/>$event->addObserver(new Observer2());<br/>$event->triger();<br/>$event->notify();</p><p>当某个事件发生后，需要执行的逻辑增多时，可以以松耦合的方式去增删逻辑。也就是代码中的红色部分，只需要定义一个实现了观察者接口的类，实现复杂的逻辑，然后在红色的部分加上一行代码即可。这样实现了低耦合。</p><h4>原型模式</h4><p>原型模式（对象克隆以避免创建对象时的消耗）&nbsp;<br/>1：与工厂模式类似，都是用来创建对象。&nbsp;<br/>2：与工厂模式的实现不同，原型模式是先创建好一个原型对象，然后通过clone原型对象来创建新的对象。这样就免去了类创建时重复的初始化操作。&nbsp;<br/>3：原型模式适用于大对象的创建，创建一个大对象需要很大的开销，如果每次new就会消耗很大，原型模式仅需要内存拷贝即可。</p><p>Canvas.php<br/>&lt;?php<br/>require_once &#39;Loader.php&#39;;<br/>class Canvas{<br/>&nbsp;&nbsp;&nbsp;&nbsp;private $data;<br/>&nbsp;&nbsp;&nbsp;&nbsp;function init($width = 20, $height = 10)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $data = array();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for($i = 0; $i < $height; $i++)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for($j = 0; $j < $width; $j++)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $data[$i][$j] = &#39;*&#39;;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->data = $data;<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;function rect($x1, $y1, $x2, $y2)<br/>&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; foreach($this->data as $k1 => $line)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if ($x1 > $k1 or $x2 < $k1) continue;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; foreach($line as $k2 => $char)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if ($y1>$k2 or $y2<$k2) continue;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $this->data[$k1][$k2] = &#39;#&#39;;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; function draw(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; foreach ($this->data as $line){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; foreach ($line as $char){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo $char;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo \";\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp; }<br/>}</p><p>?></p><p>Index.php<br/>&lt;?php<br/>require &#39;Loader.php&#39;;<br/>$c = new Canvas();<br/>$c->init();<br/>// $canvas1 = new Canvas();<br/>// $canvas1->init();<br/>$canvas1 = clone $c;//通过克隆，可以省去init()方法，这个方法循环两百次<br/>//去产生一个数组。当项目中需要产生很多的这样的对象时，就会new很多的对象，那样<br/>//是非常消耗性能的。<br/>$canvas1->rect(2, 2, 8, 8);<br/>$canvas1->draw();<br/>echo \"-----------------------------------------\";<br/>// $canvas2 = new Canvas();<br/>// $canvas2->init();<br/>$canvas2 = clone $c;<br/>$canvas2->rect(1, 4, 8, 8);<br/>$canvas2->draw();</p><p>执行结果：</p><p><img src=\"/public/upload/image/20190819/1566200351312467.png\" title=\"1566200351312467.png\" alt=\"1009472-20180412002250788-449235848.png\"/></p><h4>装饰器模式</h4><p>1：装饰器模式，可以动态的添加修改类的功能&nbsp;<br/>2：一个类提供了一项功能，如果要在修改并添加额外的功能，传统的编程模式，需要写一个子类继承它，并重写实现类的方法&nbsp;<br/>3：使用装饰器模式，仅需要在运行时添加一个装饰器对象即可实现，可以实现最大额灵活性。<br/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;该文章转载至，如有侵权请联系删除：https://www.cnblogs.com/yuanwanli/p/8796402.html</p><p><br/></p><p><br/></p>', 694, 0, 0, 1, 100, '​PHP开发的八大设计模式介绍', '​PHP开发的八大设计模式介绍', 0, 1565773170, 1566200360);
INSERT INTO `ad_article` VALUES (11, 1, 'Redis的存储机制', '', '成长的小白菜', 'Redis平时在项目开发中，只知道使用，却从来没有想过它的存储机制究竟是什么样的，可能大家都知道redis的数据最终都会到内存中，但是它究竟是如何存储的呢，它的机制是什么？以下内容是参考资料，帮助记录。', 'http://bucketpublic.kevinfei.com/48a8e201909160745315949.jpg', '<p style=\"text-align: center;\"><span style=\"color: rgb(85, 85, 85); font-size: 18px; font-family: arial black, avant garde;\"></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(85, 85, 85); font-size: 18px; font-family: arial black, avant garde;\">Redis的存储机制</span><span style=\"color:#555555;\"><br/></span></p><p><span style=\"color:#555555;\">Redis存储机制分成两种Snapshot和AOF。无论是那种机制,Redis都是将数据存储在内存中。这点毋庸置疑。当然Redis的数据持久化另聊。</span></p><p><span style=\"color:#555555;\"><br/></span></p><p><span style=\"color:#555555;\"><strong>Snapshot工作原理</strong>: 是将数据先存储在内存，然后当数据累计达到某些设定的伐值的时候，就会触发一次DUMP操作，将变化的数据一次性写入数据文件（RDB文件）。</span></p><p><span style=\"color:#555555;\"><img src=\"http://bucketpublic.kevinfei.com/5c941201909160737021497.png\"/></span></p><p><br/><span style=\"color:#555555;\"></span></p><p><span style=\"color:#555555;\"><strong>AOF 工作原理</strong>:\r\n \r\n是将数据也是先存在内存，但是在存储的时候会使用调用fsync来完成对本次写操作的日志记录，这个日志揭露文件其实是一个基于Redis网络交互协议的文本文件。AOF调用fsync也不是说全部都是无阻塞的，在某些系统上可能出现fsync阻塞进程的情况，对于这种情况可以通过配置修改，但默认情况不要修改。AOF最关键的配置就是关于调用fsync追加日志文件的平率，有两种预设频率，always每次记录进来都添加，everysecond\r\n 每秒添加一次。两个配置各有所长后面分析。由于是采用日志追加的方式来持久话数据，所以引出了第二个日志的概念：rewrite. 后面介绍它的由来。</span></p><p><span style=\"color:#555555;\"><img src=\"http://bucketpublic.kevinfei.com/232f6201909160737493091.png\"/></span></p><p>&nbsp;</p><p><span style=\"color:#555555;\"><strong>存储模式性能和安全比较：</strong></span></p><p>&nbsp;</p><p><strong>1.性能</strong></p><p>Snapshot方式的性能是要明显高于AOF方式的，原因有两点：</p><p>&nbsp;</p><p><span style=\"color:#555555;\">采用2进制方式存储数据，数据文件比较小，加载快速。<br/>存储的时候是按照配置中的save策略来存储，每次都是聚合很多数据批量存储，写入的效率很好，而AOF则一般都是工作在实时存储或者准实时模式下。相对来说存储的频率高，效率却偏低。</span></p><p>&nbsp;</p><p><strong>2.数据安全</strong></p><p>AOF数据安全性高于Snapshot存储，原因：</p><p>&nbsp;</p><p><span style=\"color:#555555;\">Snapshot存储是基于累计批量的思想，也就是说在允许的情况下，累计的数据越多那么写入效率也就越高，但数据的累计是靠时间的积累完成的，那么如果在长时间数据不写入RDB，但Redis又遇到了崩溃，那么没有写入的数据就无法恢复了，但是AOF方式偏偏相反，根据AOF配置的存储频率的策略可以做到最少的数据丢失和较高的数据恢复能力。<br/>说完了性能和安全，这里不得不提的就是在Redis中的Rewrite的功能，AOF的存储是按照记录日志的方式去工作的，那么成千上万的数据插入必然导致日志文件的扩大，Redis这个时候会根据配置合理触发Rewrite操作，所谓Rewrite就是将日志文件中的所有数据都重新写到另外一个新的日志文件中，但是不同的是，对于老日志文件中对于Key的多次操作，只保留最终的值的那次操作记录到日志文件中，从而缩小日志文件的大小。这里有两个配置需要注意：<br/>auto-aof-rewrite-percentage 100 （当前写入日志文件的大小占到初始日志文件大小的某个百分比时触发Rewrite）<br/>auto-aof-rewrite-min-size 64mb （本次Rewrite最小的写入数据）</span></p><p><span style=\"color:#555555;\"><br/></span></p><p><br/></p>', 113, 0, 0, 1, 100, 'Redis的存储机制', 'Redis的存储机制', 0, 1567681754, 1568853350);
INSERT INTO `ad_article` VALUES (12, 9, 'Mysql索引的数据结构记录', '', '成长的小白菜', 'Mysql索引的数据结构记录，相信大家对mysql的索引都不陌生，实际上在平时的业务开发中，我们可能有时候更多的考虑的是业务逻辑，从而忽略了对mysql的深入了解。所以些写下这个文章帮助记录。', '', '<p style=\"text-align: center;\">&nbsp; &nbsp;&nbsp;Mysql的索引机制&nbsp; &nbsp;&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;相信大家对mysql的索引都不陌生，但是不知道大家对于索引是否有足够的关注，反正在之前我是一点也不关心，因为前单位有专业的DBA，所以我们只需要考虑到业务逻辑就可以了，但是，最近找工作的时候才发现，自己对于mysql索引了解的太少，该篇文章主要是介绍mysql的索引。希望能够给大家一点帮助。也帮助记忆。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;索引是帮助大家提供快速检索数据的一种数据结构。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;常见的Mysql索引主要有2种数据结构：<span style=\"color: rgb(255, 0, 0);\">B+树结构</span> 和 <span style=\"color: rgb(255, 0, 0);\">hash结构</span>。常见的InnoDB引擎就是使用的B+树的数据结构。<br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>B+树是一个平衡的多叉树。B+树从根节点到叶子节点的搜索效率基本相当，不会出现大幅波动。</p><p>哈希索引采用一定的哈希算法，把键值换成新的哈希值，检索时不需要类似B+树那样从根节点逐级查找，只需一次哈希算法即可立刻定位到相应的位置。</p><p><br/></p><p>两者的区别：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;哈希索引的优势：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）等值查询。哈希索引具有绝对优势（前提是：没有大量重复键值，如果大量重复键值时，哈希索引的效率很低，因为存在所谓的哈希碰撞问题。）</p><p>&nbsp;&nbsp;&nbsp;&nbsp;哈希索引不适用的场景：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; （1）不支持范围查询</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）不支持索引完成排序</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）不支持联合索引的最左前缀匹配规则</p><p><br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;MySQL中，只有HEAP/MEMORY引擎才显示支持哈希索引。而常用的InnoDB引擎中默认使用的是B+树索引，它会实时监控表上索引的使用情况，如果认为建立哈希索引可以提高查询效率，则自动在内存中的“自适应哈希索引缓冲区”建立哈希索引（在InnoDB中默认开启自适应哈希索引），通过观察搜索模式，MySQL会利用index key的前缀建立哈希索引，如果一个表几乎大部分都在缓冲池中，那么建立一个哈希索引能够加快等值查询。</p><p><br/></p><p>注意：在某些工作负载下，通过哈希索引查找带来的性能提升远大于额外的监控索引搜索情况和保持这个哈希表结构所带来的开销。但某些时候，在负载高的情况下，自适应哈希索引中添加的read/write锁也会带来竞争，比如高并发的join操作。like操作和%的通配符操作也不适用于自适应哈希索引，可能要关闭自适应哈希索引。</p><p><br/></p><p>unique key unique_username using btree(`user_name`)&nbsp;&nbsp;</p><p>这里的using btree 只是显示的指定的使用的索引的方式为b+树，对于innodb来说默认的索引方式也是用b+树，因此，也可以不写。</p>', 502, 0, 0, 1, 100, 'Mysql索引的数据结构记录', 'Mysql索引的数据结构记录', 0, 1568265199, 1568265411);
INSERT INTO `ad_article` VALUES (13, 3, 'CGI、FSATCGI、php-fpm、phpcgi 介绍', '', '成长的小白菜', 'CGI、FSATCGI、php-fpm、phpcgi 介绍', 'http://bucketpublic.kevinfei.com/795b3201912230015524869.png', '<h2><strong>CGI：</strong></h2><p>全称：common gateway interface 通用网关接口。</p><p><strong>在Web发展的最初，全球的互联网的网页是静态的</strong>，客户端向服务器请求网页，获得了一个静态的网页。所谓静态的网页的就是所有人得到的网页都是相同的。</p><p>但是随着因特网的发展，Web服务商希望可以实现动态的网页。打个比方，购物网站希望给用户发送个性化的菜单，比如我的购车里有一桶泡面，你的购物车有一瓶矿泉水。当我们各自登录该购物网站时（实质是浏览器提交表单的过程），最后，我们获得的网页一样吗？？显然是不一样的。因为我的购物车有泡面，你有矿泉水。<strong>这就是动态的页面</strong>。</p><p>如果去实现这样的功能呢？这就是迫切的需求，然后就 产生了技术--CGI</p><p>Web服务器找到解决方案，通过在CGI应用，当用户请求时提交了他的Form表单，服务器接收后调用CGI 应用处理，CGI返回相应的数据，最终交付给用户。</p><p><span style=\"font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;color:#4b4b4b;font-size:13px;\">　<strong>CGI工作原理：</strong></span></p><p><span style=\"font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;color:#4b4b4b;font-size:13px;\">每当客户请求CGI的时候，WEB服务器就请求操作系统生成一个新的CGI解释器进程(如php-cgi.exe)，CGI\r\n \r\n的一个进程则处理完一个请求后退出，下一个请求来时再创建新进程。当然，这样在访问量很少没有并发的情况也行。可是当访问量增大，并发存在，这种方式就不\r\n 适合了</span><br/></p><p><span style=\"font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;color:#4b4b4b;font-size:13px;\">最早的Web服务器简单地响应浏览器发来的HTTP请求，并将存储在服务器上的HTML文件返回给浏览器，也就是静态html。事物总是不\r\n 断发展，网站也越来越复杂，所以出现动态技术。但是服务器并不能直接运行 \r\nphp，asp这样的文件，自己不能做，外包给别人吧，但是要与第三做个约定，我给你什么，然后你给我什么，就是握把请求参数发送给你，然后我接收你的处\r\n 理结果给客户端。那这个约定就是&nbsp;common gateway interface，简称cgi。这个协议可以用vb，c，php，python \r\n来实现。cgi只是接口协议，根本不是什么语言。下面图可以看到流程 &nbsp;&nbsp;</span><br/></p><p><span style=\"font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;color:#4b4b4b;font-size:13px;\"></span><br/></p><p><img src=\"http://bucketpublic.kevinfei.com/795b3201912230015524869.png\" width=\"580px\" height=\"380px;\"/></p><p><br/></p><p><strong><span style=\"font-size:32px;\">FASTCGI</span></strong>：</p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\">FastCGI像是一个常驻(long-live)型的CGI，它可以一直执行着，只要激活后，不会每次都要花费时间去fork一次（这是CGI最为人诟病的fork-and-execute 模式）。</p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><strong>FastCGI的整个工作流程是这样的：</strong></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><strong>　　1.<span style=\"font-family:Helvetica, Arial, sans-serif;font-size:14px;color:#222222;font-weight:normal;line-height:24px;text-align:left;\">Web Server启动时载入FastCGI进程管理器（IIS ISAPI或Apache Module)</span></strong></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><strong><span style=\"font-family:Helvetica, Arial, sans-serif;font-size:14px;color:#222222;font-weight:normal;line-height:24px;text-align:left;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>2.</strong><span style=\"line-height:24px;\">FastCGI进程管理器自身初始化，启动多个CGI解释器进程(可见多个php-cgi)并等待来自Web\r\n Server的连接。</span></span></strong></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><span style=\"font-weight:bold;\"><span style=\"font-family:Helvetica, Arial, sans-serif;font-size:14px;color:#222222;font-weight:normal;line-height:24px;text-align:left;\"><span style=\"line-height:24px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>3.</strong><span style=\"line-height:24px;\">当客户端请求到达Web\r\n Server时，FastCGI进程管理器选择并连接到一个CGI解释器。 Web server将CGI环境变量和标准输入发送到FastCGI子进程php-cgi。</span></span></span></span></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><span style=\"font-weight:bold;\"><span style=\"font-weight:normal;font-size:14px;line-height:24px;font-family:Helvetica, Arial, sans-serif;color:rgb(34,34,34);text-align:left;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;4</strong>.<span style=\"line-height:24px;\">FastCGI\r\n 子进程完成处理后将标准输出和错误信息从同一连接返回Web Server。当FastCGI子进程关闭连接时， \r\n请求便告处理完成。FastCGI子进程接着等待并处理来自FastCGI进程管理器(运行在Web Server中)的下一个连接。 \r\n在CGI模式中，php-cgi在此便退出了。</span></span></span></span></span></p><p><br/></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><span style=\"font-weight:bold;\"><span style=\"font-weight:normal;font-size:14px;line-height:24px;font-family:Helvetica, Arial, sans-serif;color:rgb(34,34,34);text-align:left;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\">&nbsp;<strong>PHP-FPM与Spawn-FCGI</strong></span></span></span></span></span></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><span style=\"font-weight:bold;\"><span style=\"font-weight:normal;font-size:14px;line-height:24px;font-family:Helvetica, Arial, sans-serif;color:rgb(34,34,34);text-align:left;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\">　　<span style=\"font-family:Arial, Tahoma;color:#333333;line-height:20px;text-indent:28px;\">Spawn-FCGI是一个通用的FastCGI管理服务器，它是lighttpd中的一部份，很多人都用Lighttpd的Spawn-FCGI进行FastCGI模式下的管理工作。\r\n 但是有缺点，于是<span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;line-height:21px;text-indent:0px;\">PHP-fpm就是针对于PHP的，Fastcgi的一种实现，他负责管理一个进程池，来处理来自Web服务器的请求。目前，PHP-fpm是内置于PHP的。</span></span></span></span></span></span></span></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><span style=\"font-weight:bold;\"><span style=\"font-weight:normal;font-size:14px;line-height:24px;font-family:Helvetica, Arial, sans-serif;color:rgb(34,34,34);text-align:left;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\"><span style=\"line-height:20px;font-family:Arial, Tahoma;color:rgb(51,51,51);text-indent:28px;\"><span style=\"line-height:21px;font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;text-indent:0px;\"><span style=\"color:rgb(51,51,51);font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;\">---------------------<span style=\"color:rgb(51,51,51);font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;\">---------------------<span style=\"color:rgb(51,51,51);font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;\">---------------------<span style=\"color:rgb(51,51,51);font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;\">---------------------<span style=\"color:rgb(51,51,51);font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;\">---------------------<span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;color:#333333;\">---------------------<span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;color:#333333;\">---------------------<span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:14px;color:#333333;\">---------------------</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><span style=\"font-size:14px;color:#333333;\">首先，CGI是干嘛的？CGI是为了保证web server传递过来的数据是标准格式的，方便CGI程序的编写者。</span></p><p style=\"font-size:13px;color:rgb(75,75,75);font-family:verdana, Arial, helvetica, &#39;sans-seriff&#39;;text-align:left;\"><span style=\"font-weight:bold;\"><span style=\"font-weight:normal;font-size:14px;line-height:24px;font-family:Helvetica, Arial, sans-serif;color:rgb(34,34,34);text-align:left;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\"><span style=\"line-height:24px;\"><span style=\"font-family:Arial, Tahoma;color:#333333;line-height:20px;text-indent:28px;\"><span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;line-height:21px;text-indent:0px;\"><span style=\"font-size:14px;color:#555555;\"></span></span></span></span></span></span></span></span></p><blockquote style=\"font-size:14px;border-left-width:2px;border-left-style:solid;border-left-color:rgb(0,154,97);color:rgb(85,85,85);\"><p>web server（比如说nginx）只是内容的分发者。比如，如果请求<code style=\"font-family:&#39;Source Code Pro&#39;, Consolas, Menlo, Monaco, &#39;Courier New&#39;, monospace;font-size:.93em;color:rgb(199,37,78);\">/index.html</code>，那么web server会去文件系统中找到这个文件，发送给浏览器，这里分发的是静态数据。好了，如果现在请求的是<code style=\"font-family:&#39;Source Code Pro&#39;, Consolas, Menlo, Monaco, &#39;Courier New&#39;, monospace;font-size:.93em;color:rgb(199,37,78);\">/index.php</code>，根据配置文件，nginx知道这个不是静态文件，需要去找PHP解析器来处理，那么他会把这个请求简单处理后交给PHP解析器。Nginx会传哪些数据给PHP解析器呢？url要有吧，查询字符串也得有吧，POST数据也要有，HTTP\r\n header不能少吧，好的，CGI就是规定要传哪些数据、以什么样的格式传递给后方处理这个请求的协议。仔细想想，你在PHP代码中使用的用户从哪里来的。</p><p>当web server收到<code style=\"font-family:&#39;Source Code Pro&#39;, Consolas, Menlo, Monaco, &#39;Courier New&#39;, monospace;font-size:.93em;color:rgb(199,37,78);\">/index.php</code>这个请求后，会启动对应的CGI程序，这里就是PHP的解析器。接下来PHP解析器会解析php.ini文件，初始化执行环境，然后处理请求，再以规定CGI规定的格式返回处理后的结果，退出进程。web\r\n server再把结果返回给浏览器。</p></blockquote><p style=\"color:rgb(51,51,51);font-size:14px;\">好了，CGI是个协议，跟进程什么的没关系。那fastcgi又是什么呢？Fastcgi是用来提高CGI程序性能的。</p><blockquote style=\"font-size:14px;border-left-width:2px;border-left-style:solid;border-left-color:rgb(0,154,97);color:rgb(85,85,85);\"><p>提高性能，那么CGI程序的性能问题在哪呢？\"PHP解析器会解析php.ini文件，初始化执行环境\"，就是这里了。标准的CGI对每个请求都会执行这些步骤（不闲累啊！启动进程很累的说！），所以处理每个时间的时间会比较长。这明显不合理嘛！那么Fastcgi是怎么做的呢？首先，Fastcgi会先启一个master，解析配置文件，初始化执行环境，然后再启动多个worker。当请求过来时，master会传递给一个worker，然后立即可以接受下一个请求。这样就避免了重复的劳动，效率自然是高。而且当worker不够用时，master可以根据配置预先启动几个worker等着；当然空闲worker太多时，也会停掉一些，这样就提高了性能，也节约了资源。这就是fastcgi的对进程的管理。</p></blockquote><p style=\"color:rgb(51,51,51);font-size:14px;\">那PHP-FPM又是什么呢？是一个实现了Fastcgi的程序，被PHP官方收了。</p><blockquote style=\"font-size:14px;border-left-width:2px;border-left-style:solid;border-left-color:rgb(0,154,97);color:rgb(85,85,85);\"><p>大家都知道，PHP的解释器是php-cgi。php-cgi只是个CGI程序，他自己本身只能解析请求，返回结果，不会进程管理（皇上，臣妾真的做不到啊！）所以就出现了一些能够调度php-cgi进程的程序，比如说由lighthttpd分离出来的spawn-fcgi。好了PHP-FPM也是这么个东东，在长时间的发展后，逐渐得到了大家的认可（要知道，前几年大家可是抱怨PHP-FPM稳定性太差的），也越来越流行。</p></blockquote><p style=\"color:rgb(51,51,51);font-size:14px;\">网上有的说，fastcgi是一个协议，php-fpm实现了这个协议</p><blockquote style=\"font-size:14px;border-left-width:2px;border-left-style:solid;border-left-color:rgb(0,154,97);color:rgb(85,85,85);\"><p>对。</p></blockquote><p style=\"color:rgb(51,51,51);font-size:14px;\">有的说，php-fpm是fastcgi进程的管理器，用来管理fastcgi进程的</p><blockquote style=\"font-size:14px;border-left-width:2px;border-left-style:solid;border-left-color:rgb(0,154,97);color:rgb(85,85,85);\"><p>对。php-fpm的管理对象是php-cgi。但不能说php-fpm是fastcgi进程的管理器，因为前面说了fastcgi是个协议，似乎没有这么个进程存在，就算存在php-fpm也管理不了他（至少目前是）。 有的说，php-fpm是php内核的一个补丁</p><p>以前是对的。因为最开始的时候php-fpm没有包含在PHP内核里面，要使用这个功能，需要找到与源码版本相同的php-fpm对内核打补丁，然后再编译。后来PHP内核集成了PHP-FPM之后就方便多了，使用<code style=\"font-family:&#39;Source Code Pro&#39;, Consolas, Menlo, Monaco, &#39;Courier New&#39;, monospace;font-size:.93em;color:rgb(199,37,78);\">--enalbe-fpm</code>这个编译参数即可。</p></blockquote><p style=\"color:rgb(51,51,51);font-size:14px;\">有的说，修改了php.ini配置文件后，没办法平滑重启，所以就诞生了php-fpm</p><blockquote style=\"font-size:14px;border-left-width:2px;border-left-style:solid;border-left-color:rgb(0,154,97);color:rgb(85,85,85);\"><p>是的，修改php.ini之后，php-cgi进程的确是没办法平滑重启的。php-fpm对此的处理机制是新的worker用新的配置，已经存在的worker处理完手上的活就可以歇着了，通过这种机制来平滑过度。</p></blockquote><p style=\"color:rgb(51,51,51);font-size:14px;\">还有的说PHP-CGI是PHP自带的FastCGI管理器，那这样的话干吗又弄个php-fpm出</p><blockquote style=\"font-size:14px;border-left-width:2px;border-left-style:solid;border-left-color:rgb(0,154,97);color:rgb(85,85,85);\"><p>不对。php-cgi只是解释PHP脚本的程序而已。</p></blockquote><p><br/></p><h1><span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:32px;color:#333333;\"><strong>PHPCGI：</strong></span></h1><p><span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, &#39;Trebuchet MS&#39;, Arial, sans-serif;font-size:32px;color:#333333;\"><strong><span style=\"font-size:14px;color:#555555;\">PHP的解释器是php-cgi。php-cgi只是个CGI程序，他自己本身只能解析请求，返回结果，不会进程管理，所以就出现了一些能够调度php-cgi进程的程序，比如说由lighthttpd分离出来的spawn-fcgi。好了，PHP-FPM也是这么个东东，在长时间的发展后，逐渐得到了大家的认可（要知道，前几年大家可是抱怨PHP-FPM稳定性太差的），也越来越流行。</span></strong></span></p><p><br/></p>', 581, 0, 0, 1, 100, 'CGI、FSATCGI、php-fpm、phpcgi 介绍', 'CGI、FSATCGI、php-fpm、phpcgi 介绍', 0, 1571320522, 1577031469);
INSERT INTO `ad_article` VALUES (14, 1, '进程和线程、协程的区别', '', '成长的小白菜', '现在多进程多线程已经是老生常谈了，协程也在最近几年流行起来。python中有协程库gevent，py web框架tornado中也用了gevent封装好的协程。本文主要介绍进程、线程和协程三者之间的区别。', '', '<p>一、概念</p><p>　　1、进程</p><p>进程是具有一定独立功能的程序关于某个数据集合上的一次运行活动,进程是系统进行资源分配和调度的一个独立单位。每个进程都有自己的独立内存空间，不同进程通过进程间通信来通信。由于进程比较重量，占据独立的内存，所以上下文进程间的切换开销（栈、寄存器、虚拟内存、文件句柄等）比较大，但相对比较稳定安全。</p><p>　　2、线程</p><p>线程是进程的一个实体,是CPU调度和分派的基本单位,它是比进程更小的能独立运行的基本单位.线程自己基本上不拥有系统资源,只拥有一点在运行中必不可少的资源(如程序计数器,一组寄存器和栈),但是它可与同属一个进程的其他的线程共享进程所拥有的全部资源。线程间通信主要通过共享内存，上下文切换很快，资源开销较少，但相比进程不够稳定容易丢失数据。</p><p>　　3、协程</p><p><strong>协程是一种用户态的轻量级线程，</strong>协程的调度完全由用户控制。协程拥有自己的寄存器上下文和栈。协程调度切换时，将寄存器上下文和栈保存到其他地方，在切回来的时候，恢复先前保存的寄存器上下文和栈，直接操作栈则基本没有内核切换的开销，可以不加锁的访问全局变量，所以上下文的切换非常快。</p><p>&nbsp;</p><p>二、区别：</p><p>　　1、进程多与线程比较</p><p>线程是指进程内的一个执行单元,也是进程内的可调度实体。线程与进程的区别:<br/><span style=\"color: #000000;\">1) 地址空间:线程是进程内的一个执行单元，进程内至少有一个线程，它们共享进程的地址空间，而进程有自己独立的地址空间<br/>2) 资源拥有:进程是资源分配和拥有的单位,同一个进程内的线程共享进程的资源<br/>3) 线程是处理器调度的基本单位,但进程不是<br/>4) 二者均可并发执行</span></p><p><span style=\"color: #000000;\">5)&nbsp;每个独立的线程有一个程序运行的入口、顺序执行序列和程序的出口，但是线程不能够独立执行，必须依存在应用程序中，由应用程序提供多个线程执行控制</span></p><p><span style=\"color: #000000;\">　　2、协程多与线程进行比较</span></p><p><span style=\"color: #000000;\">1) 一个线程可以多个协程，一个进程也可以单独拥有多个协程，这样python中则能使用多核CPU。</span></p><p><span style=\"color: #000000;\">2) 线程进程都是同步机制，而协程则是异步</span></p><p><span style=\"color: #000000;\">3)&nbsp;协程能保留上一次调用时的状态，每次过程重入时，就相当于进入上一次调用的状态</span></p><p>&nbsp;</p><p>&nbsp;三、进程和线程、协程在python中的使用</p><p>　　1、多进程一般使用multiprocessing库，来利用多核CPU，主要是用在CPU密集型的程序上，当然生产者消费者这种也可以使用。多进程的优势就是一个子进程崩溃并不会影响其他子进程和主进程的运行，但缺点就是不能一次性启动太多进程，会严重影响系统的资源调度，特别是CPU使用率和负载。使用多进程可以查看文章《<a class=\"postTitle2\" href=\"http://www.cnblogs.com/lxmhhy/p/6052167.html\" target=\"_blank\">python 多进程使用总结</a>》。注：python2的进程池在类中的使用会有问题，需要把类函数定义成全局函数。具体可参考 http://bbs.chinaunix.net/thread-4111379-1-1.html</p><p>　　2、多线程一般是使用threading库，完成一些IO密集型并发操作。多线程的优势是切换快，资源消耗低，但一个线程挂掉则会影响到所有线程，所以不够稳定。现实中使用线程池的场景会比较多，具体可参考《<a href=\"http://www.cnblogs.com/lxmhhy/p/6032924.html\" target=\"_blank\">python线程池实现</a>》。</p><p>　　3、协程一般是使用gevent库，当然这个库用起来比较麻烦，所以使用的并不是很多。相反，协程在tornado的运用就多得多了，使用协程让tornado做到单线程异步，据说还能解决C10K的问题。所以协程使用的地方最多的是在web应用上。</p><p>总结一下就是IO密集型一般使用多线程或者多进程，CPU密集型一般使用多进程，强调非阻塞异步并发的一般都是使用协程，当然有时候也是需要多进程线程池结合的，或者是其他组合方式。</p><p><br/></p>', 549, 0, 0, 1, 100, '', '', 0, 1577007043, 1577007043);
INSERT INTO `ad_article` VALUES (15, 1, 'MySQL事务原理浅析', '', '成长的小白菜', '因为自己对数据的可靠性，可用性方面特别感兴趣，所以在MySQL事务方面看了很多资料，也看了很多博客，所以想到自己也写一篇博客整理整理自己所学内容，尽量用自己的语言解释得通俗易懂。', '', '<article><h3>前言</h3><p>因为自己对数据的可靠性，可用性方面特别感兴趣，所以在MySQL事务方面看了很多资料，也看了很多博客，所以想到自己也写一篇博客整理整理自己所学内容，尽量用自己的语言解释得通俗易懂。<br/></p><h3>事务经典场景</h3><p>在很多介绍事务的博客都会代入这样一个场景，先简单说说：</p><p>A给B转账100，A少100，B多100。如果A少100后系统崩溃怎么办？B的钱多不了，这样金钱总数凭空少了100。这里就需要用到事务了。</p><h3>什么是事务？</h3><p>事务是恢复和<a href=\"https://baike.baidu.com/item/%E5%B9%B6%E5%8F%91%E6%8E%A7%E5%88%B6\" target=\"_blank\">并发控制</a>的基本单位，事务有四个特性（ACID），原子性（Atomicity），一致性（Consistency），隔离性（Isolation），持久性（Durability）。本文主要围绕这四个特性展开介绍。</p><h3>原子性</h3><p>原子性就是不可拆分的特性，要么全部成功然后提交(commit)，要么全部失败然后回滚（rollback）。若开启事务，在上述场景就不会出现 \r\nA少100 成功，B多100 失败 这种情况。MySQL通过Redo Log重做日志实现了原子性，在将执行SQL语句时，会先写入redo log\r\n buffer，再执行SQL语句，若SQL语句执行出错就会根据redo log buffer中的记录来执行回滚操作，由此拥有原子性。</p><h3>一致性</h3><p>一致性指事务将数据库从一种状态转变为下一种一致的状态。比如有一个字段name有唯一索引约束，那么在事务前后都不能有重复的name出现违反唯一索引约束，否则回滚。在上述场景中即金钱总数总是200，不能凭空增加减少。MySQL通过undo\r\n Log实现一致性，执行SQL语句时，会先写入undo log再写入 redo log \r\nbuffer。undo是逻辑日志，会根据之前的SQL语句进行相应回滚，比如之前是insert那么回滚时会执行一个delete，一个update会执行\r\n 一个相反的update。并且除了回滚，undo \r\nlog还有一个作用是MVCC，当用户读取一行记录时，若该记录已经被其他事务占用，当前事务可通过undo读取之前的行版本信息，实现非锁定读取。<strong>并且undo log也会产生redo log，因为undo log也需要持久性的保护。</strong></p><h3>隔离性</h3><p>首先介绍如果没有隔离性会发生的4种情况</p><h5>丢失更新</h5><p>A事务撤销时，把已经提交的B事务的更新数据覆盖了。这种错误可能造成很严重的问题，通过下面的账户取款转账就可以看出来，MySQL通过三级封锁协议的第一级解决了丢失更新，事务 T 要修改数据 A 时必须加 X 锁，直到 T 结束才释放锁。</p><table><thead><tr class=\"firstRow\"><th>时间</th><th>取款事务A</th><th>转账事务B</th></tr></thead><tbody><tr><td>T1</td><td><strong>开始事务</strong></td><td><br/></td></tr><tr><td>T2</td><td><br/></td><td><strong>开始事务</strong></td></tr><tr><td>T3</td><td>查询账户余额为1000元</td><td><br/></td></tr><tr><td>T4</td><td><br/></td><td>查询账户余额为1000元</td></tr><tr><td>T5</td><td><br/></td><td>汇入100元把余额改为1100元</td></tr><tr><td>T6</td><td><br/></td><td><strong>提交事务</strong></td></tr><tr><td>T7</td><td>取出100元把余额改为900元</td><td><br/></td></tr><tr><td>T8</td><td><strong>撤销事务</strong></td><td><br/></td></tr><tr><td>T9</td><td><strong>余额恢复为1000</strong> <strong>元（丢失更新）</strong></td><td><br/></td></tr></tbody></table><h5>脏读</h5><p>脏读主要是读取到了其他事务的数据，而其他事务随后发生回滚。MySQL通过三级封锁协议的第二级解决了脏读，在一级的基础上，要求读取数据 A 时必须加 S 锁，读取完马上释放 S 锁。</p><table><thead><tr class=\"firstRow\"><th>时间</th><th>取款事务A</th><th>转账事务B</th></tr></thead><tbody><tr><td>T1</td><td><strong>开始事务</strong></td><td><br/></td></tr><tr><td>T2</td><td><br/></td><td><strong>开始事务</strong></td></tr><tr><td>T3</td><td>查询账户余额为1000元</td><td><br/></td></tr><tr><td>T4</td><td><br/></td><td><br/></td></tr><tr><td>T5</td><td><br/></td><td>汇入100元把余额改为1100元</td></tr><tr><td>T6</td><td>查询账户余额为1100元<strong>（脏读）</strong></td><td><br/></td></tr><tr><td>T7</td><td><br/></td><td><strong>撤销事务</strong></td></tr><tr><td>T8</td><td>汇入100元以为是1200元</td><td><br/></td></tr></tbody></table><h5>不可重复读</h5><p>不可重复读是读取到数据后，随后其他事务对数据发生了<strong>修改</strong>，无法再次读取。MySQL通过三级封锁协议的第三级解决了不可重复读。在二级的基础上，要求读取数据 A 时必须加 S 锁，直到事务结束了才能释放 S 锁。</p><table><thead><tr class=\"firstRow\"><th><strong>时间</strong></th><th>取款事务A</th><th>转账事务B</th></tr></thead><tbody><tr><td>T1</td><td><strong>开始事务</strong></td><td><br/></td></tr><tr><td>T2</td><td><br/></td><td><strong>开始事务</strong></td></tr><tr><td>T3</td><td>查询账户余额为1000元</td><td><br/></td></tr><tr><td>T4</td><td><br/></td><td><br/></td></tr><tr><td>T5</td><td><br/></td><td>汇入100元把余额改为1100元</td></tr><tr><td>T6</td><td>查询账户余额为1100元<strong>（不可重复读）</strong></td><td><br/></td></tr><tr><td>T7</td><td><br/></td><td><strong>提交事务</strong></td></tr><tr><td>T8</td><td><strong>提交事务</strong></td><td><br/></td></tr></tbody></table><h5>幻读</h5><p>幻读是读取到数据后，随后其他事务对数据发生了<strong>新增</strong>，无法再次读取。在InnoDB引擎Repeatable Read的隔离级别下，MySQL通过Next-Key Lock以及MVCC解决了幻读，事务中分为当前读以及快照读。</p><p><strong>1.快照读(snapshot read)</strong> &nbsp;------通过MVCC来避免幻读</p><p>简单的select操作(不包括 select ... lock in share mode, select ... for update)</p><p><strong>2.当前读(current read)</strong> &nbsp;------通过Next-Key Lock 来避免幻读 &nbsp;Next-Key Lock即间隙锁（Gap Lock）+行锁 （Record Lock）</p><p>select ... lock in share mode</p><p>select ... for update</p><p>insert</p><p>update</p><p>delete</p><table><thead><tr class=\"firstRow\"><th><strong><em><em>时间</em></em></strong></th><th>取款事务A</th><th>转账事务B</th></tr></thead><tbody><tr><td>T1</td><td><strong>开始事务</strong></td><td><br/></td></tr><tr><td>T2</td><td><br/></td><td><strong>开始事务</strong></td></tr><tr><td>T3</td><td>查询账户余额为1000元 RMB 100元美元</td><td><br/></td></tr><tr><td>T4</td><td><br/></td><td><br/></td></tr><tr><td>T5</td><td><br/></td><td>汇入100欧元</td></tr><tr><td>T6</td><td>查询账户余额为1000元 RMB 100元美元 100欧元<strong>（幻读）</strong></td><td><br/></td></tr><tr><td>T7</td><td><br/></td><td><strong>提交事务</strong></td></tr><tr><td>T8</td><td><strong>提交事务</strong></td><td><br/></td></tr></tbody></table><p>事务有四个隔离级别</p><h5>Read Uncommitted</h5><p>解决了丢失更新</p><h5>Read Committed</h5><p>解决了丢失更新+脏读</p><h5>Repeatable Read</h5><p>解决了丢失更新+脏读+不可重复读 （Innodb下也解决了幻读，原理上文已说明）</p><h5>Serializable</h5><p>解决了丢失更新+脏读+不可重复读+幻读</p><p><strong>从上至下，性能越差，安全性越优。</strong></p><h3>持久性</h3><p>一旦事务提交，则其所做的修改就会永久保存到数据库中。此时即使系统崩溃，修改的数据也不会丢失。具体实现原理就是在事务commit之前会将，redo\r\n log buffer中的数据持久化到硬盘中的redo log \r\nfile，这样在commit的时候，硬盘中已经有了我们修改或新增的数据，由此做到持久化。</p><h3>总结</h3><p>简单总结了一下MySQL事务，对于Redo Undo没有做到了如指掌的掌握所以介绍篇幅不太大，随着学习深入以后会进行相应补充。</p><h3>参考资料</h3><p>-----《MySQL技术内幕 InnoDB存储引擎》 第2版</p></article><p><br/></p>', 19, 0, 0, 1, 100, 'MySQL事务原理浅析', 'MySQL事务原理浅析', 0, 1577433777, 1577433777);
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
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='权限组';

-- ----------------------------
-- Records of ad_auth_group
-- ----------------------------
BEGIN;
INSERT INTO `ad_auth_group` VALUES (6, '超级管理员', '超级管理员', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,31,32,33,34,35,37,38,40,41,42,45,46,47,48,49,50,52', 1, 1557393786, 1584010711);
INSERT INTO `ad_auth_group` VALUES (7, '普通管理员', '普通管理员', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,31,32,33,34,35,37,38,40', 1, 1583873993, 1583888396);
INSERT INTO `ad_auth_group` VALUES (8, '日常运营员', '日常运营员', '1,2,3,4,5,6,8,12,13,14,15,17,18,19,20,22,23,24,25,26,41', 1, 1583873993, 1583873993);
INSERT INTO `ad_auth_group` VALUES (9, '测试管理员', '测试管理员', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,31,32,33,34,35,37,38,40', 1, 1583873993, 1583888387);
COMMIT;

-- ----------------------------
-- Table structure for ad_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `ad_auth_group_access`;
CREATE TABLE `ad_auth_group_access` (
  `uid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '用户id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '权限组id',
  PRIMARY KEY (`uid`)
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
  `isMenu` varchar(255) DEFAULT '1',
  `authority` varchar(255) DEFAULT NULL,
  `checked` int(3) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`authorityId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='权限规则';

-- ----------------------------
-- Records of ad_auth_rule
-- ----------------------------
BEGIN;
INSERT INTO `ad_auth_rule` VALUES (1, '-1', '常规管理', 'welcome/index', 'layui-icon layui-icon-app', 0, '0', 'welcome/index', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (2, '1', '控制台', 'welcome/home', '', 0, '1', 'welcome/home', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (3, '1', '用户管理', 'users/index', '', 0, '1', 'users/index', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (4, '3', '用户列表', 'users/list', '', 0, '0', 'users/list', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (5, '3', '添加用户', 'users/add', '', 0, '0', 'users/add', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (6, '3', '添加用户数据', 'users/adddata', '', 0, '0', 'users/adddata', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (7, '3', '编辑用户', 'users/edit', '', 0, '0', 'users/edit', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (8, '3', '编辑用户信息', 'users/editdata', '', 0, '0', 'users/editdata', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (9, '3', '删除用户', 'users/detele', '', 0, '0', 'users/detele', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (10, '3', '全选删除用户', 'users/detele_all', '', 0, '0', 'users/detele_all', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (11, '-1', '权限管理', 'rules/index', '', 0, '0', 'rules/index', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (12, '11', '规则管理', 'rules/index', '', 0, '1', 'rules/index', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (13, '12', '规则列表', 'rules/list', '', 0, '0', 'rules/list', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (14, '12', '添加规则', 'rules/add', '', 0, '0', 'rules/add', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (15, '12', '添加规则数据', 'rules/addruledata', '', 0, '0', 'rules/addruledata', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (16, '12', '编辑规则', 'rules/edit', '', 0, '0', 'rules/edit', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (17, '12', '修改规则数据', 'rules/editruledata', '', 0, '0', 'rules/editruledata', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (18, '12', '删除规则', 'rules/delete', '', 0, '0', 'rules/delete', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (19, '11', '权限组', 'groups/index', '', 0, '1', 'groups/index', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (20, '19', '权限组列表', 'groups/list', '', 0, '0', 'groups/list', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (21, '19', '获取全部权限', 'groups/rulelist', '', 0, '0', 'groups/rulelist', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (22, '19', '编辑权限组', 'groups/edit', '', 0, '0', 'groups/edit', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (23, '19', '编辑权限组数据', 'groups/editgroupdata', '', 0, '0', 'groups/editgroupdata', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (24, '19', '添加权限组', 'groups/add', '', 0, '0', 'groups/add', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (25, '19', '添加权限组数据', 'groups/addgroupdata', '', 0, '0', 'groups/addgroupdata', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (26, '11', '管理员', 'admins/index', '', 0, '1', 'admins/index', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (27, '1', '系统设置', 'systems/index', '', 0, '1', 'systems/index', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (28, '27', '添加系统数据', 'systems/upsetdata', '', 0, '0', 'systems/upsetdata', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (30, '26', '管理员列表', 'admins/list', '', 0, '0', 'admins/list', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (31, '-1', '文章管理', 'articles/index', '', 0, '0', 'articles/index', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (32, '31', '分类管理', 'categorys/index', '', 0, '1', 'categorys/index', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (33, '31', '商品管理', 'products/index', '', 0, '1', 'products/index', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (34, '33', '商品列表', 'products/list', '', 0, '0', 'products/list', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (35, '11', '获取父级列表', 'rules/getparentrule', '', 0, '0', 'rules/getparentrule', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (37, '19', '删除权限组', 'groups/detele_group', '', 0, '0', ' groups/detele_group', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (38, '32', '获取分类', 'categorys/list', '0', 1, '0', 'categorys/list', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (40, '19', '修改权限组状态', 'groups/editgroupstatus', '', 0, '0', ' groups/editgroupstatus', 0, 1583873993, 1583873993);
INSERT INTO `ad_auth_rule` VALUES (41, '11', '菜单管理', 'menus/index', '', 0, '1', ' menus/index', 0, 1583999206, 1583999206);
INSERT INTO `ad_auth_rule` VALUES (42, '41', '菜单列表', 'menus/list', '', 0, '0', '  menus/list', 0, 1583999240, 1583999267);
INSERT INTO `ad_auth_rule` VALUES (45, '41', '添加菜单', 'menus/add', '', 0, '0', ' menus/add', 0, 1584000185, 1584000185);
INSERT INTO `ad_auth_rule` VALUES (46, '41', '编辑菜单', 'menus/edit', '', 0, '0', ' menus/edit', 0, 1584000768, 1584000768);
INSERT INTO `ad_auth_rule` VALUES (47, '-1', '组件管理', 'component/index', '', 0, '0', 'component/index', 0, 1584003094, 1584003094);
INSERT INTO `ad_auth_rule` VALUES (48, '47', '图标列表', 'component/icon', '', 0, '1', ' component/icon', 0, 1584003094, 1584003094);
INSERT INTO `ad_auth_rule` VALUES (49, '31', '图片管理', 'carouse/index', '', 0, '1', ' carouse/index ', 0, 1584006271, 1584006351);
INSERT INTO `ad_auth_rule` VALUES (50, '47', '图标选择', 'component/iconpicker', '', 0, '1', ' component/iconpicker', 0, 1584006414, 1584006414);
INSERT INTO `ad_auth_rule` VALUES (52, '47', '颜色选择', 'component/colorselect', '', 0, '1', '  component/colorselect', 0, 1584010443, 1584010904);
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
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='轮播广告';

-- ----------------------------
-- Records of ad_carousel
-- ----------------------------
BEGIN;
INSERT INTO `ad_carousel` VALUES (1, 'index', 'TEST', 'TEST轮播', 'http://blog.kevinfei.com/public/upload/image/20190805/fb65bd45ec6d0b6fbc7aac1ea8c3e7a4.jpg', '_blank', '/public/upload/image/20190805/fb65bd45ec6d0b6fbc7aac1ea8c3e7a4.jpg', 0, 1, 1583873993, 1583873993);
INSERT INTO `ad_carousel` VALUES (2, 'dateils', 'Dateils', 'DATEILS描述', 'http://bucketpublic.kevinfei.com/d8595202001080848097680.jpg', '_blank', 'http://bucketpublic.kevinfei.com/d8595202001080848097680.jpg', 1, 1, 1583873993, 1583873993);
INSERT INTO `ad_carousel` VALUES (3, 'category', 'categoryName', '描述', 'http://bucketpublic.kevinfei.com/33e9f20200108084901588.jpg', '_blank', 'http://bucketpublic.kevinfei.com/33e9f20200108084901588.jpg', 2, 1, 1583873993, 1583873993);
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
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=utf8 COMMENT='分类';

-- ----------------------------
-- Records of ad_category
-- ----------------------------
BEGIN;
INSERT INTO `ad_category` VALUES (1, 0, '通用机械设备', 100, '通用机械设备', '通用机械设备', 'http://china.makepolo.com/list/d9/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (2, 1, '泵与阀门', 100, '泵与阀门', '泵与阀门', 'http://china.makepolo.com/list/spc5768/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (3, 1, '金属切削机床', 100, '金属切削机床', '金属切削机床', 'http://china.makepolo.com/list/spc4657/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (4, 1, '锻压机床', 100, '锻压机床', '锻压机床', 'http://china.makepolo.com/list/spc5063/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (5, 1, '特种加工机床', 100, '特种加工机床', '特种加工机床', 'http://china.makepolo.com/list/spc4551/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (6, 1, '机床附件', 100, '机床附件', '机床附件', 'http://china.makepolo.com/list/spc5325/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (7, 1, '切削刀具', 100, '切削刀具', '切削刀具', 'http://china.makepolo.com/list/spc3646/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (8, 1, '真空获取与应用设备', 100, '真空获取与应用设备', '真空获取与应用设备', 'http://china.makepolo.com/list/spc5772/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (9, 1, '风机设备', 100, '风机设备', '风机设备', 'http://china.makepolo.com/list/spc27500/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (10, 1, '粉碎设备、粉碎机', 100, '粉碎设备、粉碎机', '粉碎设备、粉碎机', 'http://china.makepolo.com/list/spc27884/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (11, 1, '气体发生与分离设备', 100, '气体发生与分离设备', '气体发生与分离设备', 'http://china.makepolo.com/list/spc26488/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (12, 1, '制冷设备', 100, '制冷设备', '制冷设备', 'http://china.makepolo.com/list/spc27928/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (13, 1, '过滤筛分设备', 100, '过滤筛分设备', '过滤筛分设备', 'http://china.makepolo.com/list/spc25862/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (14, 1, '热处理设备', 100, '热处理设备', '热处理设备', 'http://china.makepolo.com/list/spc26005/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (15, 1, '焊接铆接与切割设备', 100, '焊接铆接与切割设备', '焊接铆接与切割设备', 'http://china.makepolo.com/list/spc5381/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (16, 1, '工业炉窑', 100, '工业炉窑', '工业炉窑', 'http://china.makepolo.com/list/spc26705/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (17, 1, '传热设备', 100, '传热设备', '传热设备', 'http://china.makepolo.com/list/spc27958/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (18, 1, '锅炉与原动机', 100, '锅炉与原动机', '锅炉与原动机', 'http://china.makepolo.com/list/spc5530/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (19, 1, '传质设备/塔设备', 100, '传质设备/塔设备', '传质设备/塔设备', 'http://china.makepolo.com/list/spc145687/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (20, 1, '分离设备', 100, '分离设备', '分离设备', 'http://china.makepolo.com/list/spc150236/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (21, 1, '混合设备', 100, '混合设备', '混合设备', 'http://china.makepolo.com/list/spc26746/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (22, 1, '反应设备', 100, '反应设备', '反应设备', 'http://china.makepolo.com/list/spc26803/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (23, 1, '干燥设备', 100, '干燥设备', '干燥设备', 'http://china.makepolo.com/list/spc26814/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (24, 1, '物料搬运及仓储设备', 100, '物料搬运及仓储设备', '物料搬运及仓储设备', 'http://china.makepolo.com/list/spc26955/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (25, 1, '储运设备', 100, '储运设备', '储运设备', 'http://china.makepolo.com/list/spc27929/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (26, 1, '包装机械', 100, '包装机械', '包装机械', 'http://china.makepolo.com/list/spc3626/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (27, 1, '消毒灭菌设备', 100, '消毒灭菌设备', '消毒灭菌设备', 'http://china.makepolo.com/list/spc3833/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (28, 1, '清洗与加香设备', 100, '清洗与加香设备', '清洗与加香设备', 'http://china.makepolo.com/list/spc26917/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (29, 1, '模具', 100, '模具', '模具', 'http://china.makepolo.com/list/spc25609/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (30, 1, '表面处理与涂装设备', 100, '表面处理与涂装设备', '表面处理与涂装设备', 'http://china.makepolo.com/list/spc28171/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (31, 1, '工控系统及装备', 100, '工控系统及装备', '工控系统及装备', 'http://china.makepolo.com/list/spc145703/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (32, 1, '铸造设备', 100, '铸造设备', '铸造设备', 'http://china.makepolo.com/list/spc1649/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (33, 1, '空气净化设备', 100, '空气净化设备', '空气净化设备', 'http://china.makepolo.com/list/spc137/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (34, 1, '气动元件', 100, '气动元件', '气动元件', 'http://china.makepolo.com/list/spc2755/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (35, 1, '液压元件', 100, '液压元件', '液压元件', 'http://china.makepolo.com/list/spc2754/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (36, 1, '电动机', 100, '电动机', '电动机', 'http://china.makepolo.com/list/spc2074/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (37, 0, '行业专用设备', 100, '行业专用设备', '行业专用设备', 'http://china.makepolo.com/list/d10/', 1583877574, 1583877574);
INSERT INTO `ad_category` VALUES (38, 37, '工程机械', 100, '工程机械', '工程机械', 'http://china.makepolo.com/list/spc1652/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (39, 37, '建材机械', 100, '建材机械', '建材机械', 'http://china.makepolo.com/list/spc1647/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (40, 37, '冶金机械', 100, '冶金机械', '冶金机械', 'http://china.makepolo.com/list/spc1648/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (41, 37, '矿山机械', 100, '矿山机械', '矿山机械', 'http://china.makepolo.com/list/spc40/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (42, 37, '石油钻采机械', 100, '石油钻采机械', '石油钻采机械', 'http://china.makepolo.com/list/spc41/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (43, 37, '地质勘查专用设备', 100, '地质勘查专用设备', '地质勘查专用设备', 'http://china.makepolo.com/list/spc147515/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (44, 37, '塑料机械', 100, '塑料机械', '塑料机械', 'http://china.makepolo.com/list/spc1645/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (45, 37, '橡胶机械', 100, '橡胶机械', '橡胶机械', 'http://china.makepolo.com/list/spc1646/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (46, 37, '电工产品制造设备', 100, '电工产品制造设备', '电工产品制造设备', 'http://china.makepolo.com/list/spc1650/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (47, 37, '电子产品制造设备', 100, '电子产品制造设备', '电子产品制造设备', 'http://china.makepolo.com/list/spc1651/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (48, 37, '化工设备', 100, '化工设备', '化工设备', 'http://china.makepolo.com/list/spc1643/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (49, 37, '日用化工机械', 100, '日用化工机械', '日用化工机械', 'http://china.makepolo.com/list/spc28241/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (50, 37, '服装机械', 100, '服装机械', '服装机械', 'http://china.makepolo.com/list/spc45/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (51, 37, '纺织机械', 100, '纺织机械', '纺织机械', 'http://china.makepolo.com/list/spc43/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (52, 37, '毛皮、制革机械', 100, '毛皮、制革机械', '毛皮、制革机械', 'http://china.makepolo.com/list/spc25484/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (53, 37, '制鞋机械', 100, '制鞋机械', '制鞋机械', 'http://china.makepolo.com/list/spc46/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (54, 37, '食品生产机械', 100, '食品生产机械', '食品生产机械', 'http://china.makepolo.com/list/spc42/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (55, 37, '饮食、炊事机械', 100, '饮食、炊事机械', '饮食、炊事机械', 'http://china.makepolo.com/list/spc3326/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (56, 37, '农业机械', 100, '农业机械', '农业机械', 'http://china.makepolo.com/list/spc39/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (57, 37, '农产品初加工机械', 100, '农产品初加工机械', '农产品初加工机械', 'http://china.makepolo.com/list/spc2024/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (58, 37, '饲料加工机械', 100, '饲料加工机械', '饲料加工机械', 'http://china.makepolo.com/list/spc3619/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (59, 37, '畜牧养殖机械', 100, '畜牧养殖机械', '畜牧养殖机械', 'http://china.makepolo.com/list/spc56/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (60, 37, '林业机械', 100, '林业机械', '林业机械', 'http://china.makepolo.com/list/spc47/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (61, 37, '木材加工机械', 100, '木材加工机械', '木材加工机械', 'http://china.makepolo.com/list/spc25708/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (62, 37, '木工机床', 100, '木工机床', '木工机床', 'http://china.makepolo.com/list/spc5116/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (63, 37, '制浆造纸机械', 100, '制浆造纸机械', '制浆造纸机械', 'http://china.makepolo.com/list/spc1641/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (64, 37, '印刷机械', 100, '印刷机械', '印刷机械', 'http://china.makepolo.com/list/spc1642/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (65, 37, '节能环保设备', 100, '节能环保设备', '节能环保设备', 'http://china.makepolo.com/list/spc4859/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (66, 37, '汽保、维修专用设备', 100, '汽保、维修专用设备', '汽保、维修专用设备', 'http://china.makepolo.com/list/spc27030/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (67, 37, '小五金制造装备', 100, '小五金制造装备', '小五金制造装备', 'http://china.makepolo.com/list/spc146348/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (68, 37, '金融、商业专用设备', 100, '金融、商业专用设备', '金融、商业专用设备', 'http://china.makepolo.com/list/spc145594/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (69, 37, '渔业机械', 100, '渔业机械', '渔业机械', 'http://china.makepolo.com/list/spc147158/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (70, 37, '陶瓷制品生产设备', 100, '陶瓷制品生产设备', '陶瓷制品生产设备', 'http://china.makepolo.com/list/spc147375/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (71, 37, '陶瓷加工机械', 100, '陶瓷加工机械', '陶瓷加工机械', 'http://china.makepolo.com/list/spc146968/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (72, 37, '制药机械', 100, '制药机械', '制药机械', 'http://china.makepolo.com/list/spc1644/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (73, 37, '医疗器械仪器及耗材', 100, '医疗器械仪器及耗材', '医疗器械仪器及耗材', 'http://china.makepolo.com/list/spc1653/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (74, 37, '兽医器械', 100, '兽医器械', '兽医器械', 'http://china.makepolo.com/list/spc1654/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (75, 37, '其他制造业专用设备', 100, '其他制造业专用设备', '其他制造业专用设备', 'http://china.makepolo.com/list/spc150525/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (76, 37, '教学及图书馆设备', 100, '教学及图书馆设备', '教学及图书馆设备', 'http://china.makepolo.com/list/spc147800/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (77, 37, '公共安全设备与器材', 100, '公共安全设备与器材', '公共安全设备与器材', 'http://china.makepolo.com/list/spc28253/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (78, 37, '广告、传媒设备', 100, '广告、传媒设备', '广告、传媒设备', 'http://china.makepolo.com/list/spc147726/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (79, 37, '游乐/游艺设施', 100, '游乐/游艺设施', '游乐/游艺设施', 'http://china.makepolo.com/list/spc3704/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (80, 37, '市政环卫园林机械', 100, '市政环卫园林机械', '市政环卫园林机械', 'http://china.makepolo.com/list/spc148487/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (81, 37, '水利水资源专用机械', 100, '水利水资源专用机械', '水利水资源专用机械', 'http://china.makepolo.com/list/spc147517/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (82, 37, '铁路线路机械', 100, '铁路线路机械', '铁路线路机械', 'http://china.makepolo.com/list/spc3701/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (83, 37, '邮政机械及器材', 100, '邮政机械及器材', '邮政机械及器材', 'http://china.makepolo.com/list/spc147516/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (84, 0, '建筑设备', 100, '建筑设备', '建筑设备', 'http://china.makepolo.com/list/d8/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (85, 84, '采暖设备', 100, '采暖设备', '采暖设备', 'http://china.makepolo.com/list/spc134/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (86, 84, '通风设备', 100, '通风设备', '通风设备', 'http://china.makepolo.com/list/spc135/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (87, 84, '管道系统', 100, '管道系统', '管道系统', 'http://china.makepolo.com/list/spc150401/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (88, 84, '给排水设备', 100, '给排水设备', '给排水设备', 'http://china.makepolo.com/list/spc138/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (89, 84, '空气调节设备', 100, '空气调节设备', '空气调节设备', 'http://china.makepolo.com/list/spc136/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (90, 84, '空气净化设备', 100, '空气净化设备', '空气净化设备', 'http://china.makepolo.com/list/spc137/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (91, 84, '综合布线与光纤设备', 100, '综合布线与光纤设备', '综合布线与光纤设备', 'http://china.makepolo.com/list/spc148090/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (92, 84, '消防设备', 100, '消防设备', '消防设备', 'http://china.makepolo.com/list/spc139/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (93, 84, '停车场管理设备', 100, '停车场管理设备', '停车场管理设备', 'http://china.makepolo.com/list/spc181/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (94, 84, '安防监控设备', 100, '安防监控设备', '安防监控设备', 'http://china.makepolo.com/list/spc140/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (95, 84, '电梯和自动扶梯', 100, '电梯和自动扶梯', '电梯和自动扶梯', 'http://china.makepolo.com/list/spc3847/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (96, 84, '智能家居产品', 100, '智能家居产品', '智能家居产品', 'http://china.makepolo.com/list/spc150996/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (97, 0, '电气与能源设备', 100, '电气与能源设备', '电气与能源设备', 'http://china.makepolo.com/list/d11/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (98, 97, '发电机及发电机组', 100, '发电机及发电机组', '发电机及发电机组', 'http://china.makepolo.com/list/spc2073/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (99, 97, '电动机', 100, '电动机', '电动机', 'http://china.makepolo.com/list/spc2074/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (100, 97, '输配电设备', 100, '输配电设备', '输配电设备', 'http://china.makepolo.com/list/spc2075/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (101, 97, '电源装置', 100, '电源装置', '电源装置', 'http://china.makepolo.com/list/spc2076/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (102, 97, '电气成套设备', 100, '电气成套设备', '电气成套设备', 'http://china.makepolo.com/list/spc2081/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (103, 97, '电工仪器仪表', 100, '电工仪器仪表', '电工仪器仪表', 'http://china.makepolo.com/list/spc3560/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (104, 97, '高压电器', 100, '高压电器', '高压电器', 'http://china.makepolo.com/list/spc2079/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (105, 97, '低压电器', 100, '低压电器', '低压电器', 'http://china.makepolo.com/list/spc2080/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (106, 97, '燃气设备', 100, '燃气设备', '燃气设备', 'http://china.makepolo.com/list/spc150330/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (107, 97, '防雷设备', 100, '防雷设备', '防雷设备', 'http://china.makepolo.com/list/spc2078/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (108, 97, '新能源设备', 100, '新能源设备', '新能源设备', 'http://china.makepolo.com/list/spc150309/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (109, 97, '电力电子器件', 100, '电力电子器件', '电力电子器件', 'http://china.makepolo.com/list/spc2077/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (110, 97, '节能设备', 100, '节能设备', '节能设备', 'http://china.makepolo.com/list/spc148007/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (111, 97, '沼气设备', 100, '沼气设备', '沼气设备', 'http://china.makepolo.com/list/spc150350/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (112, 0, '仪器仪表', 100, '仪器仪表', '仪器仪表', 'http://china.makepolo.com/list/d13/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (113, 112, '计量标准器具', 100, '计量标准器具', '计量标准器具', 'http://china.makepolo.com/list/spc2598/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (114, 112, '计量仪表', 100, '计量仪表', '计量仪表', 'http://china.makepolo.com/list/spc3379/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (115, 112, '机械量测量仪器', 100, '机械量测量仪器', '机械量测量仪器', 'http://china.makepolo.com/list/spc3401/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (116, 112, '行业专用仪器仪表', 100, '行业专用仪器仪表', '行业专用仪器仪表', 'http://china.makepolo.com/list/spc3529/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (117, 112, '光学仪器', 100, '光学仪器', '光学仪器', 'http://china.makepolo.com/list/spc3558/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (118, 112, '分析仪器', 100, '分析仪器', '分析仪器', 'http://china.makepolo.com/list/spc3559/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (119, 112, '电工仪器仪表', 100, '电工仪器仪表', '电工仪器仪表', 'http://china.makepolo.com/list/spc3560/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (120, 112, '电子测量仪器', 100, '电子测量仪器', '电子测量仪器', 'http://china.makepolo.com/list/spc3561/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (121, 112, '试验机', 100, '试验机', '试验机', 'http://china.makepolo.com/list/spc3562/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (122, 112, '试验箱及环境试验设备', 100, '试验箱及环境试验设备', '试验箱及环境试验设备', 'http://china.makepolo.com/list/spc3563/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (123, 112, '量具量仪', 100, '量具量仪', '量具量仪', 'http://china.makepolo.com/list/spc3564/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (124, 112, '汽车检测设备', 100, '汽车检测设备', '汽车检测设备', 'http://china.makepolo.com/list/spc145302/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (125, 112, '衡器', 100, '衡器', '衡器', 'http://china.makepolo.com/list/spc3565/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (126, 112, '车用仪表', 100, '车用仪表', '车用仪表', 'http://china.makepolo.com/list/spc3566/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (127, 112, '生物仪器', 100, '生物仪器', '生物仪器', 'http://china.makepolo.com/list/spc3568/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (128, 112, '无损检测仪器', 100, '无损检测仪器', '无损检测仪器', 'http://china.makepolo.com/list/spc3570/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (129, 112, '其他仪器仪表及零配件', 100, '其他仪器仪表及零配件', '其他仪器仪表及零配件', 'http://china.makepolo.com/list/spc3571/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (130, 112, '气象仪器', 100, '气象仪器', '气象仪器', 'http://china.makepolo.com/list/spc27000/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (131, 112, '环境检测仪器', 100, '环境检测仪器', '环境检测仪器', 'http://china.makepolo.com/list/spc27284/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (132, 112, '室内环保检测仪器', 100, '室内环保检测仪器', '室内环保检测仪器', 'http://china.makepolo.com/list/spc27286/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (133, 112, '玻璃仪器', 100, '玻璃仪器', '玻璃仪器', 'http://china.makepolo.com/list/spc146763/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (134, 112, '传感器', 100, '传感器', '传感器', 'http://china.makepolo.com/list/spc4383/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (135, 112, '变送器', 100, '变送器', '变送器', 'http://china.makepolo.com/list/spc145943/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (136, 112, '工业自动化仪表及系统', 100, '工业自动化仪表及系统', '工业自动化仪表及系统', 'http://china.makepolo.com/list/spc148937/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (137, 0, '网络安防/通信广电设备', 100, '网络安防/通信广电设备', '网络安防/通信广电设备', 'http://china.makepolo.com/list/d149804/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (138, 137, '网络设备', 100, '网络设备', '网络设备', 'http://china.makepolo.com/list/spc4292/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (139, 137, '通信设备', 100, '通信设备', '通信设备', 'http://china.makepolo.com/list/spc3164/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (140, 137, '无线网络设备', 100, '无线网络设备', '无线网络设备', 'http://china.makepolo.com/list/spc4293/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (141, 137, '网络管理、安全设备', 100, '网络管理、安全设备', '网络管理、安全设备', 'http://china.makepolo.com/list/spc4313/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (142, 137, '综合布线', 100, '综合布线', '综合布线', 'http://china.makepolo.com/list/spc148090/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (143, 137, '广播电视设备', 100, '广播电视设备', '广播电视设备', 'http://china.makepolo.com/list/spc3268/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (144, 137, '安防监控系统', 100, '安防监控系统', '安防监控系统', 'http://china.makepolo.com/list/spc140/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (145, 0, '电脑/办公设备', 100, '电脑/办公设备', '电脑/办公设备', 'http://china.makepolo.com/list/d14/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (146, 145, '办公耗材', 100, '办公耗材', '办公耗材', 'http://china.makepolo.com/list/spc4144/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (147, 145, '办公家具', 100, '办公家具', '办公家具', 'http://china.makepolo.com/list/spc4212/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (148, 145, '复印、打印、扫描设备', 100, '复印、打印、扫描设备', '复印、打印、扫描设备', 'http://china.makepolo.com/list/spc3410/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (149, 145, '整理、装订设备', 100, '整理、装订设备', '整理、装订设备', 'http://china.makepolo.com/list/spc3411/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (150, 145, '投影、显示设备', 100, '投影、显示设备', '投影、显示设备', 'http://china.makepolo.com/list/spc3412/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (151, 145, '办公通讯设备', 100, '办公通讯设备', '办公通讯设备', 'http://china.makepolo.com/list/spc3413/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (152, 145, '行政、财务设备', 100, '行政、财务设备', '行政、财务设备', 'http://china.makepolo.com/list/spc3414/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (153, 145, '电脑配件与外设', 100, '电脑配件与外设', '电脑配件与外设', 'http://china.makepolo.com/list/spc3416/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (154, 145, '软件产品', 100, '软件产品', '软件产品', 'http://china.makepolo.com/list/spc3417/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (155, 145, '整机', 100, '整机', '整机', 'http://china.makepolo.com/list/spc4291/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (156, 145, '会议系统', 100, '会议系统', '会议系统', 'http://china.makepolo.com/list/spc148351/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (157, 145, '清洁设备', 100, '清洁设备', '清洁设备', 'http://china.makepolo.com/list/spc149696/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (158, 0, '交通运输', 100, '交通运输', '交通运输', 'http://china.makepolo.com/list/d12/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (159, 158, '机动车', 100, '机动车', '机动车', 'http://china.makepolo.com/list/spc3698/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (160, 158, '电动车', 100, '电动车', '电动车', 'http://china.makepolo.com/list/spc148424/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (161, 158, '非机动车', 100, '非机动车', '非机动车', 'http://china.makepolo.com/list/spc3699/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (162, 158, '非机动车配件', 100, '非机动车配件', '非机动车配件', 'http://china.makepolo.com/list/spc148532/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (163, 158, '加油站设备', 100, '加油站设备', '加油站设备', 'http://china.makepolo.com/list/spc147906/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (164, 158, '停车场设备', 100, '停车场设备', '停车场设备', 'http://china.makepolo.com/list/spc181/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (165, 158, '道路交通管理设施', 100, '道路交通管理设施', '道路交通管理设施', 'http://china.makepolo.com/list/spc3700/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (166, 158, '轨道铁路线路机械', 100, '轨道铁路线路机械', '轨道铁路线路机械', 'http://china.makepolo.com/list/spc3701/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (167, 158, '港口装卸机械', 100, '港口装卸机械', '港口装卸机械', 'http://china.makepolo.com/list/spc3854/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (168, 158, '船舶及航道设备', 100, '船舶及航道设备', '船舶及航道设备', 'http://china.makepolo.com/list/spc3702/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (169, 158, '机场专用设备', 100, '机场专用设备', '机场专用设备', 'http://china.makepolo.com/list/spc3856/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (170, 158, '潜水及水下救捞装备', 100, '潜水及水下救捞装备', '潜水及水下救捞装备', 'http://china.makepolo.com/list/spc3851/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (171, 0, '原料辅料/初加工材料', 100, '原料辅料/初加工材料', '原料辅料/初加工材料', 'http://china.makepolo.com/list/d2/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (172, 171, '矿业', 100, '矿业', '矿业', 'http://china.makepolo.com/list/spc2402/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (173, 171, '钢铁冶金', 100, '钢铁冶金', '钢铁冶金', 'http://china.makepolo.com/list/spc5084/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (174, 171, '有色金属及加工材料', 100, '有色金属及加工材料', '有色金属及加工材料', 'http://china.makepolo.com/list/spc5086/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (175, 171, '非金属材料及制品', 100, '非金属材料及制品', '非金属材料及制品', 'http://china.makepolo.com/list/spc145328/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (176, 171, '橡胶、塑料', 100, '橡胶、塑料', '橡胶、塑料', 'http://china.makepolo.com/list/spc27348/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (177, 171, '催化剂、助剂、填充剂', 100, '催化剂、助剂、填充剂', '催化剂、助剂、填充剂', 'http://china.makepolo.com/list/spc26118/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (178, 171, '纸浆', 100, '纸浆', '纸浆', 'http://china.makepolo.com/list/spc145374/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (179, 171, '纸张', 100, '纸张', '纸张', 'http://china.makepolo.com/list/spc149492/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (180, 171, '印刷辅料', 100, '印刷辅料', '印刷辅料', 'http://china.makepolo.com/list/spc147889/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (181, 171, '包装材料及容器', 100, '包装材料及容器', '包装材料及容器', 'http://china.makepolo.com/list/spc25892/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (182, 171, '有机、无机化学原料', 100, '有机、无机化学原料', '有机、无机化学原料', 'http://china.makepolo.com/list/spc27038/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (183, 171, '精细化学品', 100, '精细化学品', '精细化学品', 'http://china.makepolo.com/list/spc145395/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (184, 171, '燃料', 100, '燃料', '燃料', 'http://china.makepolo.com/list/spc27406/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (185, 171, '石油制品', 100, '石油制品', '石油制品', 'http://china.makepolo.com/list/spc148495/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (186, 171, '煤化工产品', 100, '煤化工产品', '煤化工产品', 'http://china.makepolo.com/list/spc149111/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (187, 171, '吸附剂、干燥剂', 100, '吸附剂、干燥剂', '吸附剂、干燥剂', 'http://china.makepolo.com/list/spc26403/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (188, 171, '纺织皮革原料辅料', 100, '纺织皮革原料辅料', '纺织皮革原料辅料', 'http://china.makepolo.com/list/spc27907/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (189, 171, '纤维', 100, '纤维', '纤维', 'http://china.makepolo.com/list/spc27468/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (190, 171, '电子与功能材料', 100, '电子与功能材料', '电子与功能材料', 'http://china.makepolo.com/list/spc25872/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (191, 171, '复制、信息化学品', 100, '复制、信息化学品', '复制、信息化学品', 'http://china.makepolo.com/list/spc145573/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (192, 171, '过滤件', 100, '过滤件', '过滤件', 'http://china.makepolo.com/list/spc4294/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (193, 171, '废料', 100, '废料', '废料', 'http://china.makepolo.com/list/spc146529/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (194, 171, '喷涂溅射材料', 100, '喷涂溅射材料', '喷涂溅射材料', 'http://china.makepolo.com/list/spc148040/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (195, 171, '电光源材料', 100, '电光源材料', '电光源材料', 'http://china.makepolo.com/list/spc148032/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (196, 171, '商标/标签/标识', 100, '商标/标签/标识', '商标/标签/标识', 'http://china.makepolo.com/list/spc149797/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (197, 171, '防伪产品', 100, '防伪产品', '防伪产品', 'http://china.makepolo.com/list/spc147878/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (198, 171, '农产品', 100, '农产品', '农产品', 'http://china.makepolo.com/list/spc2042/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (199, 171, '农用物资', 100, '农用物资', '农用物资', 'http://china.makepolo.com/list/spc25866/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (200, 171, '动物与林产化学品', 100, '动物与林产化学品', '动物与林产化学品', 'http://china.makepolo.com/list/spc145334/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (201, 171, '医药及生化制品', 100, '医药及生化制品', '医药及生化制品', 'http://china.makepolo.com/list/spc27834/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (202, 171, '首饰辅料', 100, '首饰辅料', '首饰辅料', 'http://china.makepolo.com/list/spc28167/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (203, 0, '建材与装饰材料', 100, '建材与装饰材料', '建材与装饰材料', 'http://china.makepolo.com/list/d1/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (204, 203, '建筑钢材、有色建材', 100, '建筑钢材、有色建材', '建筑钢材、有色建材', 'http://china.makepolo.com/list/spc2645/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (205, 203, '管材、管件', 100, '管材、管件', '管材、管件', 'http://china.makepolo.com/list/spc5822/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (206, 203, '玻璃', 100, '玻璃', '玻璃', 'http://china.makepolo.com/list/spc4573/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (207, 203, '陶瓷瓷砖', 100, '陶瓷瓷砖', '陶瓷瓷砖', 'http://china.makepolo.com/list/spc4861/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (208, 203, '金属结构体', 100, '金属结构体', '金属结构体', 'http://china.makepolo.com/list/spc26561/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (209, 203, '结构板材、隔断', 100, '结构板材、隔断', '结构板材、隔断', 'http://china.makepolo.com/list/spc5971/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (210, 203, '施工材料', 100, '施工材料', '施工材料', 'http://china.makepolo.com/list/spc27242/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (211, 203, '土工合成材料', 100, '土工合成材料', '土工合成材料', 'http://china.makepolo.com/list/spc26426/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (212, 203, '保温吸声材料', 100, '保温吸声材料', '保温吸声材料', 'http://china.makepolo.com/list/spc5073/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (213, 203, '防水材料', 100, '防水材料', '防水材料', 'http://china.makepolo.com/list/spc5135/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (214, 203, '防火耐火材料', 100, '防火耐火材料', '防火耐火材料', 'http://china.makepolo.com/list/spc5326/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (215, 203, '耐腐蚀、防辐射材料', 100, '耐腐蚀、防辐射材料', '耐腐蚀、防辐射材料', 'http://china.makepolo.com/list/spc5357/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (216, 203, '水泥与混凝土', 100, '水泥与混凝土', '水泥与混凝土', 'http://china.makepolo.com/list/spc1616/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (217, 203, '石材', 100, '石材', '石材', 'http://china.makepolo.com/list/spc26090/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (218, 203, '砂子、灰、石膏', 100, '砂子、灰、石膏', '砂子、灰、石膏', 'http://china.makepolo.com/list/spc3253/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (219, 203, '砖、瓦、砌块', 100, '砖、瓦、砌块', '砖、瓦、砌块', 'http://china.makepolo.com/list/spc2791/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (220, 203, '木材和竹材', 100, '木材和竹材', '木材和竹材', 'http://china.makepolo.com/list/spc2040/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (221, 203, '橡塑及纤维复合建材', 100, '橡塑及纤维复合建材', '橡塑及纤维复合建材', 'http://china.makepolo.com/list/spc27022/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (222, 203, '装饰装修材料', 100, '装饰装修材料', '装饰装修材料', 'http://china.makepolo.com/list/spc5970/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (223, 203, '建筑涂料', 100, '建筑涂料', '建筑涂料', 'http://china.makepolo.com/list/spc4998/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (224, 203, '建筑胶粘剂', 100, '建筑胶粘剂', '建筑胶粘剂', 'http://china.makepolo.com/list/spc5504/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (225, 203, '防护、市政设施', 100, '防护、市政设施', '防护、市政设施', 'http://china.makepolo.com/list/spc26518/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (226, 203, '水暖、卫浴、洁具', 100, '水暖、卫浴、洁具', '水暖、卫浴、洁具', 'http://china.makepolo.com/list/spc26094/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (227, 203, '灯具灯饰', 100, '灯具灯饰', '灯具灯饰', 'http://china.makepolo.com/list/spc3122/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (228, 203, '厨房、橱柜', 100, '厨房、橱柜', '厨房、橱柜', 'http://china.makepolo.com/list/spc145725/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (229, 203, '门窗、楼梯', 100, '门窗、楼梯', '门窗、楼梯', 'http://china.makepolo.com/list/spc27347/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (230, 203, '场地、户外材料', 100, '场地、户外材料', '场地、户外材料', 'http://china.makepolo.com/list/spc26233/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (231, 203, '预制建筑物', 100, '预制建筑物', '预制建筑物', 'http://china.makepolo.com/list/spc26564/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (232, 203, '园艺花卉', 100, '园艺花卉', '园艺花卉', 'http://china.makepolo.com/list/spc2188/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (233, 203, '绿化苗木', 100, '绿化苗木', '绿化苗木', 'http://china.makepolo.com/list/spc2187/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (234, 203, '园林设施', 100, '园林设施', '园林设施', 'http://china.makepolo.com/list/spc26513/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (235, 203, '景观水体', 100, '景观水体', '景观水体', 'http://china.makepolo.com/list/spc3781/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (236, 203, '古建筑材料', 100, '古建筑材料', '古建筑材料', 'http://china.makepolo.com/list/spc5371/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (237, 0, '五金零部件/备品备件', 100, '五金零部件/备品备件', '五金零部件/备品备件', 'http://china.makepolo.com/list/d3/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (238, 237, '通用五金配件', 100, '通用五金配件', '通用五金配件', 'http://china.makepolo.com/list/spc2603/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (239, 237, '紧固件和连接件', 100, '紧固件和连接件', '紧固件和连接件', 'http://china.makepolo.com/list/spc97/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (240, 237, '管件', 100, '管件', '管件', 'http://china.makepolo.com/list/spc2572/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (241, 237, '模具五金配件', 100, '模具五金配件', '模具五金配件', 'http://china.makepolo.com/list/spc2749/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (242, 237, '机床附件', 100, '机床附件', '机床附件', 'http://china.makepolo.com/list/spc5325/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (243, 237, '传动件', 100, '传动件', '传动件', 'http://china.makepolo.com/list/spc98/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (244, 237, '轴承', 100, '轴承', '轴承', 'http://china.makepolo.com/list/spc2468/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (245, 237, '工业皮带', 100, '工业皮带', '工业皮带', 'http://china.makepolo.com/list/spc150458/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (246, 237, '冲压五金配件', 100, '冲压五金配件', '冲压五金配件', 'http://china.makepolo.com/list/spc2751/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (247, 237, '焊接件', 100, '焊接件', '焊接件', 'http://china.makepolo.com/list/spc5401/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (248, 237, '弹簧', 100, '弹簧', '弹簧', 'http://china.makepolo.com/list/spc3372/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (249, 237, '金属丝网', 100, '金属丝网', '金属丝网', 'http://china.makepolo.com/list/spc145412/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (250, 237, '液压元件', 100, '液压元件', '液压元件', 'http://china.makepolo.com/list/spc2754/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (251, 237, '气动元件', 100, '气动元件', '气动元件', 'http://china.makepolo.com/list/spc2755/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (252, 237, '电热元件、装置', 100, '电热元件、装置', '电热元件、装置', 'http://china.makepolo.com/list/spc147837/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (253, 237, '电动机', 100, '电动机', '电动机', 'http://china.makepolo.com/list/spc2074/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (254, 237, '过滤件', 100, '过滤件', '过滤件', 'http://china.makepolo.com/list/spc4294/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (255, 237, '密封件', 100, '密封件', '密封件', 'http://china.makepolo.com/list/spc2488/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (256, 237, '减震件', 100, '减震件', '减震件', 'http://china.makepolo.com/list/spc2568/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (257, 237, '锁具', 100, '锁具', '锁具', 'http://china.makepolo.com/list/spc2753/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (258, 237, '塑料制品', 100, '塑料制品', '塑料制品', 'http://china.makepolo.com/list/spc145532/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (259, 237, '橡胶制品', 100, '橡胶制品', '橡胶制品', 'http://china.makepolo.com/list/spc145533/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (260, 237, '家具橱柜五金', 100, '家具橱柜五金', '家具橱柜五金', 'http://china.makepolo.com/list/spc2665/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (261, 237, '门窗五金', 100, '门窗五金', '门窗五金', 'http://china.makepolo.com/list/spc2747/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (262, 237, '水暖卫浴五金', 100, '水暖卫浴五金', '水暖卫浴五金', 'http://china.makepolo.com/list/spc2622/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (263, 237, '服装箱包五金', 100, '服装箱包五金', '服装箱包五金', 'http://china.makepolo.com/list/spc2748/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (264, 237, '船用五金配件', 100, '船用五金配件', '船用五金配件', 'http://china.makepolo.com/list/spc2750/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (265, 237, '幕墙五金配件', 100, '幕墙五金配件', '幕墙五金配件', 'http://china.makepolo.com/list/spc2752/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (266, 0, '电子元器件', 100, '电子元器件', '电子元器件', 'http://china.makepolo.com/list/d4/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (267, 266, '集成电路', 100, '集成电路', '集成电路', 'http://china.makepolo.com/list/spc147794/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (268, 266, '电容器', 100, '电容器', '电容器', 'http://china.makepolo.com/list/spc4380/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (269, 266, '传感器', 100, '传感器', '传感器', 'http://china.makepolo.com/list/spc4383/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (270, 266, '二极管', 100, '二极管', '二极管', 'http://china.makepolo.com/list/spc4384/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (271, 266, '三极管', 100, '三极管', '三极管', 'http://china.makepolo.com/list/spc4385/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (272, 266, '场效应管', 100, '场效应管', '场效应管', 'http://china.makepolo.com/list/spc147002/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (273, 266, '连接器', 100, '连接器', '连接器', 'http://china.makepolo.com/list/spc4456/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (274, 266, '保护器件', 100, '保护器件', '保护器件', 'http://china.makepolo.com/list/spc4393/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (275, 266, '电声器材', 100, '电声器材', '电声器材', 'http://china.makepolo.com/list/spc4391/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (276, 266, '电感元器件', 100, '电感元器件', '电感元器件', 'http://china.makepolo.com/list/spc4382/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (277, 266, '电阻器与电位器', 100, '电阻器与电位器', '电阻器与电位器', 'http://china.makepolo.com/list/spc146679/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (278, 266, '变送器', 100, '变送器', '变送器', 'http://china.makepolo.com/list/spc145943/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (279, 266, '显示器件', 100, '显示器件', '显示器件', 'http://china.makepolo.com/list/spc4398/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (280, 266, '片状元器件', 100, '片状元器件', '片状元器件', 'http://china.makepolo.com/list/spc4394/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (281, 266, '电子电路散热元件', 100, '电子电路散热元件', '电子电路散热元件', 'http://china.makepolo.com/list/spc6062/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (282, 266, '温敏元件', 100, '温敏元件', '温敏元件', 'http://china.makepolo.com/list/spc147013/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (283, 266, '湿敏元件', 100, '湿敏元件', '湿敏元件', 'http://china.makepolo.com/list/spc147044/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (284, 266, '光敏元件', 100, '光敏元件', '光敏元件', 'http://china.makepolo.com/list/spc147027/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (285, 266, '磁敏元件', 100, '磁敏元件', '磁敏元件', 'http://china.makepolo.com/list/spc147083/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (286, 266, '压敏元件', 100, '压敏元件', '压敏元件', 'http://china.makepolo.com/list/spc147050/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (287, 266, '力敏元件', 100, '力敏元件', '力敏元件', 'http://china.makepolo.com/list/spc147077/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (288, 266, '气敏元件', 100, '气敏元件', '气敏元件', 'http://china.makepolo.com/list/spc147112/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (289, 266, '逆变电源/逆变器', 100, '逆变电源/逆变器', '逆变电源/逆变器', 'http://china.makepolo.com/list/spc2935/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (290, 266, '光电器件', 100, '光电器件', '光电器件', 'http://china.makepolo.com/list/spc148261/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (291, 266, '电子与功能器材', 100, '电子与功能器材', '电子与功能器材', 'http://china.makepolo.com/list/spc25872/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (292, 266, '电力半导体器材', 100, '电力半导体器材', '电力半导体器材', 'http://china.makepolo.com/list/spc2942/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (293, 266, '电力集成器材', 100, '电力集成器材', '电力集成器材', 'http://china.makepolo.com/list/spc2944/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (294, 266, '电子五金件', 100, '电子五金件', '电子五金件', 'http://china.makepolo.com/list/spc4399/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (295, 266, '其他电子元器件', 100, '其他电子元器件', '其他电子元器件', 'http://china.makepolo.com/list/spc4401/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (296, 0, '电工电料/线缆照明', 100, '电工电料/线缆照明', '电工电料/线缆照明', 'http://china.makepolo.com/list/d5/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (297, 296, '电工电料', 100, '电工电料', '电工电料', 'http://china.makepolo.com/list/spc3124/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (298, 296, '电线电缆', 100, '电线电缆', '电线电缆', 'http://china.makepolo.com/list/spc3125/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (299, 296, '综合布线与光纤设备', 100, '综合布线与光纤设备', '综合布线与光纤设备', 'http://china.makepolo.com/list/spc148090/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (300, 296, '绝缘材料', 100, '绝缘材料', '绝缘材料', 'http://china.makepolo.com/list/spc3128/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (301, 296, '电光源', 100, '电光源', '电光源', 'http://china.makepolo.com/list/spc3121/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (302, 296, '电光源材料', 100, '电光源材料', '电光源材料', 'http://china.makepolo.com/list/spc148032/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (303, 296, '灯具灯饰', 100, '灯具灯饰', '灯具灯饰', 'http://china.makepolo.com/list/spc3122/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (304, 296, '灯具配件', 100, '灯具配件', '灯具配件', 'http://china.makepolo.com/list/spc3123/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (305, 296, '电池', 100, '电池', '电池', 'http://china.makepolo.com/list/spc3126/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (306, 0, '工具', 100, '工具', '工具', 'http://china.makepolo.com/list/d6/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (307, 306, '通用手工工具', 100, '通用手工工具', '通用手工工具', 'http://china.makepolo.com/list/spc2043/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (308, 306, '钳工管工工具', 100, '钳工管工工具', '钳工管工工具', 'http://china.makepolo.com/list/spc2656/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (309, 306, '切削刀具', 100, '切削刀具', '切削刀具', 'http://china.makepolo.com/list/spc3646/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (310, 306, '磨具磨料', 100, '磨具磨料', '磨具磨料', 'http://china.makepolo.com/list/spc3311/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (311, 306, '农林渔业园艺工具', 100, '农林渔业园艺工具', '农林渔业园艺工具', 'http://china.makepolo.com/list/spc3663/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (312, 306, '土木及金刚石工具', 100, '土木及金刚石工具', '土木及金刚石工具', 'http://china.makepolo.com/list/spc147986/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (313, 306, '电工工具', 100, '电工工具', '电工工具', 'http://china.makepolo.com/list/spc147976/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (314, 306, '布线工具', 100, '布线工具', '布线工具', 'http://china.makepolo.com/list/spc148086/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (315, 306, '线缆铺设工具', 100, '线缆铺设工具', '线缆铺设工具', 'http://china.makepolo.com/list/spc148124/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (316, 306, '气动和液压工具', 100, '气动和液压工具', '气动和液压工具', 'http://china.makepolo.com/list/spc2823/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (317, 306, '起重工具', 100, '起重工具', '起重工具', 'http://china.makepolo.com/list/spc3676/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (318, 306, '电动工具', 100, '电动工具', '电动工具', 'http://china.makepolo.com/list/spc2687/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (319, 306, '焊接辅助设备与工具', 100, '焊接辅助设备与工具', '焊接辅助设备与工具', 'http://china.makepolo.com/list/spc5400/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (320, 306, '喷涂工具', 100, '喷涂工具', '喷涂工具', 'http://china.makepolo.com/list/spc148653/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (321, 306, '夹具治具', 100, '夹具治具', '夹具治具', 'http://china.makepolo.com/list/spc3840/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (322, 306, '工位器具', 100, '工位器具', '工位器具', 'http://china.makepolo.com/list/spc3841/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (323, 306, '汽保工具', 100, '汽保工具', '汽保工具', 'http://china.makepolo.com/list/spc3775/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (324, 306, '润滑工具', 100, '润滑工具', '润滑工具', 'http://china.makepolo.com/list/spc147935/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (325, 306, '防静电、无尘产品', 100, '防静电、无尘产品', '防静电、无尘产品', 'http://china.makepolo.com/list/spc147585/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (326, 306, '工具耗材', 100, '工具耗材', '工具耗材', 'http://china.makepolo.com/list/spc151135/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (327, 306, '物料容器、仓储设备', 100, '物料容器、仓储设备', '物料容器、仓储设备', 'http://china.makepolo.com/list/spc145769/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (328, 306, '搬运车/搬运设备', 100, '搬运车/搬运设备', '搬运车/搬运设备', 'http://china.makepolo.com/list/spc146504/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (329, 306, '量具量仪', 100, '量具量仪', '量具量仪', 'http://china.makepolo.com/list/spc3564/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (330, 306, '美发造型工具', 100, '美发造型工具', '美发造型工具', 'http://china.makepolo.com/list/spc1350/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (331, 306, '救援工具', 100, '救援工具', '救援工具', 'http://china.makepolo.com/list/spc147486/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (332, 306, '光学与配镜工具', 100, '光学与配镜工具', '光学与配镜工具', 'http://china.makepolo.com/list/spc3794/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (333, 306, '消防防爆专用工具', 100, '消防防爆专用工具', '消防防爆专用工具', 'http://china.makepolo.com/list/spc147478/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (334, 306, '钟表工具', 100, '钟表工具', '钟表工具', 'http://china.makepolo.com/list/spc3644/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (335, 0, '文教办公用品', 100, '文教办公用品', '文教办公用品', 'http://china.makepolo.com/list/d149674/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (336, 335, '办公耗材', 100, '办公耗材', '办公耗材', 'http://china.makepolo.com/list/spc4144/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (337, 335, '办公家具', 100, '办公家具', '办公家具', 'http://china.makepolo.com/list/spc4212/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (338, 335, '文具', 100, '文具', '文具', 'http://china.makepolo.com/list/spc980/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (339, 335, '书写笔', 100, '书写笔', '书写笔', 'http://china.makepolo.com/list/spc981/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (340, 335, '美术笔及用品', 100, '美术笔及用品', '美术笔及用品', 'http://china.makepolo.com/list/spc983/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (341, 335, '书写配套用品', 100, '书写配套用品', '书写配套用品', 'http://china.makepolo.com/list/spc982/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (342, 335, '办公用纸', 100, '办公用纸', '办公用纸', 'http://china.makepolo.com/list/spc4279/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (343, 335, '簿、本、册', 100, '簿、本、册', '簿、本、册', 'http://china.makepolo.com/list/spc27968/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (344, 335, '财会用品', 100, '财会用品', '财会用品', 'http://china.makepolo.com/list/spc27972/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (345, 335, '案头用品', 100, '案头用品', '案头用品', 'http://china.makepolo.com/list/spc27973/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (346, 335, '标示用品', 100, '标示用品', '标示用品', 'http://china.makepolo.com/list/spc27974/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (347, 335, '奖励用品', 100, '奖励用品', '奖励用品', 'http://china.makepolo.com/list/spc27976/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (348, 335, '文件管理用品', 100, '文件管理用品', '文件管理用品', 'http://china.makepolo.com/list/spc27969/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (349, 335, '名片管理用品', 100, '名片管理用品', '名片管理用品', 'http://china.makepolo.com/list/spc27970/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (350, 335, '软件产品', 100, '软件产品', '软件产品', 'http://china.makepolo.com/list/spc3417/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (351, 335, '玻璃仪器', 100, '玻璃仪器', '玻璃仪器', 'http://china.makepolo.com/list/spc146763/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (352, 335, '其他类办公用品', 100, '其他类办公用品', '其他类办公用品', 'http://china.makepolo.com/list/spc27977/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (353, 0, '汽摩用品/配件', 100, '汽摩用品/配件', '汽摩用品/配件', 'http://china.makepolo.com/list/d23/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (354, 353, '汽摩用品', 100, '汽摩用品', '汽摩用品', 'http://china.makepolo.com/list/spc5370/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (355, 353, '摩托车配件', 100, '摩托车配件', '摩托车配件', 'http://china.makepolo.com/list/spc5423/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (356, 353, '车身及附件', 100, '车身及附件', '车身及附件', 'http://china.makepolo.com/list/spc5422/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (357, 353, '汽保工具', 100, '汽保工具', '汽保工具', 'http://china.makepolo.com/list/spc3775/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (358, 353, '电器仪表件', 100, '电器仪表件', '电器仪表件', 'http://china.makepolo.com/list/spc5374/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (359, 353, '汽摩轮胎', 100, '汽摩轮胎', '汽摩轮胎', 'http://china.makepolo.com/list/spc148338/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (360, 353, '发动系统', 100, '发动系统', '发动系统', 'http://china.makepolo.com/list/spc5424/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (361, 353, '传动系统', 100, '传动系统', '传动系统', 'http://china.makepolo.com/list/spc5373/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (362, 353, '供给系统', 100, '供给系统', '供给系统', 'http://china.makepolo.com/list/spc5425/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (363, 353, '冷却系统', 100, '冷却系统', '冷却系统', 'http://china.makepolo.com/list/spc5426/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (364, 353, '排气系统', 100, '排气系统', '排气系统', 'http://china.makepolo.com/list/spc5427/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (365, 353, '转向系统', 100, '转向系统', '转向系统', 'http://china.makepolo.com/list/spc5492/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (366, 353, '制动系统', 100, '制动系统', '制动系统', 'http://china.makepolo.com/list/spc5493/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (367, 353, '行走系统', 100, '行走系统', '行走系统', 'http://china.makepolo.com/list/spc150016/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (368, 0, '定制加工', 100, '定制加工', '定制加工', 'http://china.makepolo.com/list/d1450/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (369, 368, '金属加工', 100, '金属加工', '金属加工', 'http://china.makepolo.com/list/spc1467/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (370, 368, '机械加工', 100, '机械加工', '机械加工', 'http://china.makepolo.com/list/spc1467/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (371, 368, '行业专业包装', 100, '行业专业包装', '行业专业包装', 'http://china.makepolo.com/list/spc145595/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (372, 368, '电子加工', 100, '电子加工', '电子加工', 'http://china.makepolo.com/list/spc146019/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (373, 368, '塑料加工', 100, '塑料加工', '塑料加工', 'http://china.makepolo.com/list/spc146029/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (374, 368, '橡胶加工', 100, '橡胶加工', '橡胶加工', 'http://china.makepolo.com/list/spc146030/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (375, 368, '家电数码加工', 100, '家电数码加工', '家电数码加工', 'http://china.makepolo.com/list/spc146078/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (376, 368, '电脑产品加工', 100, '电脑产品加工', '电脑产品加工', 'http://china.makepolo.com/list/spc146076/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (377, 368, '服装服饰加工', 100, '服装服饰加工', '服装服饰加工', 'http://china.makepolo.com/list/spc1472/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (378, 368, '纺织加工', 100, '纺织加工', '纺织加工', 'http://china.makepolo.com/list/spc146043/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (379, 368, '食品饮料加工', 100, '食品饮料加工', '食品饮料加工', 'http://china.makepolo.com/list/spc146092/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (380, 368, '医药保健加工', 100, '医药保健加工', '医药保健加工', 'http://china.makepolo.com/list/spc146068/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (381, 368, '印刷加工', 100, '印刷加工', '印刷加工', 'http://china.makepolo.com/list/spc149037/', 1583877575, 1583877575);
INSERT INTO `ad_category` VALUES (382, 368, '文教用品加工', 100, '文教用品加工', '文教用品加工', 'http://china.makepolo.com/list/spc146085/', 1583877575, 1583877575);
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
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='配置';

-- ----------------------------
-- Records of ad_config
-- ----------------------------
BEGIN;
INSERT INTO `ad_config` VALUES (1, 'website', '网站logo', 'logo', 'image', '', '', 100, 1, 1583873993, 1583873993);
INSERT INTO `ad_config` VALUES (2, 'website', '网站名称', 'site_name', 'input', 'KevinFei-Blog', '', 100, 1, 1583873993, 1583873993);
INSERT INTO `ad_config` VALUES (3, 'website', '网站标题', 'site_title', 'input', 'KevinFei博客', '', 100, 1, 1583873993, 1583873993);
INSERT INTO `ad_config` VALUES (5, 'website', '网站描述', 'site_description', 'textarea', 'KevinFei，博客管理系统，blog，kevinfei，jingfei，博客，凯文，成长的小白菜', '', 100, 1, 1583873993, 1583873993);
INSERT INTO `ad_config` VALUES (6, 'website', '域名', 'site_host', 'input', 'http://blog.kevinfei.com/', NULL, 100, 1, 1583873993, 1583873993);
INSERT INTO `ad_config` VALUES (7, 'website', '版权信息', 'site_copyright', 'input', '博客后台管理系统-遵循Apache2开源协议-发布', '', 100, 1, 1583873993, 1583873993);
INSERT INTO `ad_config` VALUES (8, 'website', 'ICP备案号', 'site_icp', 'input', '京ICP备16022068号', '', 100, 1, 1583873993, 1583873993);
INSERT INTO `ad_config` VALUES (9, 'website', '统计代码', 'site_code', 'textarea', '<a href=\"https://www.cnzz.com/stat/website.php?web_id=1277360007\" target=\"_blank\" title=\"站长统计\">站长统计</a>', '', 100, 1, 1583873993, 1583873993);
INSERT INTO `ad_config` VALUES (10, 'contact', '公司地址', 'address', 'input', '', '', 100, 1, 1583873993, 1583873993);
INSERT INTO `ad_config` VALUES (11, 'contact', '联系电话', 'tel', 'input', '', '', 100, 1, 1583873993, 1583873993);
INSERT INTO `ad_config` VALUES (12, 'contact', '联系邮箱', 'email', 'input', '', '', 100, 1, 1583873993, 1583873993);
INSERT INTO `ad_config` VALUES (13, 'contact', '公司名称', 'company', 'input', '', '', 100, 1, 1583873993, 1583873993);
COMMIT;

-- ----------------------------
-- Table structure for ad_menu
-- ----------------------------
DROP TABLE IF EXISTS `ad_menu`;
CREATE TABLE `ad_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(10) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `href` varchar(255) NOT NULL DEFAULT '100' COMMENT '链接',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `target` varchar(255) DEFAULT '' COMMENT '跳转方式',
  `nickname` varchar(255) DEFAULT '' COMMENT '昵称',
  `status` int(3) DEFAULT NULL COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of ad_menu
-- ----------------------------
BEGIN;
INSERT INTO `ad_menu` VALUES (1, 0, '常规管理', '100', 'fa fa-address-book', '_self', '常规管理', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (2, 1, '控制台', '/welcome/home.html', 'fa fa-home', '_self', '控制台', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (3, 1, '会员管理', '/users/index.html', 'fa fa-user', '_self', '会员管理', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (4, 1, '系统设置', '/systems/index.html', 'fa fa-gears', '_self', '系统设置', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (5, 0, '文章管理', '100', 'fa fa-book', '_self', '文章管理', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (6, 5, '图片管理', '/carouse/index.html', 'fa fa-photo', '_self', '图片管理', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (7, 5, '分类信息', '/categorys/index.html', 'fa fa-list', '_self', '分类信息', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (8, 5, '文章信息', '/articles/index.html', 'fa fa-file-text', '_self', '文章信息', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (9, 5, '商品信息', '/products/index.html', 'fa fa-file-text', '_self', '商品信息', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (10, 0, '权限管理', '100', 'fa fa-lock', '_self', '权限管理', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (11, 10, '管理员', '/admins/index.html', 'fa fa-user', '_self', '管理员', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (12, 10, '权限组', '/groups/index.html', 'fa fa-group', '_self', '权限组', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (13, 10, '规则管理', '/rules/index.html', 'fa fa-sitemap', '_self', '规则管理', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (14, 10, '管理员日志', '/admins/adminlog.html', 'fa fa-file-text', '_self', '管理员日志', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (15, 0, '组件管理', '100', 'fa fa-lemon-o', '_self', '组件管理', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (16, 15, '图标列表', '/component/icon.html', 'fa fa-dot-circle-o', '_self', '图标列表', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (17, 15, '图标选择', '/component/iconpicker.html', 'fa fa-adn', '_self', '图标选择', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (18, 15, '颜色选择', '/component/colorselect.html', 'fa fa-dashboard', '_self', '颜色选择', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (19, 15, '下拉选择', '/component/tableselect.html', 'fa fa-angle-double-down', '_self', '下拉选择', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (20, 15, '文件上传', '/component/upload.html', 'fa fa-arrow-up', '_self', '文件上传', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (21, 15, '富文本编辑器', '/component/editor.html', 'fa fa-edit', '_self', '富文本编辑器', 1, 0, 0);
INSERT INTO `ad_menu` VALUES (22, 10, '菜单管理', '/menus/index.html', 'fa fa-file-text', '_self', '菜单管理', 1, 0, 0);
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
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0禁用/1启动',
  `last_login_time` int(11) unsigned DEFAULT '0' COMMENT '最近留言时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
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
  `purl` varchar(255) DEFAULT NULL,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of ad_product
-- ----------------------------
BEGIN;
INSERT INTO `ad_product` VALUES (1, 2, 'F343CX蜗轮传动扇形盲板阀/电动盲板阀/液动盲板阀/冶金非标阀门', '380.00元', '永嘉县科申阀门厂', '13587633367\n/\n0577-67997720', 'http://china.makepolo.com/product-detail/100353714835.html', 1583878343, 1583878343);
INSERT INTO `ad_product` VALUES (2, 2, 'QT450-10耐磨，耐腐蚀阀门', '1.00元', '临海市鼎星铸造有限公司', '15868601256\n/\n0576-85520211', 'http://china.makepolo.com/product-detail/100228015146.html', 1583878344, 1583878344);
INSERT INTO `ad_product` VALUES (3, 2, '德国EA阀门', '面议', '北京根炬科技发展有限公司', '13521004452\n/\n010-88457503', 'http://china.makepolo.com/product-detail/100311891001.html', 1583878344, 1583878344);
INSERT INTO `ad_product` VALUES (4, 2, '美国Butech高压开关阀 球阀 计量阀 安全溢流阀 高压单向阀 阀门', '面议', '厦门鑫茂德机电设备有限公司', '18030200299\n/\n0592-5361939', 'http://china.makepolo.com/product-detail/100418577579.html', 1583878344, 1583878344);
INSERT INTO `ad_product` VALUES (5, 2, '氨用球阀 专业球阀厂家直销 质量值得保证 经济实惠 欢迎加盟', '2400.00元', '永嘉县欧利泵阀厂', '13777715926\n/\n0577-67372818', 'http://china.makepolo.com/product-detail/100498656236.html', 1583878344, 1583878344);
INSERT INTO `ad_product` VALUES (6, 2, '坤泰1/2寸不锈钢迷你球阀 304 316迷你阀 不锈钢小阀门', '19元/件', '沧州市坤泰金属制品制造有限公司', '13832749853\n/\n0317-5295332', 'http://china.makepolo.com/product-detail/101042546159.html', 1583878344, 1583878344);
INSERT INTO `ad_product` VALUES (7, 2, '广式内螺纹球阀，阀门', '10.00元', '温州市龙湾永中美通阀门厂', '13989704657\n/\n0577-86933848', 'http://china.makepolo.com/product-detail/100065227756.html', 1583878344, 1583878344);
INSERT INTO `ad_product` VALUES (8, 2, '厂家供应3.2G压力桶球阀价格压力桶阀门储水桶球阀旋转式快接球阀', '4.00元', '深圳市陶氏水处理设备技术开发有限公司', '18123625341\n/\n0755-89458187', 'http://china.makepolo.com/product-detail/100313898677.html', 1583878344, 1583878344);
INSERT INTO `ad_product` VALUES (9, 2, '供应高温球阀柱塞阀等特种阀门', '面议', '江阴市文和五金电器经营部', '15052240819\n/\n0510-81611681', 'http://china.makepolo.com/product-detail/100503493049.html', 1583878344, 1583878344);
INSERT INTO `ad_product` VALUES (10, 2, '供应不同阀门', '20.40元', '绍兴市聚源管业有限公司', '13967541999\n/\n0575-87666588', 'http://china.makepolo.com/product-detail/100288519790.html', 1583878344, 1583878344);
INSERT INTO `ad_product` VALUES (11, 2, 'l批发热销供应多种 阀门', '面议', '射阳县帅升阀业有限公司', ' 515 82843338\n/\n-', 'http://china.makepolo.com/product-detail/100471578463.html', 1583878345, 1583878345);
INSERT INTO `ad_product` VALUES (12, 2, '无死角球阀.快装球阀.螺纹球阀. 卫生级球阀 手动球阀', '100.00元', '温州市龙湾永中万源阀门管件厂', '13004715078\n/\n0577-86932886', 'http://china.makepolo.com/product-detail/100366503831.html', 1583878345, 1583878345);
INSERT INTO `ad_product` VALUES (13, 2, '供应不锈钢2PC球阀 2PC外螺纹丝扣球阀 片式球阀 Q21F-16P阀门', '888.00元', '温州正特阀门有限公司', '0577-86921137\n/\n 0577 86571578', 'http://china.makepolo.com/product-detail/100486490346.html', 1583878345, 1583878345);
INSERT INTO `ad_product` VALUES (14, 2, '富鼎阀门供应 优质蒸汽调节阀 气动蒸汽调节阀', '1588.00元', '浙江富鼎自控阀门有限公司', '13646585582\n/\n0577-57983555', 'http://china.makepolo.com/product-detail/100259848304.html', 1583878345, 1583878345);
INSERT INTO `ad_product` VALUES (15, 2, '阀门厂家直销 卫生级球阀 欢迎来图来样订制 实力打造', '1550.00元', '温州市龙湾永兴天力流体设备机械厂', '13777782865\n/\n 0577 86920055', 'http://china.makepolo.com/product-detail/100507897694.html', 1583878345, 1583878345);
INSERT INTO `ad_product` VALUES (16, 4, '维修摩擦压力机锻压机床', '3333.00元', '青岛蜗牛机械有限公司', '13963928249\n/\n0532-82299525', 'http://china.makepolo.com/product-detail/100289825126.html', 1583878346, 1583878346);
INSERT INTO `ad_product` VALUES (17, 4, '供应JA23--100锻压机床', '面议', '淄博市淄川机床厂', '13806485119\n/\n0533-5410671', 'http://china.makepolo.com/product-detail/100442890644.html', 1583878346, 1583878346);
INSERT INTO `ad_product` VALUES (18, 4, 'JB23-100T开式可倾压力机 冲床 锻压机床', '52000.00元', '南京中辉锻压机床制造厂（普通合伙）', '18761621616\n/\n025-57277855', 'http://china.makepolo.com/product-detail/100285568261.html', 1583878346, 1583878346);
INSERT INTO `ad_product` VALUES (19, 4, '厂家推荐 供应锻压机床', '100000.00元', '余姚市吉德惠铜压铸厂', '13705847698\n/\n0574-62585220', 'http://china.makepolo.com/product-detail/100312173497.html', 1583878346, 1583878346);
INSERT INTO `ad_product` VALUES (20, 4, '供应： 压力机 摩擦压力机 二手摩擦压力机 摩擦压 锻压机床', '500.00元', '辽阳锻压机床备件销售处', '13081783303\n/\n0419-2146176', 'http://china.makepolo.com/product-detail/100045484525.html', 1583878348, 1583878348);
INSERT INTO `ad_product` VALUES (21, 4, '供应二手闭式单点压力机/630T冲床/俄罗斯锻压机床', '55000元/台', '东宁泰瑞贸易有限公司', '18606777707\n/\n0453-3637335', 'http://china.makepolo.com/product-detail/101037289978.html', 1583878349, 1583878349);
INSERT INTO `ad_product` VALUES (22, 4, '安徽名牌 JB23-16型冲床压力机锻压机床', '7000.00元', '马鞍山市环锐重工机械制造有限公司', '15955516252\n/\n0555-2925298', 'http://china.makepolo.com/product-detail/100342086611.html', 1583878349, 1583878349);
INSERT INTO `ad_product` VALUES (23, 4, '龙门型钢板整平及弯曲成型专用液压机 ，自动液压机，锻压机床', '面议', '无锡大帝液压机械有限公司', '13771518561\n/\n0510-83383808', 'http://china.makepolo.com/product-detail/100450574759.html', 1583878349, 1583878349);
INSERT INTO `ad_product` VALUES (24, 4, '我厂热销卷锥体中型卷板机 锻压机床', '面议', '桓台县果里镇宏泰锻压机床厂', '13589585016\n/\n0533-7975628', 'http://china.makepolo.com/product-detail/100217736711.html', 1583878349, 1583878349);
INSERT INTO `ad_product` VALUES (25, 4, '现货俄罗斯6300吨热模锻压力机 二手K8548B锻压机床', '888元/台', '浙江鼎能机械制造有限公司', '18738004640\n/\n0577-58127366', 'http://china.makepolo.com/product-detail/101060159326.html', 1583878349, 1583878349);
INSERT INTO `ad_product` VALUES (26, 4, '高精密通用型冲床（锻压机床）', '面议', '江苏汇田数控机械有限公司', '18851565882\n/\n0510-85592608', 'http://china.makepolo.com/product-detail/100246079979.html', 1583878349, 1583878349);
INSERT INTO `ad_product` VALUES (27, 4, '供应剪板机 机械剪板机 电动剪板机 脚踏式剪板机 小型电动剪板机', '16000.00元', '马鞍山市旭天机床制造有限公司', '18605551480\n/\n0555-6775189', 'http://china.makepolo.com/product-detail/100355314541.html', 1583878349, 1583878349);
INSERT INTO `ad_product` VALUES (28, 4, '供应 JB23-25吨开式可倾压力机(图) 锻压机床 四柱液压机', '13000.00元', '马鞍山市金宇冲压机床厂', '13965546410\n/\n0555-6064936', 'http://china.makepolo.com/product-detail/100462437332.html', 1583878350, 1583878350);
INSERT INTO `ad_product` VALUES (29, 4, '高密锻压机床机械压力机锻压机械冲床', '200000元/件', '山东省高密市东辰机械制造有限公司', '13863689999\n/\n0536-2869928', 'http://china.makepolo.com/product-detail/101061307777.html', 1583878350, 1583878350);
INSERT INTO `ad_product` VALUES (30, 4, '供应JZ23高性能开式可倾压力机 锻压机床 冲床', '43200.00元', '浙江博仑高精机械有限公司', '15158259588\n/\n0575-83362228', 'http://china.makepolo.com/product-detail/100468005041.html', 1583878350, 1583878350);
INSERT INTO `ad_product` VALUES (31, 4, '厂家生产 高品质C41-75kg空气锤 锻压机床 电动空气锤', '35000.00元', '滕州宏铭机床有限公司', '13475245243\n/\n0632-5615397/13666328630', 'http://china.makepolo.com/product-detail/100460382348.html', 1583878350, 1583878350);
INSERT INTO `ad_product` VALUES (32, 4, '厂家热销 开式锻压机床冲床 J-23-6.3开式可倾压力机', '5700.00元', '浙江双穗锻压机床有限公司', '13736358088\n/\n0577-65270158', 'http://china.makepolo.com/product-detail/100212111396.html', 1583878350, 1583878350);
INSERT INTO `ad_product` VALUES (33, 4, '供应变频节能复合材料成型液压机 湖州液压机 四柱液压机专业制造', '170000.00元', '湖州鑫科锻压机床有限公司', '13967295257\n/\n0572-2698886', 'http://china.makepolo.com/product-detail/100356536853.html', 1583878350, 1583878350);
INSERT INTO `ad_product` VALUES (34, 4, '供应JS23-25T冲床（锻压机床、冲床系列设备）', '面议', '高密三江机械制造有限公司', '15965038999\n/\n0536-2582133', 'http://china.makepolo.com/product-detail/100394551721.html', 1583878350, 1583878350);
INSERT INTO `ad_product` VALUES (35, 4, '供应优质重型锻压机床设备C41-75kg双体系列空气锤（图）', '36000.00元', '滕州市龙阳弘发机床厂', '13475247524\n/\n0632-2034129', 'http://china.makepolo.com/product-detail/100214129196.html', 1583878351, 1583878351);
INSERT INTO `ad_product` VALUES (36, 4, '南京双力锻压机床 Q11机械剪板机', '面议', '南京双力锻压机床有限公司', '13690355830\n/\n025-57263775', 'http://china.makepolo.com/product-detail/100156233704.html', 1583878351, 1583878351);
INSERT INTO `ad_product` VALUES (37, 4, '剪板机折弯机卷板机扫地机', '面议', '南通铭德机床有限公司', '15371923336\n/\n0513-88212192', 'http://china.makepolo.com/product-detail/100084285990.html', 1583878351, 1583878351);
INSERT INTO `ad_product` VALUES (38, 4, '转让2.5米二手折弯机一台', '面议', '东莞市凤岗新鸿翔机械设备经营部', '13929255256\n/\n0769-87883455', 'http://china.makepolo.com/product-detail/100141036432.html', 1583878351, 1583878351);
INSERT INTO `ad_product` VALUES (39, 4, '供应液压机 单柱式六台联动液压机 滕州锻压机床二厂', '1000000.00元', '山东滕州市锻压机床二厂', '18600033194\n/\n 0632 5512006', 'http://china.makepolo.com/product-detail/100383222998.html', 1583878351, 1583878351);
INSERT INTO `ad_product` VALUES (40, 4, '专业生产电动剪板机、脚踏剪板机等大型机床', '65000.00元', '马鞍山奇锋刀模具厂', '13515553666\n/\n0555-6761149', 'http://china.makepolo.com/product-detail/100434802430.html', 1583878351, 1583878351);
INSERT INTO `ad_product` VALUES (41, 4, '供应锻压机床锻压设备摩擦压力机 欢迎洽谈', '面议', '青岛鑫裕源机械有限公司', '13969689266\n/\n0532-82290736', 'http://china.makepolo.com/product-detail/100426524390.html', 1583878351, 1583878351);
INSERT INTO `ad_product` VALUES (42, 4, '沃得锻压机床深圳代理，吨位齐全，价格优惠', '100000.00元', '深圳市恒冠精密机械有限公司', '13723433842\n/\n0755-18124795613', 'http://china.makepolo.com/product-detail/100397927901.html', 1583878352, 1583878352);
INSERT INTO `ad_product` VALUES (43, 4, '厂家直销 12吨 小型冲床 锻压机床', '2800.00元', '孙恺', '13012718101\n/\n0533-5411816', 'http://china.makepolo.com/product-detail/100249154894.html', 1583878352, 1583878352);
INSERT INTO `ad_product` VALUES (44, 4, '多种型号 欢迎订购 专业供应压力机, 锻压机床 品质保证', '面议', '瑞安市瑞泰冲压机械厂', '13705786055\n/\n0577-65209055', 'http://china.makepolo.com/product-detail/100475999834.html', 1583878352, 1583878352);
INSERT INTO `ad_product` VALUES (45, 4, '黔南锻压机床 Q11Y—系列液压闸式剪板机', '面议', '广州市黄埔险峰黔南机床总汇', '13922242703\n/\n020-82292672', 'http://china.makepolo.com/product-detail/100285948887.html', 1583878352, 1583878352);
INSERT INTO `ad_product` VALUES (46, 4, '供应TUP5T冲床,10T锻压机床，桌上冲床，小吨位冲床', '面议', '东莞市佑亿精密自动化设备有限公司', '13509018706\n/\n0769-87913817', 'http://china.makepolo.com/product-detail/100156574299.html', 1583878352, 1583878352);
INSERT INTO `ad_product` VALUES (47, 4, '厦门锻压机床有限公司 J21M-200T 气动冲床', '54元', '沈阳一机4S店', '15816839156\n/\n0769-33219199', 'http://china.makepolo.com/product-detail/100197520092.html', 1583878352, 1583878352);
INSERT INTO `ad_product` VALUES (48, 4, '厂家推荐 供应锻压机床', '100000.00元', '余姚市吉德惠铜压铸厂', '13705847698\n/\n0574-62585220', 'http://china.makepolo.com/product-detail/100312480906.html', 1583878352, 1583878352);
INSERT INTO `ad_product` VALUES (49, 4, '安徽名牌 J21-125型冲床压力机锻压机床', '62000.00元', '马鞍山市环锐重工机械制造有限公司', '15955516252\n/\n0555-2925298', 'http://china.makepolo.com/product-detail/100342086023.html', 1583878353, 1583878353);
INSERT INTO `ad_product` VALUES (50, 4, '维修定制锻压机床摩擦压力机', '3333.00元', '青岛蜗牛机械有限公司', '13963928249\n/\n0532-82299525', 'http://china.makepolo.com/product-detail/100289857897.html', 1583878353, 1583878353);
INSERT INTO `ad_product` VALUES (51, 4, '供应 手动压力机 锻压机床 压力机 二手压力 冲压设备 摩擦压力机', '1000.00元', '辽阳锻压机床备件销售处', '13081783303\n/\n0419-2146176', 'http://china.makepolo.com/product-detail/100044847130.html', 1583878353, 1583878353);
INSERT INTO `ad_product` VALUES (52, 4, '厂家热销 锻压机床冲床 J23-25开式可倾压力机', '15500.00元', '浙江双穗锻压机床有限公司', '13736358088\n/\n0577-65270158', 'http://china.makepolo.com/product-detail/100212084678.html', 1583878353, 1583878353);
INSERT INTO `ad_product` VALUES (53, 4, '供应锻压机床C41-16KG空气锤 出口品质 气锤 国标品质', '5900.00元', '滕州宏铭机床有限公司', '15965117685\n/\n0632-5615397/13666328630', 'http://china.makepolo.com/product-detail/100466210802.html', 1583878354, 1583878354);
INSERT INTO `ad_product` VALUES (54, 4, '供应优质重型锻压机床设备C41-75kg、150kg系列空气锤', '36000.00元', '滕州市龙阳弘发机床厂', '13475247524\n/\n0632-2034129', 'http://china.makepolo.com/product-detail/100211808651.html', 1583878354, 1583878354);
INSERT INTO `ad_product` VALUES (55, 4, '供应Y79汽车刹车片成型液压机 复合材料成型 加热 湖州液压机', '450000.00元', '湖州鑫科锻压机床有限公司', '13967295257\n/\n0572-2698886', 'http://china.makepolo.com/product-detail/100356536834.html', 1583878354, 1583878354);
INSERT INTO `ad_product` VALUES (56, 5, '供应河南英达尔卧式轴体自动淬火机床生产', '1元/台', '河南英达尔电子科技有限公司', '18738189218\n/\n0371-55016296', 'http://china.makepolo.com/product-detail/101064269134.html', 1583878354, 1583878354);
INSERT INTO `ad_product` VALUES (57, 5, '高质量数控电动刀架找宏瑞莱数控机床配件', '面议', '温州宏瑞数控机电设备有限公司', '15868002047\n/\n-', 'http://china.makepolo.com/product-detail/101063930423.html', 1583878354, 1583878354);
INSERT INTO `ad_product` VALUES (58, 5, '中走丝线切割厂家', '面议', '深圳屹诚机电设备有限公司', '17100767547\n/\n-', 'http://china.makepolo.com/product-detail/101064434746.html', 1583878355, 1583878355);
INSERT INTO `ad_product` VALUES (59, 5, '不锈钢板材激光切割机', '200000元/件', '济南森特机械设备有限公司', '13220571797\n/\n-', 'http://china.makepolo.com/product-detail/101063766386.html', 1583878355, 1583878355);
INSERT INTO `ad_product` VALUES (60, 5, '盾构机仿真模拟实训装置', '面议', '徐州硕博电子科技有限公司', '17712187939\n/\n0516-61232280', 'http://china.makepolo.com/product-detail/101062042764.html', 1583878355, 1583878355);
INSERT INTO `ad_product` VALUES (61, 5, '速飞信品牌高速加工0.3-3mm电火花穿孔机DK-806', '26000元/件', '洛阳信成精密机械有限公司', '13014767809\n/\n-', 'http://china.makepolo.com/product-detail/101060703109.html', 1583878356, 1583878356);
INSERT INTO `ad_product` VALUES (62, 5, '多功能液压冲孔机模具，冲不锈钢防盗网方孔圆孔楼梯扶手冲斜弧', '3500元/件', '佛山市广海盛创五金模具有限公司', '13726656410\n/\n-', 'http://china.makepolo.com/product-detail/101061824904.html', 1583878356, 1583878356);
INSERT INTO `ad_product` VALUES (63, 5, '精密电火花微孔机床， 电火花微孔机0.07-0.5mm', '面议', '苏州明谷纳科技有限公司吴中分公司', '18913521887\n/\n-', 'http://china.makepolo.com/product-detail/101060264985.html', 1583878357, 1583878357);
INSERT INTO `ad_product` VALUES (64, 5, '厂家直销特大口径联合传动无极变速仪表 车床车铣复合专用机床', '面议', '盐城科沃智能化设备有限公司', '18905109010\n/\n88509188', 'http://china.makepolo.com/product-detail/101063563504.html', 1583878357, 1583878357);
INSERT INTO `ad_product` VALUES (65, 5, '1325巡边雕刻机自动生成路径', '面议', '山东泽尊数控机械有限公司', '13346261327\n/\n-', 'http://china.makepolo.com/product-detail/101061036324.html', 1583878357, 1583878357);
INSERT INTO `ad_product` VALUES (66, 5, '厂家直供大铁火花机 电火花加工', '185000元/件', '东莞市荣田精密机械有限公司', '13650131911\n/\n0769-81871911', 'http://china.makepolo.com/product-detail/101064008204.html', 1583878357, 1583878357);
INSERT INTO `ad_product` VALUES (67, 5, 'VMC850加工中心', '面议', '山东金雕智能科技有限公司', '18063223777\n/\n0632-5911599', 'http://china.makepolo.com/product-detail/101057141290.html', 1583878358, 1583878358);
INSERT INTO `ad_product` VALUES (68, 5, '供应石家庄，沧州的板式定制家具造型雕刻机工厂', '70000元/台', '济南凯迪格数控设备有限公司', '18906442595\n/\n-', 'http://china.makepolo.com/product-detail/101055655220.html', 1583878358, 1583878358);
INSERT INTO `ad_product` VALUES (69, 5, '倍速特火花机', '60000元/件', '东莞市众成机械有限公司', '13424702319\n/\n0769-82195622', 'http://china.makepolo.com/product-detail/101053051786.html', 1583878358, 1583878358);
INSERT INTO `ad_product` VALUES (70, 5, 'ACE	缓冲器Buffer	MA 900M', '面议', '上海祥树欧茂机电设备有限公司', '15776584837\n/\n021-23505244', 'http://china.makepolo.com/product-detail/101053046416.html', 1583878358, 1583878358);
INSERT INTO `ad_product` VALUES (71, 5, '上海线切割机（兆铭数控快走丝中走丝）', '1元/件', '上海兆铭数控设备有限公司', '13728677808\n/\n-', 'http://china.makepolo.com/product-detail/101060436618.html', 1583878358, 1583878358);
INSERT INTO `ad_product` VALUES (72, 5, '沙迪克/sodick ALN400Qs 线切割机', '1.00元/台', '东莞市金梓旺机械有限公司', '13211007309\n/\n0769-85338567', 'http://china.makepolo.com/product-detail/101053661306.html', 1583878359, 1583878359);
INSERT INTO `ad_product` VALUES (73, 5, '全自动桌式单轴数控钻床', '120000元/件', '昆山速远达机械科技有限公司', '18120093296\n/\n0512-57909839', 'http://china.makepolo.com/product-detail/101051367046.html', 1583878359, 1583878359);
INSERT INTO `ad_product` VALUES (74, 5, '岳阳模具激光焊', '1元/件', '汩罗市罗江镇盛世零配件加工厂', '13412889600\n/\n-', 'http://china.makepolo.com/product-detail/101050720865.html', 1583878359, 1583878359);
INSERT INTO `ad_product` VALUES (75, 5, '断桥铝门窗设备数控复合机 塑钢门窗设备复合机', '39000元/台', '济南市历城区金长城机械厂', '18353171358\n/\n0531-88015280', 'http://china.makepolo.com/product-detail/101054476339.html', 1583878359, 1583878359);
INSERT INTO `ad_product` VALUES (76, 5, '数控刨槽机 数控开槽机', '1元/件', '河北星箭机械设备有限公司', '18233687188\n/\n-', 'http://china.makepolo.com/product-detail/101048273763.html', 1583878360, 1583878360);
INSERT INTO `ad_product` VALUES (77, 5, '实木压花机 密度板压花机 松木木纹机 厂家直销', '1元/台', '徐州腾隆机械有限公司', '13372213570\n/\n0516-88210706', 'http://china.makepolo.com/product-detail/101048097572.html', 1583878360, 1583878360);
INSERT INTO `ad_product` VALUES (78, 5, '体育器材生产 板管一体激光切割机2000W厂家性价比高', '188888元/件', '济南超卓数控设备有限公司', '18668937396\n/\n0531-88804128', 'http://china.makepolo.com/product-detail/101048107858.html', 1583878360, 1583878360);
INSERT INTO `ad_product` VALUES (79, 5, '供应东莞市马扎克龙门加工中心', '1980000元/台', '东莞市马扎克数控科技有限公司', '18689492620\n/\n82186689', 'http://china.makepolo.com/product-detail/101050240051.html', 1583878360, 1583878360);
INSERT INTO `ad_product` VALUES (80, 5, '台捷ZNC450精密火花机倍速特系统 电火花成型机床火花机价格', '48000元/台', '东莞市台捷机械设备有限公司', '15992726642\n/\n0769-82615108', 'http://china.makepolo.com/product-detail/101049511304.html', 1583878360, 1583878360);
INSERT INTO `ad_product` VALUES (81, 5, '江西上饶买电火花，就选长梅机电', '面议', '江西长梅机电机床销售有限公司', '15807000484\n/\n-', 'http://china.makepolo.com/product-detail/101047863771.html', 1583878360, 1583878360);
INSERT INTO `ad_product` VALUES (82, 5, '陕西机床维修 机床搬迁 机床保养', '面议', '西安力卡特精密机电有限公司', '18629325122\n/\n029-86143949', 'http://china.makepolo.com/product-detail/101049555010.html', 1583878360, 1583878360);
INSERT INTO `ad_product` VALUES (83, 5, '750手制一体石墨火花机,侨茂大型非标火花机定制企业', '238000元/件', '东莞市日鑫机械有限公司', '15086609627\n/\n0769-82302096', 'http://china.makepolo.com/product-detail/101056511679.html', 1583878360, 1583878360);
INSERT INTO `ad_product` VALUES (84, 5, '河北鑫鹏轮胎切割机视频', '11000元/台', '河北鑫鹏机械制造有限公司', '18233067722\n/\n0319-7581144', 'http://china.makepolo.com/product-detail/101047035684.html', 1583878361, 1583878361);
INSERT INTO `ad_product` VALUES (85, 5, '鼎拓电火花机发展方向及注意', '80000元/台', '东莞市鼎拓机械科技有限公司', '13058589326\n/\n0769-85618039', 'http://china.makepolo.com/product-detail/101046897262.html', 1583878361, 1583878361);
INSERT INTO `ad_product` VALUES (86, 5, '电动铭牌打码机  铝牌刻字机 不锈钢牌打字机铝牌刻字机 标牌刻字', '面议', '济南历下宇通数控设备销售中心', '18678399662\n/\n-', 'http://china.makepolo.com/product-detail/101043491764.html', 1583878361, 1583878361);
INSERT INTO `ad_product` VALUES (87, 5, '提供牡丹江曲轴局部淬火专用感应器定制，凸轮轴中高频连续淬火感应器', '面议', '洛阳三恒感应加热科技有限公司', '15194585623\n/\n-', 'http://china.makepolo.com/product-detail/101048327019.html', 1583878361, 1583878361);
INSERT INTO `ad_product` VALUES (88, 5, '乐清市东腾自动化非标全自动攻牙机生产厂家', '23000元/件', '乐清市东腾自动化设备有限公司', '15858882352\n/\n0577-57170493', 'http://china.makepolo.com/product-detail/101042693562.html', 1583878361, 1583878361);
INSERT INTO `ad_product` VALUES (89, 5, '无锡域名备案 华商网络 网站建设运营', '1元/件', '无锡华商网络科技有限公司', '18551062135\n/\n0510-85229822', 'http://china.makepolo.com/product-detail/101039191163.html', 1583878361, 1583878361);
INSERT INTO `ad_product` VALUES (90, 5, '卧加 630卧加 安田YASDA卧加', '面议', '昆山亚景仪器设备有限公司', '18915759330\n/\n-', 'http://china.makepolo.com/product-detail/101038326817.html', 1583878361, 1583878361);
INSERT INTO `ad_product` VALUES (91, 5, '直销-台湾荣田精密型火花机-ZNC-345火花机', '85800元/台', '东莞市荣朕模具制品有限公司', '18198826616\n/\n-', 'http://china.makepolo.com/product-detail/101039335693.html', 1583878361, 1583878361);
INSERT INTO `ad_product` VALUES (92, 5, '广西华丰厂家直供力博M2500数控加工中心', '20000元/件', '南宁市锐破商贸有限责任公司', '15607718398\n/\n0771-4300532', 'http://china.makepolo.com/product-detail/101057956916.html', 1583878362, 1583878362);
INSERT INTO `ad_product` VALUES (93, 5, '台湾细孔放电机专用旋转头，穿孔机细孔放电机配件，高耐磨旋转头', '1688元/个', '东莞市嘉升机电科技有限公司', '13712381715\n/\n-', 'http://china.makepolo.com/product-detail/101054704418.html', 1583878362, 1583878362);
INSERT INTO `ad_product` VALUES (94, 5, '全自动刮胶研磨机 全自动磨刮机', '15000元/台', '深圳市鑫众盛科技有限公司', '13509651558\n/\n-', 'http://china.makepolo.com/product-detail/101032226291.html', 1583878362, 1583878362);
INSERT INTO `ad_product` VALUES (95, 5, '家庭智能语音系统 壹诚华宇 自己的私人影院', '1元/件', '无锡壹诚华宇科技有限公司', '18118916811\n/\n0510-81856711', 'http://china.makepolo.com/product-detail/101039322628.html', 1583878362, 1583878362);
INSERT INTO `ad_product` VALUES (96, 6, '专业生产 销售普通顶尖、质优价廉 机床附件', '6.00元', '泗水县宏鑫机床附件厂(普通合伙)', '13505475412\n/\n0537-4010078', 'http://china.makepolo.com/product-detail/100208947104.html', 1583878363, 1583878363);
INSERT INTO `ad_product` VALUES (97, 6, '生产销售 TL-3拖链 盐山拖链¶ 机床附件 塑料拖链', '60.00元', '盐山聚丰机床附件制造有限公司', '13131721325\n/\n0317-6349776', 'http://china.makepolo.com/product-detail/100355068573.html', 1583878363, 1583878363);
INSERT INTO `ad_product` VALUES (98, 6, '专业生产铝型材防护帘.及各种机床附件', '50.00元', '庆云天城机床附件有限公司', '15564410871\n/\n0534-3778444', 'http://china.makepolo.com/product-detail/100423699327.html', 1583878363, 1583878363);
INSERT INTO `ad_product` VALUES (99, 6, '机床专用刻度盘/供应机床各类刻度盘/刻度环/机床配件/机床附件', '1.00元', '泰兴市天星金属工艺有限公司', '13805265302\n/\n0523-87455010', 'http://china.makepolo.com/product-detail/100385839809.html', 1583878363, 1583878363);
INSERT INTO `ad_product` VALUES (100, 6, '批发供应SBS电子走刀器齿轮 机床附件（图）', '30.00元', '余姚市冈野机械有限公司', '13780020070\n/\n574-66225682', 'http://china.makepolo.com/product-detail/100189833091.html', 1583878363, 1583878363);
INSERT INTO `ad_product` VALUES (101, 6, '无锡机床工作灯，上海机床工作灯，杭州机床附件', '150.00元', '王长亮', '13861784466\n/\n0317-6344888', 'http://china.makepolo.com/product-detail/100460804531.html', 1583878363, 1583878363);
INSERT INTO `ad_product` VALUES (102, 6, '重型机械专用钢铝拖链、冶金设备专用钢铝拖链、机床附件', '185.00元', '沧州富盛精密机床附件制造有限公司', '13803238971\n/\n 0317 6304178', 'http://china.makepolo.com/product-detail/100309147352.html', 1583878363, 1583878363);
INSERT INTO `ad_product` VALUES (103, 6, '批发机床附件 回转顶尖 伞型顶尖 合金顶尖 固定顶尖 驱动顶尖', '5500.00元', '汪定华', '13758692345\n/\n0576-86966262', 'http://china.makepolo.com/product-detail/100455362547.html', 1583878363, 1583878363);
INSERT INTO `ad_product` VALUES (104, 6, '机床附件，万向冷却管生产厂家，四分1/2系列', '1.00元', '东莞市长安昊通五金工具商行', '13751411350\n/\n0769-81622946', 'http://china.makepolo.com/product-detail/100360808886.html', 1583878363, 1583878363);
INSERT INTO `ad_product` VALUES (105, 6, '机床附件批发 通用配件 精密机床配件附件', '面议', '禹州市万昌机械有限公司', '13613747868\n/\n-', 'http://china.makepolo.com/product-detail/100294800760.html', 1583878364, 1583878364);
INSERT INTO `ad_product` VALUES (106, 6, '昆山机床附件 机床CNC防护罩', '3000.00元', '昆山泰科尤斯机械科技有限公司', '18914986906\n/\n0512-57554800', 'http://china.makepolo.com/product-detail/100388252542.html', 1583878364, 1583878364);
INSERT INTO `ad_product` VALUES (107, 6, '销售生产批发机床防护罩等机床附件', '100.00元', '盐山县精益机床附件制造有限公司销售处', '13831768985\n/\n0317-3086598', 'http://china.makepolo.com/product-detail/101052677790.html', 1583878364, 1583878364);
INSERT INTO `ad_product` VALUES (108, 6, '刀套、机床附件、导套', '38.00元', '德州北宇机械有限公司1', '13316880767\n/\n0755-32902887', 'http://china.makepolo.com/product-detail/100312455155.html', 1583878364, 1583878364);
INSERT INTO `ad_product` VALUES (109, 6, '厂家经销 5#合金顶尖 合金半缺 加长顶尖 机床附件 固定顶尖 普通', '70.00元', '泗水县精密机床附件厂', '13153791222\n/\n0537-4011129', 'http://china.makepolo.com/product-detail/100374442340.html', 1583878364, 1583878364);
INSERT INTO `ad_product` VALUES (110, 6, '高精度 莫氏高速回转顶尖 机床附件批发 厂家直销', '100.00元', '济宁勤丰机械五金有限公司', '0537-3281595\n/\n 0537 3281595', 'http://china.makepolo.com/product-detail/100425102032.html', 1583878364, 1583878364);
INSERT INTO `ad_product` VALUES (111, 6, '供应机床附件/手轮手柄/电镀手轮、8寸手轮', '15.00元', '佛山市顺德区伦教景茂机械配件店', '13929195567\n/\n0757-22171255', 'http://china.makepolo.com/product-detail/100451385649.html', 1583878364, 1583878364);
INSERT INTO `ad_product` VALUES (112, 6, '北京机床附件厂烟台经销处 供JXT 25系列铣夹头 三箭铣夹头', '1560.00元', '烟台宏益机电设备有限公司', '18615011592\n/\n 0535 6852906', 'http://china.makepolo.com/product-detail/100507387289.html', 1583878364, 1583878364);
INSERT INTO `ad_product` VALUES (113, 6, '排屑机--渤海精益机床附件制造有限公司', '3000.00元', '王福祥', '15133735207\n/\n0317-6344887', 'http://china.makepolo.com/product-detail/100420601904.html', 1583878364, 1583878364);
INSERT INTO `ad_product` VALUES (114, 6, 'TL系列钢制拖链,钢制拖链,拖链_钢制拖链系列山东盛达', '150元', '庆云日盛数控机床附件制造有限公司', '18866008203\n/\n534-3662000', 'http://china.makepolo.com/product-detail/100186109215.html', 1583878365, 1583878365);
INSERT INTO `ad_product` VALUES (115, 6, '机床配件，机床附件，润滑系列，油路分配器', '10.00元', '诸暨市富威特机械厂', '18069598798\n/\n0575-87222269', 'http://china.makepolo.com/product-detail/100365428422.html', 1583878365, 1583878365);
INSERT INTO `ad_product` VALUES (116, 6, '供应机床附件电缆防爆软管系列', '8.00元', '沧州誉丰数控机床附件制造有限公司', '13731735599\n/\n0317-6222995/6222997', 'http://china.makepolo.com/product-detail/100467443793.html', 1583878365, 1583878365);
INSERT INTO `ad_product` VALUES (117, 6, '新型桥式 TL钢制拖链沧州机床附件', '1000元/个', '盐山县木子李机床附件厂', '13731711230\n/\n0317-6345330', 'http://china.makepolo.com/product-detail/100035496388.html', 1583878365, 1583878365);
INSERT INTO `ad_product` VALUES (118, 6, '大量供应可打开式 丝杠防护罩 （拉链型）-天锐机床附件', '18.00元', '张明寨', '13373239376\n/\n0317-6348556', 'http://china.makepolo.com/product-detail/100450497217.html', 1583878365, 1583878365);
INSERT INTO `ad_product` VALUES (119, 6, 'FIBRO 机床附件', '10元/个', '上海狄放贸易有限公司', '15618994997\n/\n021-63063805', 'http://china.makepolo.com/product-detail/100487606832.html', 1583878365, 1583878365);
INSERT INTO `ad_product` VALUES (120, 6, '山东厂家直销 CBT滚珠丝杆副 滚珠丝杠副 机床附件', '1.00元', '济宁瑞特尔精密机械有限公司', '13583707187\n/\n0537-3623952', 'http://china.makepolo.com/product-detail/100350752665.html', 1583878365, 1583878365);
INSERT INTO `ad_product` VALUES (121, 6, '苏州供应机床灯具刮屑板拖链等机床附件 并可定做异型机床附件', '122.00元', '苏州悦丰烁机电设备有限公司', '13915515689\n/\n0512-68386176', 'http://china.makepolo.com/product-detail/100269307636.html', 1583878365, 1583878365);
INSERT INTO `ad_product` VALUES (122, 6, '生产定做 加长变径套 特长型变径套 直柄变径套等各类机床附件', '1.00元', '泗水县宏鑫机床附件厂(普通合伙)', '13505475412\n/\n0537-4010078', 'http://china.makepolo.com/product-detail/100373875757.html', 1583878365, 1583878365);
INSERT INTO `ad_product` VALUES (123, 8, '4HB310-AH26风帕克漩涡鼓风机 医疗器械负压抽吸泵', '面议', '上海利楷机电设备有限公司', '15901997406\n/\n021-37773582', '//china.makepolo.com/product-detail/101041451851.html', 1583878366, 1583878366);
INSERT INTO `ad_product` VALUES (124, 8, '上奥牌SK型直联式水环真空泵', '2350.00元/台', '上海正奥泵业制造有限公司', '13701662661\n/\n021-63099652', 'http://china.makepolo.com/product-detail/101065989656.html', 1583878366, 1583878366);
INSERT INTO `ad_product` VALUES (125, 8, '万佳WJ3C高端熟食真空冷却机出锅热食品降温设备', '126800元/台', '东莞市万佳机械设备有限公司', '15914054185\n/\n0769-89805978', 'http://china.makepolo.com/product-detail/101065970749.html', 1583878366, 1583878366);
INSERT INTO `ad_product` VALUES (126, 8, '小型真空泵美容产品黑头仪减肥机刮痧拔罐仪 电压订制工厂批发', '3元/件', '东莞市清田御实业有限公司', '18820196016\n/\n0769-88887815', 'http://china.makepolo.com/product-detail/101064413278.html', 1583878366, 1583878366);
INSERT INTO `ad_product` VALUES (127, 8, '手机纳米防水镀膜机 全自动手机纳米防水镀膜机 纳米防水液厂家', '8800元/件', '强核新材料（深圳）有限公司', '15323892579\n/\n-', 'http://china.makepolo.com/product-detail/101063876121.html', 1583878366, 1583878366);
INSERT INTO `ad_product` VALUES (128, 8, '九成新离子镀膜机转让', '1元/件', '合肥永信等离子技术有限公司', '18096677807\n/\n-', 'http://china.makepolo.com/product-detail/101063751266.html', 1583878366, 1583878366);
INSERT INTO `ad_product` VALUES (129, 8, 'vmstr抽真空机小型家用迷你抽气泵电动抽气机zk-190源头厂家', '150元/个', '深圳市威曼斯特科技有限公司', '13723709306\n/\n-', 'http://china.makepolo.com/product-detail/101063517902.html', 1583878366, 1583878366);
INSERT INTO `ad_product` VALUES (130, 8, '供应二手PP水喷射真空机组型号环保真空机组全新pp真空设备寿命', '3800元/件', '梁山荣亿二手化工设备购销中心', '18266825361\n/\n0537-7602077', 'http://china.makepolo.com/product-detail/101063294177.html', 1583878366, 1583878366);
INSERT INTO `ad_product` VALUES (131, 8, 'CRYO-TORR 8 CRYO-U8 350 D8033034 真空低温泵促销', '8888元/件', '汕头市罗克自动化科技有限公司', '15918962164\n/\n-', 'http://china.makepolo.com/product-detail/101062391802.html', 1583878367, 1583878367);
INSERT INTO `ad_product` VALUES (132, 8, '新款微型隔膜泵美容仪器 真空包装机 医疗设备 按摩设备增压', '180元/台', '东莞市新欣电子有限公司', '15976669241\n/\n0769-82256942', 'http://china.makepolo.com/product-detail/101061494066.html', 1583878367, 1583878367);
INSERT INTO `ad_product` VALUES (133, 8, 'ZBK型罗茨真空泵', '1000元/件', '重庆华南玺焱泵业有限公司', '18030860368\n/\n023-62560060', 'http://china.makepolo.com/product-detail/101060856538.html', 1583878367, 1583878367);
INSERT INTO `ad_product` VALUES (134, 8, '北京科伟 循环水式真空泵SHB-III  厂家直销', '面议', '黄骅市华辰实验仪器有限公司', '15511759001\n/\n-', 'http://china.makepolo.com/product-detail/101060093920.html', 1583878367, 1583878367);
INSERT INTO `ad_product` VALUES (135, 8, '莱宝中央真空系统+电子行业贴片机用真空泵+纳西姆真空泵', '8000元/台', '深圳市托理拆利机电设备有限公司', '13823788380\n/\n-', 'http://china.makepolo.com/product-detail/101061780705.html', 1583878368, 1583878368);
INSERT INTO `ad_product` VALUES (136, 8, '真空泵叶轮间隙环', '面议', '佶缔纳士机械有限公司', '18016360936\n/\n-', 'http://china.makepolo.com/product-detail/101060693644.html', 1583878368, 1583878368);
INSERT INTO `ad_product` VALUES (137, 8, '中央厨房真空预冷机-熟食真空保鲜机报价', '13200元/台', '青岛中地捷特食品机械有限公司', '15092275385\n/\n-', 'http://china.makepolo.com/product-detail/101060305560.html', 1583878368, 1583878368);
INSERT INTO `ad_product` VALUES (138, 8, '山东宇泽钛金真空镀膜-玫瑰红不锈钢制品厂家定制', '100元/件', '山东省宁津县炫宸五金加工厂', '15628643958\n/\n-', 'http://china.makepolo.com/product-detail/101060304024.html', 1583878368, 1583878368);
INSERT INTO `ad_product` VALUES (139, 8, '卤肉真空预冷机', '195000元/台', '上海钢擎机械制造有限公司', '18918967075\n/\n021-51217865', 'http://china.makepolo.com/product-detail/101057023318.html', 1583878368, 1583878368);
INSERT INTO `ad_product` VALUES (140, 8, '临沂食品包装机RA0160D普旭进口真空泵', '27500元/件', '东莞市鸿鑫真空设备有限公司', '13798889402\n/\n0769-82638892', 'http://china.makepolo.com/product-detail/101056926124.html', 1583878368, 1583878368);
INSERT INTO `ad_product` VALUES (141, 8, '消防专用宝华空气泵JII-B-H配件压力表N4101', '100元/台', '山东齐安华业电子科技有限公司', '13386419780\n/\n0531-59874208', 'http://china.makepolo.com/product-detail/101065821357.html', 1583878368, 1583878368);
INSERT INTO `ad_product` VALUES (142, 8, '水环真空泵抽气泵抽真空灭菌', '面议', '山东龙鼓重工机械有限公司', '13854139323\n/\n-', 'http://china.makepolo.com/product-detail/101056352498.html', 1583878368, 1583878368);
INSERT INTO `ad_product` VALUES (143, 8, '直销旋抽真空泵工业用抽气泵 树脂胶水真空胶泡', '123元/台', '东莞市佰盛真空设备有限公司', '13530582612\n/\n-', 'http://china.makepolo.com/product-detail/101056049808.html', 1583878368, 1583878368);
INSERT INTO `ad_product` VALUES (144, 8, '固体真空泵', '面议', '河北冠能分离输送设备有限公司', '18033643585\n/\n-', 'http://china.makepolo.com/product-detail/101054984837.html', 1583878369, 1583878369);
INSERT INTO `ad_product` VALUES (145, 8, 'SITEMA	抱闸气缸	KSP-25', '面议', '上海祥树欧茂机电设备有限公司', '15776584837\n/\n021-23505244', 'http://china.makepolo.com/product-detail/101053114762.html', 1583878369, 1583878369);
INSERT INTO `ad_product` VALUES (146, 8, '2BVA2071水环式真空泵', '2500元/台', '东莞市旭达真空机电设备有限公司', '17322112527\n/\n-', 'http://china.makepolo.com/product-detail/101051568839.html', 1583878369, 1583878369);
INSERT INTO `ad_product` VALUES (147, 8, '上海欧沁优供施迈茨schmalz真空泵', '面议', '上海欧沁机电工程技术有限公司', '18930924783\n/\n021-52910015', 'http://china.makepolo.com/product-detail/101053700530.html', 1583878369, 1583878369);
INSERT INTO `ad_product` VALUES (148, 8, '供应长沙浏阳周边食品包装普旭RA0100F真空泵', '1元/台', '湖南瑞峰腾润滑设备科技有限公司', '18973161801\n/\n0731-83637100', 'http://china.makepolo.com/product-detail/101061130496.html', 1583878369, 1583878369);
INSERT INTO `ad_product` VALUES (149, 8, '大型parylene涂层系统 P300 德国 Diener原装进口', '1元/件', '旭阿科技（上海）有限公司', '15021401934\n/\n-', 'http://china.makepolo.com/product-detail/101050794881.html', 1583878369, 1583878369);
INSERT INTO `ad_product` VALUES (150, 8, '自产自销PP水喷射真空机组 防腐蚀真空泵', '4000元/件', '邹平铭泰环保设备有限公司', '19954369577\n/\n0543-2242700', 'http://china.makepolo.com/product-detail/101051600046.html', 1583878369, 1583878369);
INSERT INTO `ad_product` VALUES (151, 8, 'VALUE飞越VSV-020 0.75KW  单级油润滑真空泵', '200元/台', '阿斯诺机械（苏州）有限公司', '15262609113\n/\n0512-36601701', 'http://china.makepolo.com/product-detail/101052327425.html', 1583878369, 1583878369);
INSERT INTO `ad_product` VALUES (152, 8, '齿科电动抽吸泵', '面议', '百瑞科技（南京）有限公司', '15005144988\n/\n025-57337833', 'http://china.makepolo.com/product-detail/101049581729.html', 1583878370, 1583878370);
INSERT INTO `ad_product` VALUES (153, 8, '千岛泵业RPP水喷射真空泵', '650元/件', '杭州千岛泵业有限公司', '15158051028\n/\n0571-64704198', 'http://china.makepolo.com/product-detail/101048451803.html', 1583878370, 1583878370);
INSERT INTO `ad_product` VALUES (154, 8, '供应厂家2019新款特卖3000KG型折板式保鲜真空预冷机', '255000元/件', '东莞市科美斯科技实业有限公司', '13510034546\n/\n0769-88621280', 'http://china.makepolo.com/product-detail/101048010745.html', 1583878370, 1583878370);
INSERT INTO `ad_product` VALUES (155, 8, '厂家生产直销聚丙烯水喷射真空机组/立式真空泵', '10元/件', '江苏启鸿环保设备有限公司', '15365329683\n/\n0512-53106388', 'http://china.makepolo.com/product-detail/101050248226.html', 1583878370, 1583878370);
INSERT INTO `ad_product` VALUES (156, 8, '比勒蠕动泵SP04ES03（带外壳）', '面议', '青岛润泽通科技有限公司', '18661788014\n/\n-', 'http://china.makepolo.com/product-detail/101046990131.html', 1583878370, 1583878370);
INSERT INTO `ad_product` VALUES (157, 8, '快速降温真空大型预冷机', '面议', '诸城市爱思盛机械有限公司', '17863693396\n/\n0536-6090624', 'http://china.makepolo.com/product-detail/101047343100.html', 1583878370, 1583878370);
INSERT INTO `ad_product` VALUES (158, 8, '直销保鲜速冷机批发价格-熟食真空预冷机-山东杰西玛科技', '80000元/件', '山东杰西玛机械科技有限公司', '15165694890\n/\n0536-6568788', 'http://china.makepolo.com/product-detail/101050044554.html', 1583878370, 1583878370);
INSERT INTO `ad_product` VALUES (159, 8, 'NPM真空泵 KHB200-305-G1-KG132 AEMFBH4PE012', '面议', '深圳市桥南达飞科技有限公司', '18124055971\n/\n-', 'http://china.makepolo.com/product-detail/101047093592.html', 1583878370, 1583878370);
INSERT INTO `ad_product` VALUES (160, 8, 'IHE 150-125-315 IHE150-100-315泵壳 叶轮', '3000元/件', '襄阳五二五泵业有限公司', '13871653355\n/\n-', 'http://china.makepolo.com/product-detail/101046713347.html', 1583878370, 1583878370);
INSERT INTO `ad_product` VALUES (161, 8, '供应PISCO，真空开关VUSM10-6 真空发生器', '1689元/件', '深圳市星浩瑞精密工业有限公司', '15027215473\n/\n0755-29049485', 'http://china.makepolo.com/product-detail/101045927518.html', 1583878371, 1583878371);
INSERT INTO `ad_product` VALUES (162, 8, '真空预冷机-蔬菜真空预冷机-山东真空预冷机制造商', '13000元/台', '诸城市邦厨机械有限公司', '13371065170\n/\n0536-6575567', 'http://china.makepolo.com/product-detail/101059134103.html', 1583878371, 1583878371);
INSERT INTO `ad_product` VALUES (163, 9, '供应其他吉丰负压风机设备', '10000元/顶', '诸城市吉丰机械科技有限公司', '15063689888\n/\n0536-6558999', 'http://china.makepolo.com/product-detail/100261149311.html', 1583878371, 1583878371);
INSERT INTO `ad_product` VALUES (164, 9, '厂家特供浙江杭州 义乌中小企业降温水帘墙 水帘降温 负压排风机设备', '500.00元', '义乌市吉昌机电设备有限公司', '13867993304\n/\n0579-85131646', 'http://china.makepolo.com/product-detail/101051202891.html', 1583878371, 1583878371);
INSERT INTO `ad_product` VALUES (165, 9, '小型风机 风扇风机 降温风机 防尘风机设备 玻璃钢负压风机 风机', '2488.00元', '东莞市品顺科技有限公司', '13338838282\n/\n0513-84477983', 'http://china.makepolo.com/product-detail/100275187207.html', 1583878371, 1583878371);
INSERT INTO `ad_product` VALUES (166, 9, '长盈轴流风机 设备用小风机风扇145FZY2-S/G', '45.00元', '乐清市长盈电器有限公司', '13989769495\n/\n0577-83505825', 'http://china.makepolo.com/product-detail/100479067575.html', 1583878371, 1583878371);
INSERT INTO `ad_product` VALUES (167, 9, '偶合器主轴及涡轮 液力偶合器配件 机械配件 风机设备配件', '1元/个', '大连限矩偶合器制造有限公司', '13940944032\n/\n0411-86660569', 'http://china.makepolo.com/product-detail/32728342.html', 1583878371, 1583878371);
INSERT INTO `ad_product` VALUES (168, 9, '厂家直供 DC7015 直流散热风扇 直流风机 设备风扇 量大优惠', '3.20元', '深圳市汇瑞丰电子科技有限公司', '15220206182\n/\n0755-29532602', 'http://china.makepolo.com/product-detail/100810981813.html', 1583878371, 1583878371);
INSERT INTO `ad_product` VALUES (169, 9, '三叶罗茨鼓风机-风机设备', '3600元/件', '章丘纽迈特环保设备有限公司', '18560125169\n/\n0531-83791998', 'http://china.makepolo.com/product-detail/100929483267.html', 1583878372, 1583878372);
INSERT INTO `ad_product` VALUES (170, 9, '370W铁壳 CZRLY80中压低噪音离心式鼓风机 厨用风机 通风设备', '210.00元', '江门市新会区翔威风机设备有限公司', '18929003213\n/\n0750-6328826', 'http://china.makepolo.com/product-detail/100354556767.html', 1583878372, 1583878372);
INSERT INTO `ad_product` VALUES (171, 9, '供应HTF消防排烟风机设备', '2350.00元/台', '德州万维空调设备有限公司', '15806820857\n/\n0534-2327360', 'http://china.makepolo.com/product-detail/101028237605.html', 1583878372, 1583878372);
INSERT INTO `ad_product` VALUES (172, 9, '诱导风机设备', '面议', '德州振兴空调设备有限公司', '15953445600\n/\n-', 'http://china.makepolo.com/product-detail/100990767218.html', 1583878372, 1583878372);
INSERT INTO `ad_product` VALUES (173, 9, 'KCS-410D除尘风机设备', '1元/台', '泰安市鼎鑫矿用设备有限公司销售部', '18653850208\n/\n0538-8530396', 'http://china.makepolo.com/product-detail/101018225795.html', 1583878372, 1583878372);
INSERT INTO `ad_product` VALUES (174, 9, '090C型玻璃钢风机 管道通风防腐阻燃风机设备 高效低噪声风机', '20000元/件', '中山市晴达环保设备有限公司', '17688101405\n/\n0760-85551092', 'http://china.makepolo.com/product-detail/101060109910.html', 1583878372, 1583878372);
INSERT INTO `ad_product` VALUES (175, 9, '虎门餐厅厨房排烟风管，不锈钢排烟管，烟罩，油网，后厨排烟风机设备', '80元/件', '东莞市旭永通风机电设备有限公司', '13826913253\n/\n-', 'http://china.makepolo.com/product-detail/101031985928.html', 1583878372, 1583878372);
INSERT INTO `ad_product` VALUES (176, 9, '厂家直销鸡舍降温水帘 大棚温室 降温风机设备', '1元/平方米', '潍坊中凯润源机械科技有限公司', '15725623667\n/\n400-6165986', 'http://china.makepolo.com/product-detail/101034076227.html', 1583878372, 1583878372);
INSERT INTO `ad_product` VALUES (177, 9, '广州市工业负压风机设备安装/工厂抽风机环保设备/空调设备', '980元/件', '广州风晟环保设备工程有限公司', '15217441800\n/\n-', 'http://china.makepolo.com/product-detail/101061406779.html', 1583878372, 1583878372);
INSERT INTO `ad_product` VALUES (178, 9, '营美除尘风机设备 工业不锈钢离心风机 4-72离心风机', '10元/件', '泊头市营美风机销售处', '15833775448\n/\n-', 'http://china.makepolo.com/product-detail/101059385559.html', 1583878373, 1583878373);
INSERT INTO `ad_product` VALUES (179, 9, '供应BXRZ-70防爆暖风机组矿场专用风机设备', '4000元/台', '山东宇捷通风设备有限公司', '18653418111\n/\n0534-2553177', 'http://china.makepolo.com/product-detail/101057290788.html', 1583878373, 1583878373);
INSERT INTO `ad_product` VALUES (180, 9, '风机设备 养殖业优选', '700.00元', '青州市大正温控设备厂', '15965095441\n/\n0536-3520880', 'http://china.makepolo.com/product-detail/100289330990.html', 1583878373, 1583878373);
INSERT INTO `ad_product` VALUES (181, 9, '厂家供应 9-19 4A 3KW 不锈钢高压离心风机 风机设备', '3250.00元', '上海史密斯实业有限公司', '18806597111\n/\n576-86383677', 'http://china.makepolo.com/product-detail/100710868993.html', 1583878373, 1583878373);
INSERT INTO `ad_product` VALUES (182, 9, '最新脱硫氧化风机批发价格,气化风机,电厂专用风机设备', '5300元/件', '山东华东风机有限公司', '18764078716\n/\n0531-67804861', 'http://china.makepolo.com/product-detail/101032671986.html', 1583878373, 1583878373);
INSERT INTO `ad_product` VALUES (183, 9, '煤矿通风机、隧道通风机、通道风机设备', '12000.00元', '运城市安泰节能风机有限公司', '13327590280\n/\n0359-13152794000', 'http://china.makepolo.com/product-detail/100089193571.html', 1583878373, 1583878373);
INSERT INTO `ad_product` VALUES (184, 9, '2HB310-AH16风机设备 农业专用风机', '199元/台', '上海玺朗机电科技有限公司', '18221956038\n/\n021-31123765', 'http://china.makepolo.com/product-detail/100605811710.html', 1583878373, 1583878373);
INSERT INTO `ad_product` VALUES (185, 9, '斜流风机设备', '面议', '王义（个体经营）', '15053460066\n/\n0534-2232391', 'http://china.makepolo.com/product-detail/100988767083.html', 1583878374, 1583878374);
INSERT INTO `ad_product` VALUES (186, 9, '开展700w升级版电脑吹吸风机、吹灰机，鼓风机，除尘设备', '31.00元', '永康市开展电动工具有限公司', '13735700986\n/\n0579-87192290', 'http://china.makepolo.com/product-detail/100365236681.html', 1583878374, 1583878374);
INSERT INTO `ad_product` VALUES (187, 9, '山东专业厂家长期供应优质风机设备 诱导风机专用风轮 图', '11.00元', '武城县鲁权屯亚美空调设备厂', '13515442185\n/\n0534-2177223', 'http://china.makepolo.com/product-detail/100534542100.html', 1583878374, 1583878374);
INSERT INTO `ad_product` VALUES (188, 9, '轴流风扇 220V 17251风机通风设备', '48.00元', '泉州市丰泽谦亿电子有限公司', '18065280625\n/\n0595-22279990', 'http://china.makepolo.com/product-detail/100351111932.html', 1583878374, 1583878374);
INSERT INTO `ad_product` VALUES (189, 9, '供应厂家直销风机设备用钢丝PU通风软管', '78元/米', '瑞德塑胶软管制品有限公司', '13853458550\n/\n0534-5533778', 'http://china.makepolo.com/product-detail/100744543179.html', 1583878374, 1583878374);
INSERT INTO `ad_product` VALUES (190, 9, '供应PXG-4 型旋涡风机 配套机械风机 中压离心风机 通风设备', '1853.00元', '上海腾唯通风设备有限公司', '15000794968\n/\n021-61140048', 'http://china.makepolo.com/product-detail/100421529784.html', 1583878374, 1583878374);
INSERT INTO `ad_product` VALUES (191, 9, '供应高品质HR-1250C型推拉式负压风机 畜牧风机 养殖降温设备', '1100.00元', '青州海润环境控制装置有限公司', '13475679998\n/\n0536-3520318', 'http://china.makepolo.com/product-detail/100385322146.html', 1583878374, 1583878374);
INSERT INTO `ad_product` VALUES (192, 9, '供应负压风机 风机排风设备 厂房通风降温设备 猪场风机', '1350.00元', '佛山市威诺斯机电设备有限公司', '15899576945\n/\n0757-88049957', 'http://china.makepolo.com/product-detail/100444609930.html', 1583878374, 1583878374);
INSERT INTO `ad_product` VALUES (193, 9, '厦门车间降温风机厂房降温水帘风机设备有限公司', '2800元/台', '厦门浦达兴节能设备有限公司', '18259229199\n/\n0592-3800188', 'http://china.makepolo.com/product-detail/100949937150.html', 1583878374, 1583878374);
INSERT INTO `ad_product` VALUES (194, 9, '风机罩 安平远翔长期供应辽宁风机设备配件', '28元/件', '安平县远翔丝网制品厂', '15833184411\n/\n-', 'http://china.makepolo.com/product-detail/101041467269.html', 1583878375, 1583878375);
INSERT INTO `ad_product` VALUES (195, 9, '风机，离心风机，印刷设备风机，涂装流水线风机', '面议', '上海蒙嘉电子有限公司', '13818185501\n/\n21-60483035/60483031', 'http://china.makepolo.com/product-detail/100515536510.html', 1583878375, 1583878375);
INSERT INTO `ad_product` VALUES (196, 9, '批发各类工业风扇、风机、通风设备', '99.00元', '常州市大海机电有限公司', '13646121255\n/\n0519-88889800', 'http://china.makepolo.com/product-detail/100283655109.html', 1583878375, 1583878375);
INSERT INTO `ad_product` VALUES (197, 9, '超大风量 ！大功率喇叭通风设备供应、厂家直销负压式风机', '3288.00元', '深圳市夏日风科技有限公司', '15050277237\n/\n0512-57873390', 'http://china.makepolo.com/product-detail/100268678176.html', 1583878375, 1583878375);
INSERT INTO `ad_product` VALUES (198, 9, '风机设备配件双扣金属蛇皮管', '面议', '宝鸡福莱通机械有限公司', '15719273597\n/\n0917-2605766', 'http://china.makepolo.com/product-detail/101046384321.html', 1583878375, 1583878375);
INSERT INTO `ad_product` VALUES (199, 9, '提供特供浙江杭州 义乌中小企业降温水帘墙 水帘降温 负压排风机设备', '500.00元', '义乌市吉昌机电设备有限公司', '13867993304\n/\n0579-85131646', 'http://china.makepolo.com/product-detail/101049323099.html', 1583878375, 1583878375);
INSERT INTO `ad_product` VALUES (200, 9, '风机设备报价 市场行情', '10000元/台', '诸城市吉丰机械科技有限公司', '15063689888\n/\n0536-6558999', 'http://china.makepolo.com/product-detail/100260133917.html', 1583878375, 1583878375);
INSERT INTO `ad_product` VALUES (201, 9, '轴流风机设备', '面议', '德州振兴空调设备有限公司', '15953445600\n/\n-', 'http://china.makepolo.com/product-detail/100991143540.html', 1583878375, 1583878375);
INSERT INTO `ad_product` VALUES (202, 9, '080C型玻璃钢离心防腐风机 管道通风防腐阻燃风机设备', '14000元/件', '中山市晴达环保设备有限公司', '17688101405\n/\n0760-85551092', 'http://china.makepolo.com/product-detail/101060109554.html', 1583878376, 1583878376);
INSERT INTO `ad_product` VALUES (203, 10, '甘草粉碎机-超微粉碎机-果壳粉碎机-粉碎设备-粉碎机', '5000.00元', '常州市钱江干燥设备工程有限公司', '13861058898\n/\n0519-88670786', 'http://china.makepolo.com/product-detail/100394893035.html', 1583878376, 1583878376);
INSERT INTO `ad_product` VALUES (204, 10, '家用碎豆饼粉碎机 新型粉碎设备 稻草专用粉碎机', '2286元/件', '曲阜市恒信机械设备销售中心', '18369815679\n/\n0537-4651499', 'http://china.makepolo.com/product-detail/100892631857.html', 1583878376, 1583878376);
INSERT INTO `ad_product` VALUES (205, 10, '特价产品：粉碎机，粉碎设备，20B粉碎机', '11000.00元', '常州市金象干燥设备有限公司', '13906117130\n/\n0519-88909773', 'http://china.makepolo.com/product-detail/100350026000.html', 1583878376, 1583878376);
INSERT INTO `ad_product` VALUES (206, 10, '特价供应涡轮粉碎机/多功能粉碎设备/江阴粉碎机/嵊州粉碎机', '9000元', '上海亿筛机械有限公司', '18049754649\n/\n021-64423600', 'http://china.makepolo.com/product-detail/100167118423.html', 1583878376, 1583878376);
INSERT INTO `ad_product` VALUES (207, 10, '药用粉碎设备 高效不锈钢粉碎机', '6000元/个', '广州市旭朗机械设备工厂', '13533749137\n/\n020-23327056', 'http://china.makepolo.com/product-detail/100139474977.html', 1583878377, 1583878377);
INSERT INTO `ad_product` VALUES (208, 10, '磨粉机.粉碎设备.粉碎机.食品粉碎机', '7000元/个', '广州市旭朗机械设备总公司', '13556053205\n/\n020-23327058', 'http://china.makepolo.com/product-detail/100181743735.html', 1583878377, 1583878377);
INSERT INTO `ad_product` VALUES (209, 10, '供应种香菇木材粉碎设备 香菇料粉碎机 菇木粉碎机', '4500元/台', '郑州浩宇机械设备有限公司', '13526541622\n/\n0371-86003528', 'http://china.makepolo.com/product-detail/100098827196.html', 1583878377, 1583878377);
INSERT INTO `ad_product` VALUES (210, 10, '供应次品回收万能粉碎机-粉碎设备-粉碎机械-不锈钢打粉机', '12500.00元', '常州品正干燥设备有限公司', '13906129418\n/\n0519-88910291/88910391', 'http://china.makepolo.com/product-detail/100450481408.html', 1583878377, 1583878377);
INSERT INTO `ad_product` VALUES (211, 10, '供应吸尘连续粉碎机 高效粉碎设备30B不锈钢白砂糖粉碎机', '14700元/台', '常州市东南干燥设备有限公司', '13584355559\n/\n0519-88902391', 'http://china.makepolo.com/product-detail/100465598578.html', 1583878377, 1583878377);
INSERT INTO `ad_product` VALUES (212, 10, '厂家供应树枝粉碎机 高效树枝粉碎机 大型树枝粉碎设备 粉碎机', '6500.00元', '郑州博杰特机械设备有限公司', '15981876738\n/\n0371-67845563', 'http://china.makepolo.com/product-detail/100375352017.html', 1583878377, 1583878377);
INSERT INTO `ad_product` VALUES (213, 10, '金属粉碎设备 废旧家电粉碎机 铁盒粉碎机', '29000元', '郑州市中原区宏达机械制造厂', '13598875438\n/\n0371-56786677', 'http://china.makepolo.com/product-detail/100177105872.html', 1583878377, 1583878377);
INSERT INTO `ad_product` VALUES (214, 10, '供应塑料再生颗粒机械设备 粉碎机 喂料机 废旧塑料粉碎机', '面议', '江苏涛琦机电设备有限公司', '400-990-8922\n/\n 0 15862272215', 'http://china.makepolo.com/product-detail/100459724024.html', 1583878378, 1583878378);
INSERT INTO `ad_product` VALUES (215, 10, '饲料加工厂专用粉碎设备 豆粕、麸皮粉碎机 猪饲料粉碎机', '12500元/件', '山东双鹤机械制造股份有限公司', '15010592154\n/\n0534-6683777', 'http://china.makepolo.com/product-detail/101041904664.html', 1583878378, 1583878378);
INSERT INTO `ad_product` VALUES (216, 10, '调味品齿盘打碎机-粉碎设备-粉碎机-打粉机', '1180元/台', '山东昌隆节能环保工程有限公司', '15563120618\n/\n0537-4719789', 'http://china.makepolo.com/product-detail/101063738993.html', 1583878378, 1583878378);
INSERT INTO `ad_product` VALUES (217, 10, '供应金格瑞粉碎机65X100，多功能粉碎机，粉碎设备，粉碎机', '面议', '山东金格瑞机械有限公司', '13953126301\n/\n-', 'http://china.makepolo.com/product-detail/100571237465.html', 1583878378, 1583878378);
INSERT INTO `ad_product` VALUES (218, 10, '硅灰石粉碎，水镁石粉碎设备，原煤粉碎机，青石粉碎机', '180000.00元', '河南佰辰机械设备有限公司', '15736798222\n/\n0371-86555711', 'http://china.makepolo.com/product-detail/100806263894.html', 1583878378, 1583878378);
INSERT INTO `ad_product` VALUES (219, 10, '专业提供各类粉碎机 通用粉碎设备 超细磨机 气流粉碎机质量保证', '100000.00元', '绵阳巨子粉体工程设备有限公司', '13778025838\n/\n 816 2547699', 'http://china.makepolo.com/product-detail/100431896438.html', 1583878378, 1583878378);
INSERT INTO `ad_product` VALUES (220, 10, '粉碎设备 粉碎机 破碎机', '1元/件', '山东中煤工矿集团', '18463728400\n/\n400-086-0537', 'http://china.makepolo.com/product-detail/100851450728.html', 1583878378, 1583878378);
INSERT INTO `ad_product` VALUES (221, 10, '供应日照粉碎设备除尘粉碎机，粉碎机械万能除尘粉碎机', '1400.00元', '历城区飞驰机械设备经营部销售部门', '13808928353\n/\n 0531 82319157', 'http://china.makepolo.com/product-detail/100290397045.html', 1583878378, 1583878378);
INSERT INTO `ad_product` VALUES (222, 10, '专业厂家 提供各类粉碎机 粉碎设备 锤式粉碎机 厂家直销', '面议', '潍坊市寒亭区正强机械厂', '13964613977\n/\n536-7588945', 'http://china.makepolo.com/product-detail/100366452483.html', 1583878378, 1583878378);
INSERT INTO `ad_product` VALUES (223, 10, '工程机械粉碎设备粉碎机', '面议', '永州恒丰机械有限公司', '15869978888\n/\n0746-8229288', 'http://china.makepolo.com/product-detail/100243277787.html', 1583878379, 1583878379);
INSERT INTO `ad_product` VALUES (224, 10, '厂家供应新一代金属粉碎机 易拉罐粉碎机 废旧金属粉碎设备', '22000.00元', '巩义市大峪沟新阳机械厂', '18037861168\n/\n0371-86029962', 'http://china.makepolo.com/product-detail/100214451428.html', 1583878379, 1583878379);
INSERT INTO `ad_product` VALUES (225, 10, '大动力粉碎设备双轴撕碎机粉碎机金属破碎机', '27988元/台', '曲阜兴运输送机械设备有限公司', '13165478711\n/\n0537-4556217', 'http://china.makepolo.com/product-detail/101034337591.html', 1583878379, 1583878379);
INSERT INTO `ad_product` VALUES (226, 10, '30B粉碎机 吸尘粉碎机组 粉碎与吸法为一体的新一代粉碎设备', '15000.00元', '常州市恒迈干燥设备有限公司', '15251911777\n/\n0519-88912279', 'http://china.makepolo.com/product-detail/100455106137.html', 1583878379, 1583878379);
INSERT INTO `ad_product` VALUES (227, 10, '化工粉碎设备 粉碎机 设备先进质量佳 十年销量领先', '8000.00元', '鹤山市沙坪和康机械销售中心', '13048166388\n/\n0750-875029-0', 'http://china.makepolo.com/product-detail/100491485603.html', 1583878379, 1583878379);
INSERT INTO `ad_product` VALUES (228, 10, '提供二手饲料粉碎设备 二手万能粉碎机', '100元/件', '梁山县隆兴二手化工设备购销部', '15053770177\n/\n0537-7601886', 'http://china.makepolo.com/product-detail/100732138133.html', 1583878379, 1583878379);
INSERT INTO `ad_product` VALUES (229, 10, '粉碎设备打粉机、化工不锈钢粉碎机', '6000元/台', '广州金本机械设备有限公司', '15899967595\n/\n020-66347219', 'http://china.makepolo.com/product-detail/101019457024.html', 1583878379, 1583878379);
INSERT INTO `ad_product` VALUES (230, 10, '河南华东新型木头粉碎机绿色环保粉碎设备', '11111元/件', '河南省巩义市华东冶矿机械厂', '13607673581\n/\n0371-64564926', 'http://china.makepolo.com/product-detail/100779988121.html', 1583878379, 1583878379);
INSERT INTO `ad_product` VALUES (231, 10, '厂家直销 木材加工粉碎设备（木材粉碎机）', '5000元/台', '郑州市长兴机械设备有限公司', '13460212273\n/\n0371-67859371', 'http://china.makepolo.com/product-detail/100952583858.html', 1583878380, 1583878380);
INSERT INTO `ad_product` VALUES (232, 10, '粉碎设备 塑料粉碎机 香菇菌种专用粉碎机 快达牌粉碎机', '13800.00元', '常州市快达干燥设备有限公司', '18118011505\n/\n0519-81699369', 'http://china.makepolo.com/product-detail/100533850732.html', 1583878380, 1583878380);
INSERT INTO `ad_product` VALUES (233, 10, '塑胶水桶粉碎设备 粉碎机/破碎机/打碎机 清洗运输生产线', '22000元/台', '东莞市赛柯机械有限公司', '13316624973\n/\n0769-82669936', 'http://china.makepolo.com/product-detail/100887786939.html', 1583878380, 1583878380);
INSERT INTO `ad_product` VALUES (234, 10, '超细粉碎机 超微粉碎设备 食品超微粉碎机', '面议', '潍坊正远粉体工程设备有限公司', '15963629458\n/\n0536-8880565', 'http://china.makepolo.com/product-detail/100208460431.html', 1583878380, 1583878380);
INSERT INTO `ad_product` VALUES (235, 10, '厂家直销 湿物料粉碎设备/超微胶体粉碎机/立时胶体磨机粉碎机', '2000.00元', '泉州市洛江区富迪食品技术研发服务中心', '13720853668\n/\n0595-22689169', 'http://china.makepolo.com/product-detail/100359759560.html', 1583878380, 1583878380);
INSERT INTO `ad_product` VALUES (236, 10, '天夏制造 供应粉碎设备 WFJ系列微粉碎机', '10000元', '常州市天夏干燥设备有限公司', '13506122931\n/\n0519-88673778', 'http://china.makepolo.com/product-detail/100167027555.html', 1583878380, 1583878380);
INSERT INTO `ad_product` VALUES (237, 10, '特价供应粉碎机，粉碎设备，30B粉碎机', '13000.00元', '常州市金象干燥设备有限公司', '13906117130\n/\n0519-88909773', 'http://china.makepolo.com/product-detail/100350025502.html', 1583878380, 1583878380);
INSERT INTO `ad_product` VALUES (238, 10, '玉米秸秆粉碎设备宁夏 大豆粉碎机', '860元/台', '曲阜市恒信机械设备销售中心', '18369815679\n/\n0537-4651499', 'http://china.makepolo.com/product-detail/101061583239.html', 1583878380, 1583878380);
INSERT INTO `ad_product` VALUES (239, 10, '供应粮食粉碎设备 小麦粉碎机 玉米粉碎机', '12500元/件', '山东双鹤机械制造股份有限公司', '13793484299\n/\n0534-6683777', 'http://china.makepolo.com/product-detail/101045299274.html', 1583878381, 1583878381);
INSERT INTO `ad_product` VALUES (240, 10, '玉米秸秆粉碎设备重庆 单相电粉碎机', '860元/台', '曲阜市恒信机械设备销售中心', '18369815679\n/\n0537-4651499', 'http://china.makepolo.com/product-detail/101061301474.html', 1583878381, 1583878381);
INSERT INTO `ad_product` VALUES (241, 12, '出售租赁二手制冷设备RTHDD2D2E2特灵螺杆式冷水机水冷螺杆机', '面议', '上海瑞年实业有限公司', '15850382580\n/\n0512-36683338', 'http://china.makepolo.com/product-detail/101066002444.html', 1583878382, 1583878382);
INSERT INTO `ad_product` VALUES (242, 12, '冠信工业冷却塔、圆形冷却塔、冷水塔、制冷设备', '3600.00元', '昆山冠信特种制冷设备有限公司', '15190159322\n/\n512-15051601611', 'http://china.makepolo.com/product-detail/100438898589.html', 1583878382, 1583878382);
INSERT INTO `ad_product` VALUES (243, 12, '5匹谷轮压缩机 制冷设备 冷库设备', '3750.00元', '宁波市江北冰峰制冷设备经营部', '13958213395\n/\n0574-55120302', 'http://china.makepolo.com/product-detail/100045190029.html', 1583878382, 1583878382);
INSERT INTO `ad_product` VALUES (244, 12, 'Daikin/大金JT160BCBY1L制冷压缩机 制冷设备', '1600元/件', '东莞市港汇制冷机电设备有限公司', '13450460020\n/\n0769-83034001', 'http://china.makepolo.com/product-detail/101065556516.html', 1583878382, 1583878382);
INSERT INTO `ad_product` VALUES (245, 12, '大量供应全套制冷设备 全套制冷设备', '10000.00元', '绍兴市凯利制冷通风设备有限公司', '13857574698\n/\n0575-82575237', 'http://china.makepolo.com/product-detail/100451259004.html', 1583878382, 1583878382);
INSERT INTO `ad_product` VALUES (246, 12, '供应香皂设备配套专用低温冷水机制冷机制冷设备', '48000.00元', '汕头市潮南区司马浦紫峰制冷设备厂', '13902718391\n/\n0754-87734988/87727329', 'http://china.makepolo.com/product-detail/100057309417.html', 1583878382, 1583878382);
INSERT INTO `ad_product` VALUES (247, 12, '优质推荐3HP三洋制冷压缩机 大功率压缩机 低温冷冻制冷设备', '900.00元', '佛山市南海区奥营制冷设备经营部', '13928683187\n/\n0757-88717568', 'http://china.makepolo.com/product-detail/100307362291.html', 1583878383, 1583878383);
INSERT INTO `ad_product` VALUES (248, 12, '15HP风冷机组等半封闭压缩机 制冷设备', '10800.00元', '金华市金东区飞龙制冷设备厂', '13957978780\n/\n0579-82818002', 'http://china.makepolo.com/product-detail/100084550747.html', 1583878384, 1583878384);
INSERT INTO `ad_product` VALUES (249, 12, '汉钟低温冷水机 冷库库板制冷设备', '面议', '济南月宫冷冻设备有限公司', '15866631863\n/\n0531-58620577', 'http://china.makepolo.com/product-detail/101053454263.html', 1583878384, 1583878384);
INSERT INTO `ad_product` VALUES (250, 12, '专业生产，工业冷水机，厂家，制冷设备', '4300.00元', '深圳市元钛工业设备有限公司', '18929360242\n/\n0755-27427083', 'http://china.makepolo.com/product-detail/100374132929.html', 1583878384, 1583878384);
INSERT INTO `ad_product` VALUES (251, 12, '厂家提供优质制冷压缩机 家用制冷设备', '面议', '宁波良儿特种制冷设备制造有限公司', '13780089823\n/\n0574-88389098', 'http://china.makepolo.com/product-detail/100404451295.html', 1583878384, 1583878384);
INSERT INTO `ad_product` VALUES (252, 12, '供应物流冷库-冷库设计安装-河南冷库工程建设-郑州豪德制冷设备', '4000元/件', '郑州豪德制冷设备有限公司', '13937125538\n/\n0371-69125398', 'http://china.makepolo.com/product-detail/100471945658.html', 1583878384, 1583878384);
INSERT INTO `ad_product` VALUES (253, 12, '比泽尔半封闭风冷机组 冷风机 冷凝器 冷凝管 制冷设备', '面议', '上海帝亚制冷设备工程有限公司', '18857591602\n/\n000-00000000', 'http://china.makepolo.com/product-detail/100077222050.html', 1583878384, 1583878384);
INSERT INTO `ad_product` VALUES (254, 12, '供应激光冷水机 北京九州同诚AG08 冷却水循环制冷设备', '8500元/台', '北京九州同诚科技有限公司', '13681345273\n/\n010-61506512', 'http://china.makepolo.com/product-detail/100002470409.html', 1583878384, 1583878384);
INSERT INTO `ad_product` VALUES (255, 12, '供应冷风机/蒸发器、冷凝器、压缩机、制冷设备', '面议', '嵊州市奥申制冷设备有限公司', '13754358310\n/\n1375-4358310', 'http://china.makepolo.com/product-detail/100116582277.html', 1583878384, 1583878384);
INSERT INTO `ad_product` VALUES (256, 12, '360HP 防爆型螺杆式工业制冷机组（深创亿制冷设备）', '428000.00元/个', '深圳市深创亿制冷设备有限公司', '13603095933\n/\n0755-29674863', 'http://china.makepolo.com/product-detail/100341056941.html', 1583878385, 1583878385);
INSERT INTO `ad_product` VALUES (257, 12, '冷库厂家/谷轮V型风冷机组/制冷设备/lengk/冷库造价', '10200.00元', '常州市雪洋冷藏设备有限公司', '13914330029\n/\n0519-88795011', 'http://china.makepolo.com/product-detail/100450465314.html', 1583878385, 1583878385);
INSERT INTO `ad_product` VALUES (258, 12, '热销2010新款-锦添制冷设备供应多种制冷设备', '面议', '福州市晋安区锦添制冷设备有限公司', '13055729019\n/\n0591-83270203/83204089', 'http://china.makepolo.com/product-detail/100313117455.html', 1583878385, 1583878385);
INSERT INTO `ad_product` VALUES (259, 12, '湖南衡阳雁峰冷冻设备 半封闭压缩机 6WB30 冷库设备 制冷设备', '面议', '衡阳市雁峰冷冻设备配套服务中心', '13975401919\n/\n0734-8155528', 'http://china.makepolo.com/product-detail/100173990028.html', 1583878385, 1583878385);
INSERT INTO `ad_product` VALUES (260, 12, '3匹一拖二鱼池制冷剂/冷水机组/制冷设备机组/工业冷水机/冷水机', '3000.00元', '广州市越秀宝荣冷冻配件经营部', ' 020 83360689\n/\n 020 81084861', 'http://china.makepolo.com/product-detail/100508446229.html', 1583878386, 1583878386);
INSERT INTO `ad_product` VALUES (261, 12, '箱式冷水机 制冷设备 冷水机组 冷冻机 螺杆冷水机 普立', '8000.00元', '佛山市顺德区勒流镇显高冷冻设备厂', '0757-25635498\n/\n 0757 25635498', 'http://china.makepolo.com/product-detail/100466879349.html', 1583878386, 1583878386);
INSERT INTO `ad_product` VALUES (262, 12, '换热制冷设备优质湿帘水帘 引进国际先进技术高质量的湿帘水帘', '600.00元', '东莞市天明环保节能工程有限公司', '13728119591\n/\n0769-38832878', 'http://china.makepolo.com/product-detail/100285581319.html', 1583878386, 1583878386);
INSERT INTO `ad_product` VALUES (263, 12, '上海知信冷却液低温循环机ZX-LSJ-150封闭型实验室制冷设备', '5600元/台', '上海知信实验仪器技术有限公司', '15601650315\n/\n021-51696996-804', 'http://china.makepolo.com/product-detail/101038925863.html', 1583878386, 1583878386);
INSERT INTO `ad_product` VALUES (264, 12, '香川美 厂家直销供应制冷设备TDEX6TD丹佛斯膨胀阀', '320.00元', '苏州香川美制冷设备有限公司', '18261633272\n/\n0512-57321372', 'http://china.makepolo.com/product-detail/100498637702.html', 1583878386, 1583878386);
INSERT INTO `ad_product` VALUES (265, 12, '专业供应 制冷设备机组 品牌制冷机组 冷库制冷机组价格优惠', '6000.00元', '常州市国林冷藏设备厂', '13775011550\n/\n0519-88792649', 'http://china.makepolo.com/product-detail/100288826892.html', 1583878387, 1583878387);
INSERT INTO `ad_product` VALUES (266, 12, '现货供应3HP韩国进口原装ARNG制冷设备 制冷机组 冷库机组', '9800.00元', '北京大河旭龙贸易有限公司', '18611585338\n/\n010-66513815', 'http://china.makepolo.com/product-detail/100500397705.html', 1583878387, 1583878387);
INSERT INTO `ad_product` VALUES (267, 12, '杭州市海鲜机组制冷设备安装.景观鱼缸.亚克力大型景观鱼缸', '80999.00元', '杭州市下城区冰点制冷设备维修部', '13777457779\n/\n0571-56798398', 'http://china.makepolo.com/product-detail/100309140522.html', 1583878387, 1583878387);
INSERT INTO `ad_product` VALUES (268, 12, '供应水冷冷凝器 压力容器 生产销售制冷设备欢迎合作', '380.00元', '浙江奥星制冷设备有限公司', '15258556561\n/\n575-83666668', 'http://china.makepolo.com/product-detail/100530028135.html', 1583878387, 1583878387);
INSERT INTO `ad_product` VALUES (269, 12, '空气冷却器\\冷风机\\蒸发器\\表冷器\\氟制冷\\制冷设备\\制冷配件', '12000.00元', '嵊州市诺丰电机有限公司', '13806765653\n/\n0575-83666060', 'http://china.makepolo.com/product-detail/100387174485.html', 1583878387, 1583878387);
INSERT INTO `ad_product` VALUES (270, 12, '大型箱式冷水机40P制冷设备冷冻机', '12500元/件', '华德鑫热工业机械（东莞）有限公司', '13829202759\n/\n0769-85640313', 'http://china.makepolo.com/product-detail/101055630743.html', 1583878387, 1583878387);
INSERT INTO `ad_product` VALUES (271, 12, '出售租赁二手制冷设备CVHG670二手特灵离心式冷水机工业水冷机', '面议', '上海瑞年实业有限公司', '15850382580\n/\n0512-36683338', 'http://china.makepolo.com/product-detail/101066023500.html', 1583878388, 1583878388);
INSERT INTO `ad_product` VALUES (272, 12, '冷库制冷机组风冷全套制冷设备', '1600元/件', '东莞市港汇制冷机电设备有限公司', '13450460020\n/\n0769-83034001', 'http://china.makepolo.com/product-detail/101063852919.html', 1583878388, 1583878388);
INSERT INTO `ad_product` VALUES (273, 12, '供应工业冷水机专用化工设备制冷设备', '50000.00元', '汕头市潮南区司马浦紫峰制冷设备厂', '13902718391\n/\n0754-87734988/87727329', 'http://china.makepolo.com/product-detail/100045029016.html', 1583878388, 1583878388);
INSERT INTO `ad_product` VALUES (274, 12, '厂家提供比泽尔冷库机组 风冷凝机组 冷水式压缩机 制冷设备', '4500.00元', '佛山市南海区奥营制冷设备经营部', '13928683187\n/\n0757-88717568', 'http://china.makepolo.com/product-detail/100307993124.html', 1583878388, 1583878388);
INSERT INTO `ad_product` VALUES (275, 12, '厂家提供优质制冷压缩机 机械设备 制冷设备', '面议', '宁波良儿特种制冷设备制造有限公司', '13780089823\n/\n0574-88389098', 'http://china.makepolo.com/product-detail/100412884206.html', 1583878388, 1583878388);
INSERT INTO `ad_product` VALUES (276, 12, '济南工业制冷压缩机 冷冻保鲜制冷设备', '面议', '济南月宫冷冻设备有限公司', '15866631863\n/\n0531-58620577', 'http://china.makepolo.com/product-detail/101060014773.html', 1583878388, 1583878388);
INSERT INTO `ad_product` VALUES (277, 12, '谷轮半封闭风冷机组 冷风机 冷凝器 冷凝管 制冷设备', '面议', '上海帝亚制冷设备工程有限公司', '18857591602\n/\n000-00000000', 'http://china.makepolo.com/product-detail/100077222375.html', 1583878388, 1583878388);
INSERT INTO `ad_product` VALUES (278, 12, '低温冷水机，超低温冷水机，复叠式低温冷水机，深创亿制冷设备', '60000元', '深圳市深创亿制冷设备有限公司', '13603095933\n/\n0755-29674863', 'http://china.makepolo.com/product-detail/100154286115.html', 1583878388, 1583878388);
INSERT INTO `ad_product` VALUES (279, 12, '热销中-机械制冷设备-优质供应商供应多种（2010制冷设备）', '面议', '福州市晋安区锦添制冷设备有限公司', '13055729019\n/\n0591-83270203/83204089', 'http://china.makepolo.com/product-detail/100310615408.html', 1583878389, 1583878389);
INSERT INTO `ad_product` VALUES (280, 12, '厂家直销冷风机/制冷机/冷凝器/散热器/制冷设备/保鲜冷藏设备', '面议', '嵊州市奥申制冷设备有限公司', '13754358310\n/\n1375-4358310', 'http://china.makepolo.com/product-detail/100116172271.html', 1583878389, 1583878389);
INSERT INTO `ad_product` VALUES (281, 13, '过滤分离筛分设备筛分设备', '10000元/台', '宁津县鑫力达机械设备有限公司', '15969765954\n/\n0534-5682828', 'http://china.makepolo.com/product-detail/100601297015.html', 1583878389, 1583878389);
INSERT INTO `ad_product` VALUES (282, 13, '过滤 分离 筛分设备遥控器双推杆模拟量输出功能可定制', '15800元/件', '成都易德莱斯科技有限公司', '19940500542\n/\n028-84215008', 'http://china.makepolo.com/product-detail/101063753308.html', 1583878389, 1583878389);
INSERT INTO `ad_product` VALUES (283, 13, '粮食过滤、分离、筛分设备--hyl-25型谷物筛分机，玉米振动筛', '26000元/件', '新乡市宏源振动设备有限公司', '13223734129\n/\n0373-2677463', 'http://china.makepolo.com/product-detail/100820735997.html', 1583878389, 1583878389);
INSERT INTO `ad_product` VALUES (284, 13, '供应过滤、分离、筛分设备 DZSF系列沙土筛分机', '5500元/台', '宏源振动设备有限公司', '18339546509\n/\n0373-2678390', 'http://china.makepolo.com/product-detail/101020910048.html', 1583878389, 1583878389);
INSERT INTO `ad_product` VALUES (285, 13, '三级过滤器三大优点 过滤、分离、筛分设备', '面议', '山东神华机械制造有限公司', '18553715758\n/\n0537-3151329', 'http://china.makepolo.com/product-detail/100909827164.html', 1583878390, 1583878390);
INSERT INTO `ad_product` VALUES (286, 13, '厂家过滤除沫器，分离筛分设备丝网除沫器，张家口丝网除沫器', '100元/件', '安平县九鑫过滤网业有限公司', '13833888883\n/\n0318-7800015', 'http://china.makepolo.com/product-detail/101052678437.html', 1583878390, 1583878390);
INSERT INTO `ad_product` VALUES (287, 13, '固液分离筛分设 450过滤机30年质造厂家 新乡液体除杂过滤', '4880元/台', '新乡市辰威机械有限公司', '13083801818\n/\n0373-7035908', 'http://china.makepolo.com/product-detail/101065508245.html', 1583878390, 1583878390);
INSERT INTO `ad_product` VALUES (288, 13, '特价上海低价筛分设备/筛选设备/过滤设备/分级设备', '5000.00元', '上海亿筛机械有限公司', '18049754649\n/\n021-64423600', 'http://china.makepolo.com/product-detail/100190469990.html', 1583878390, 1583878390);
INSERT INTO `ad_product` VALUES (289, 13, '塑料颗粒用双电机直排筛粉机 明洋直排筛分设备', '7800.00元', '新乡市明洋筛分机械有限公司', '15903033385\n/\n0373-5755777', 'http://china.makepolo.com/product-detail/100324891335.html', 1583878390, 1583878390);
INSERT INTO `ad_product` VALUES (290, 13, '食品调料 果汁多用振动筛 筛分过滤分离多功能旋振筛圆形振动筛', '1000元/件', '新乡市鹏鼎机械设备有限公司', '13525011399\n/\n-', 'http://china.makepolo.com/product-detail/101064799000.html', 1583878390, 1583878390);
INSERT INTO `ad_product` VALUES (291, 13, '壤土振动筛 过筛壤土里的粉粒、砂粒-壤土筛分过滤分离机械', '5300.00元', '新乡市东升环保设备有限公司', '18937367711\n/\n-', 'http://china.makepolo.com/product-detail/100620242926.html', 1583878390, 1583878390);
INSERT INTO `ad_product` VALUES (292, 13, '天龙牌旋振筛，振动筛，筛分设备，分离设备', '面议', '河南天龙机械制造有限公司(销售部)', '13569873228\n/\n 0373 3350555', 'http://china.makepolo.com/product-detail/100119446228.html', 1583878391, 1583878391);
INSERT INTO `ad_product` VALUES (293, 13, '矿石筛分装置 旋转筛分斗 水砂过滤 沙石分离 滚筒筛分斗', '16880元/个', '山东松川工程机械有限公司', '13355126961\n/\n-', 'http://china.makepolo.com/product-detail/101059581124.html', 1583878391, 1583878391);
INSERT INTO `ad_product` VALUES (294, 13, '供应小型滚筒筛 GS1230滚筒筛 石料场滚筒筛 沙石场筛分设备', '面议', '河南科帆矿山设备有限公司', '13937155063\n/\n371-87087999', 'http://china.makepolo.com/product-detail/100357518038.html', 1583878391, 1583878391);
INSERT INTO `ad_product` VALUES (295, 13, '轻质碳酸钙专用筛分设备三元旋振筛新乡振威厂价直销', '9500.00元', '新乡市振威筛分机械有限公司', '13623906771\n/\n0373-5726998', 'http://china.makepolo.com/product-detail/100332028146.html', 1583878391, 1583878391);
INSERT INTO `ad_product` VALUES (296, 13, '新乡世华厂家供应加缘式过滤筛 专用固液分离高效筛分机 供应全国', '7000元/台', '新乡市世华振动机械有限公司', '13949620946\n/\n0373-2685760', 'http://china.makepolo.com/product-detail/101024144083.html', 1583878391, 1583878391);
INSERT INTO `ad_product` VALUES (297, 13, '振动分离筛分振动筛', '10000.00元', '新乡市汇鑫矿山设备有限公司', '13839081599\n/\n0373-2628072', 'http://china.makepolo.com/product-detail/100260886926.html', 1583878391, 1583878391);
INSERT INTO `ad_product` VALUES (298, 13, '肥料筛分设备 固液分离振动筛  树脂粉直排筛', '10000元/件', '新乡市恒宇机械设备有限公司', '15937327517\n/\n0373-5712316', 'http://china.makepolo.com/product-detail/100745629817.html', 1583878391, 1583878391);
INSERT INTO `ad_product` VALUES (299, 13, '涂料筛分设备_专用加缘筛_过滤分离筛机', '1000元/台', '新乡市锐成机械设备有限公司', '13462348443\n/\n0373-5058600', 'http://china.makepolo.com/product-detail/100754319362.html', 1583878391, 1583878391);
INSERT INTO `ad_product` VALUES (300, 13, '转让二手过滤几 二手分离机 离心机设备  二手筛分设备', '10000元/台', '梁山县浩运二手化工设备经营部', '13615479600\n/\n0136-1547960', 'http://china.makepolo.com/product-detail/101046918979.html', 1583878391, 1583878391);
INSERT INTO `ad_product` VALUES (301, 13, 'VIP批发供应高岭土筛分设备 振动筛 筛选设备 直线振动筛', '22000.00元', '新乡市德重机械有限公司', '15837386795\n/\n 0373 5077026', 'http://china.makepolo.com/product-detail/100222133807.html', 1583878392, 1583878392);
INSERT INTO `ad_product` VALUES (302, 13, '碎米分离振动筛  花生抽风式大小分级筛分机 五谷杂粮过滤除杂机', '1000元/台', '济宁市丰瑞机械有限公司', '15345377639\n/\n0537-3650334', 'http://china.makepolo.com/product-detail/101036321128.html', 1583878392, 1583878392);
INSERT INTO `ad_product` VALUES (303, 13, '厂家不锈钢液体筛分机 固液分离电筛机 振动筛机豆浆果汁过滤', '5500元/台', '新乡市大用振动设备有限公司', '15637336530\n/\n-', 'http://china.makepolo.com/product-detail/101056119453.html', 1583878392, 1583878392);
INSERT INTO `ad_product` VALUES (304, 13, '厂家直销小型直线振动筛 振动筛选机 高效直线筛 筛分分离设备', '8000元/台', '郑州中厚机械设备有限公司', '15639271888\n/\n0371-56733555', 'http://china.makepolo.com/product-detail/101059339098.html', 1583878392, 1583878392);
INSERT INTO `ad_product` VALUES (305, 13, 'Finex22筛分机高速过滤树脂干湿分离振动筛', '200000元/件', '拉塞尔工业设备（上海）有限公司', '18621517678\n/\n021-64264030', 'http://china.makepolo.com/product-detail/101040324068.html', 1583878392, 1583878392);
INSERT INTO `ad_product` VALUES (306, 13, '淀粉专用振动筛 圆形筛分设备，圆振动筛', '12000元/台', '新乡市未来振动设备有限公司', '13333738691\n/\n-', 'http://china.makepolo.com/product-detail/101062243768.html', 1583878392, 1583878392);
INSERT INTO `ad_product` VALUES (307, 13, '筛分设备/旋振筛', '6500元/台', '新乡市共成振动设备有限公司', '13525008219\n/\n0373-2513806', 'http://china.makepolo.com/product-detail/32509745.html', 1583878392, 1583878392);
INSERT INTO `ad_product` VALUES (308, 13, '农业粮食过滤、分离、筛分设备-hyl-25型谷物筛分机，玉米振动筛', '26000元/件', '新乡市宏源振动设备有限公司', '13223734129\n/\n0373-2677463', 'http://china.makepolo.com/product-detail/100822078946.html', 1583878394, 1583878394);
INSERT INTO `ad_product` VALUES (309, 13, '玉米中杂质过滤、分离、筛分设备 多功能清粮机', '8000元/台', '宏源振动设备有限公司', '18339546509\n/\n0373-2678390', 'http://china.makepolo.com/product-detail/101018398312.html', 1583878394, 1583878394);
INSERT INTO `ad_product` VALUES (310, 13, '过滤、分离、筛分设备筛沙机选矿设备', '10000元/台', '宁津县鑫力达机械设备有限公司', '15969765954\n/\n0534-5682828', 'http://china.makepolo.com/product-detail/100771195606.html', 1583878394, 1583878394);
INSERT INTO `ad_product` VALUES (311, 13, '滤尘过滤器产品特点 过滤、分离、筛分设备', '面议', '山东神华机械制造有限公司', '18553715758\n/\n0537-3151329', 'http://china.makepolo.com/product-detail/100909828929.html', 1583878395, 1583878395);
INSERT INTO `ad_product` VALUES (312, 13, '热销过滤除沫器，分离筛分设备丝网除沫器，张家口丝网除沫器', '100元/件', '安平县九鑫过滤网业有限公司', '13833888883\n/\n0318-7800015', 'http://china.makepolo.com/product-detail/101050025184.html', 1583878395, 1583878395);
INSERT INTO `ad_product` VALUES (313, 13, '特价筛选设备、筛分设备、分级机械,旋振筛-筛分行业的优选', '5000元', '上海亿筛机械有限公司', '18049754649\n/\n021-64423600', 'http://china.makepolo.com/product-detail/100193323879.html', 1583878395, 1583878395);
INSERT INTO `ad_product` VALUES (314, 13, '陶瓷浆液筛分设备_专用加缘筛_过滤分离筛机', '1000元/台', '新乡市锐成机械设备有限公司', '13462348443\n/\n0373-5058600', 'http://china.makepolo.com/product-detail/100754319093.html', 1583878395, 1583878395);
INSERT INTO `ad_product` VALUES (315, 13, '提供不锈钢液体筛分机 固液分离电筛机 振动筛机豆浆果汁过滤', '5500元/台', '新乡市大用振动设备有限公司', '15637336530\n/\n-', 'http://china.makepolo.com/product-detail/101053213407.html', 1583878395, 1583878395);
INSERT INTO `ad_product` VALUES (316, 13, '铝灰筛分机 铝灰滚筒筛滚筒筛分机铝灰铜灰分离设备', '37000元/台', '郑州中厚机械设备有限公司', '15639271888\n/\n0371-56733555', 'http://china.makepolo.com/product-detail/101059049922.html', 1583878395, 1583878395);
INSERT INTO `ad_product` VALUES (317, 13, '供应食品调味剂旋振筛 多层振动筛分 过滤 分离筛分设备', '1元/台', '宏源振动设备有限公司', '18339546509\n/\n0373-2678390', 'http://china.makepolo.com/product-detail/100940054471.html', 1583878395, 1583878395);
INSERT INTO `ad_product` VALUES (318, 13, '振动筛 亚麻籽筛分设备 振动过滤亚麻籽颗粒 大小分离筛', '4500元/台', '新乡市宏源振动设备有限公司', '13569833759\n/\n0373-2610868', 'http://china.makepolo.com/product-detail/100910976935.html', 1583878395, 1583878395);
INSERT INTO `ad_product` VALUES (319, 13, '过滤矿石粉筛子 精度高筛分效果好 多层粗细大小自动过滤分离', '3800元/台', '新乡市宏源振动设备有限公司', '13938732295\n/\n0373-2677972', 'http://china.makepolo.com/product-detail/101052656217.html', 1583878395, 1583878395);
INSERT INTO `ad_product` VALUES (320, 13, '黄豆尘土秸秆分离筛/黄玉米瘪籽、虫蛀筛分振动筛', '7800元/件', '新乡市宏源振动设备有限公司', '18303650763\n/\n0373-7052850', 'http://china.makepolo.com/product-detail/100852523631.html', 1583878396, 1583878396);
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
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='搜索日志';

-- ----------------------------
-- Table structure for ad_system
-- ----------------------------
DROP TABLE IF EXISTS `ad_system`;
CREATE TABLE `ad_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '名称',
  `content` char(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '值',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态1启用，2禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `title` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='系统设置';

-- ----------------------------
-- Records of ad_system
-- ----------------------------
BEGIN;
INSERT INTO `ad_system` VALUES (52, 'sitename', 'LuiciCms', 1, 1578330394, 1578330394);
INSERT INTO `ad_system` VALUES (53, 'domain', 'http://luicicms.kevinfei.com/welcome/index', 1, 1578330394, 1578330394);
INSERT INTO `ad_system` VALUES (54, 'cache', '|png|gif|jpg|jpeg|zip|rar|', 1, 1578330394, 1578330394);
INSERT INTO `ad_system` VALUES (55, 'title', 'LuiciCms 简洁易用后台管理系统', 1, 1578330394, 1578330394);
INSERT INTO `ad_system` VALUES (56, 'keywords', 'LuiciCms、快速搭建 、高效 、简洁 、小巧的后台内容管理系统', 1, 1578330394, 1578330394);
INSERT INTO `ad_system` VALUES (57, 'descript', 'LuiciCms、快速搭建 、高效 、简洁 、小巧的后台内容管理系统', 1, 1578330394, 1578330394);
INSERT INTO `ad_system` VALUES (58, 'copyright', '© 2020 luicicms.kevinfei.com MIT LICENSE', 1, 1578330394, 1578330394);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='会员';

-- ----------------------------
-- Records of ad_user
-- ----------------------------
BEGIN;
INSERT INTO `ad_user` VALUES (1, 'lejRej', '13800138000', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 1, 1539134525, '127.0.0.1', 1, 1539134389, 1539134525);
INSERT INTO `ad_user` VALUES (2, 'jingfei', '13681406358', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 1, 1539134525, '127.0.0.1', 3, 1539134389, 1539134389);
INSERT INTO `ad_user` VALUES (3, 'kevinfei', '13800138000', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 1, 1539134525, '127.0.0.1', 5, 1539134389, 1539134389);
INSERT INTO `ad_user` VALUES (4, 'sdHag', '13800138000', '96e79218965eb72c92a549dd5a330112', 0, 10, 1, 1539134525, '127.0.0.1', 76, 1539134389, 1580962538);
INSERT INTO `ad_user` VALUES (5, 'zhaNv', '13800138000', '96e79218965eb72c92a549dd5a330112', 0, 1111, 1, 0, '', 0, 1580899506, 1581028230);
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
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员日志';

SET FOREIGN_KEY_CHECKS = 1;

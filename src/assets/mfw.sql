#SET NAMES UTF8;
#DROP DATABASE IF EXISTS mfw;
#CREATE DATABASE mfw CHARSET=UTF8;
#USE mfw;
CREATE TABLE user(
   id mediumint(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
   phone varchar(11) UNIQUE,
   username varchar(11) NOT NULL,
   password varchar(32)	NOT NULL,
   photo varchar(50) NOT NULL DEFAULT 'unnamed.jpg'
 );
INSERT INTO user(id,phone,username,password) VALUES (NULL,'17611439751','TianYuZhe',MD5(123456789));
INSERT INTO user(id,phone,username,password) VALUES (NULL,'13776418722','WangYu',MD5(123456789));
INSERT INTO user(id,phone,username,password,photo) VALUES (NULL,'18068101070','FengTianYao',MD5(123456789),'031befe5af98b80a801216045223f9b.jpg');
INSERT INTO user(id,phone,username,password) VALUES (NULL,'15195968279','GuJiaWei',MD5(123456789));
-- 创建目的地表
CREATE TABLE find(
   fid mediumint(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
   city varchar(10) UNIQUE NOT NULL,
   cityphoto varchar(50) NOT NULL
);
-- 插入数据
INSERT INTO find(fid,city,cityphoto) VALUES (NULL,'北京','beijin.jpg');
INSERT INTO find(fid,city,cityphoto) VALUES (NULL,'三亚','sanya.jpg');
INSERT INTO find(fid,city,cityphoto) VALUES (NULL,'厦门','xiamen.jpg');
INSERT INTO find(fid,city,cityphoto) VALUES (NULL,'上海','shanghai.jpg');
INSERT INTO find(fid,city,cityphoto) VALUES (NULL,'成都','chengdu.jpg');
INSERT INTO find(fid,city,cityphoto) VALUES (NULL,'丽江','lijiang.jpg');


-- 创建职位表
CREATE TABLE job(
  jid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  jtype varchar(6) NOT NULL UNIQUE,
  jnumber INT 
);
-- 插入数据
INSERT INTO job VALUES(1,'技术类','28');
INSERT INTO job VALUES(2,'运营类','27');
INSERT INTO job VALUES(3,'职能类','13');
INSERT INTO job VALUES(5,'产品类','11');
INSERT INTO job VALUES(6,'销售类','13');
INSERT INTO job VALUES(7,'贵州岗位','6');
INSERT INTO job VALUES(8,'市场类','3');
INSERT INTO job VALUES(9,'实习类','2');
INSERT INTO job VALUES(10,'其它','8');
-- 创建文章表
-- DROP TABLE IF EXISTS `mfw_article`;
CREATE TABLE mfw_article (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID,主键且自增',
  `subject` varchar(50) NOT NULL COMMENT '文章标题',
  `description` varchar(255) NOT NULL COMMENT '文章简介',
  `content` mediumtext NOT NULL COMMENT '文章正文',
  `image` varchar(50) DEFAULT NULL COMMENT '文章缩略像',
  `created_at` int(10) unsigned NOT NULL COMMENT '发表日期',
  `nickname` varchar(30) DEFAULT NULL,
  `avatar` varchar(50) NOT NULL DEFAULT 'unnamed.jpg' COMMENT '用户头像',
  PRIMARY KEY (`id`)
) ;
-- ENGINE=InnoDB AUTO_INCREMENT=1107 DEFAULT CHARSET=utf8;
INSERT INTO mfw_article (`id`, `subject`, `description`, `content`, `image`, `created_at`,`nickname`,`avatar`) VALUES (1,' 哈瓦那 | 地球另一端，咖啡香与烟草味 ',' 该说说古巴了🇨🇺6月12号那天，整个朋友圈因为我大杰伦儿的新歌Mojito又热闹了一把。',' 该说说古巴了🇨🇺6月12号那天，整个朋友圈因为我大杰伦儿的新歌Mojito又热闹了一把。作为从周董出道就开始每首歌每盘专辑不落下的铁杆“夕阳红”粉丝，不管好不好听，花三块钱买首歌还是不为难的～不，肯定好听，必定好听，我大杰伦儿的歌怎么会不好 ','CoUBXl-lb5WAZKXeAA8s5Q-lSM8548.png','2020-02-24','Cecilia Z','CoUBGV4MP5WACSnMAAC7wW7f_E815.jpeg');
INSERT INTO mfw_article (`id`, `subject`, `description`, `content`, `image`, `created_at`,`nickname`,`avatar`) VALUES (2,'路痴独闯魔幻重庆：我果然是被选中的孩子',' 即便洪水，也冲不走我要去重庆浪的心据说。',' 即便洪水，也冲不走我要去重庆浪的心据说，一个人去旅行是人生中一定要尝试的一环。机缘巧合下，我踏上了这次独自去重庆的旅程。自小有明确的路痴属性，小时候出门认路靠朋友，长大后所幸地图软件非常发达，找路靠百度。但8D魔幻重庆的名声实在太响亮 ','CoUBXl-9F4KAWRNKAATDc7cddoc430.png','2020-11-15','超级Lynn','CoUBGV4MP5WACSnMAAC7wW7f_E815.jpeg');
INSERT INTO mfw_article (`id`, `subject`, `description`, `content`, `image`, `created_at`,`nickname`,`avatar`) VALUES (3,' 哈瓦那 | 地球另一端，咖啡香与烟草味 ',' 该说说古巴了🇨🇺6月12号那天，整个朋友圈因为我大杰伦儿的新歌Mojito又热闹了一把。',' 该说说古巴了🇨🇺6月12号那天，整个朋友圈因为我大杰伦儿的新歌Mojito又热闹了一把。作为从周董出道就开始每首歌每盘专辑不落下的铁杆“夕阳红”粉丝，不管好不好听，花三块钱买首歌还是不为难的～不，肯定好听，必定好听，我大杰伦儿的歌怎么会不好 ','CoUBXl-lb5WAZKXeAA8s5Q-lSM8548.png','2020-02-24','Cecilia Z','CoUBGV4MP5WACSnMAAC7wW7f_E815.jpeg');
INSERT INTO mfw_article (`id`, `subject`, `description`, `content`, `image`, `created_at`,`nickname`,`avatar`) VALUES (4,'路痴独闯魔幻重庆：我果然是被选中的孩子',' 即便洪水，也冲不走我要去重庆浪的心据说。',' 即便洪水，也冲不走我要去重庆浪的心据说，一个人去旅行是人生中一定要尝试的一环。机缘巧合下，我踏上了这次独自去重庆的旅程。自小有明确的路痴属性，小时候出门认路靠朋友，长大后所幸地图软件非常发达，找路靠百度。但8D魔幻重庆的名声实在太响亮 ','CoUBXl-9F4KAWRNKAATDc7cddoc430.png','2020-11-15','超级Lynn','CoUBGV4MP5WACSnMAAC7wW7f_E815.jpeg');
INSERT INTO mfw_article (`id`, `subject`, `description`, `content`, `image`, `created_at`,`nickname`,`avatar`) VALUES (5,' 哈瓦那 | 地球另一端，咖啡香与烟草味 ',' 该说说古巴了🇨🇺6月12号那天，整个朋友圈因为我大杰伦儿的新歌Mojito又热闹了一把。',' 该说说古巴了🇨🇺6月12号那天，整个朋友圈因为我大杰伦儿的新歌Mojito又热闹了一把。作为从周董出道就开始每首歌每盘专辑不落下的铁杆“夕阳红”粉丝，不管好不好听，花三块钱买首歌还是不为难的～不，肯定好听，必定好听，我大杰伦儿的歌怎么会不好 ','CoUBXl-lb5WAZKXeAA8s5Q-lSM8548.png','2020-02-24','Cecilia Z','CoUBGV4MP5WACSnMAAC7wW7f_E815.jpeg');
INSERT INTO mfw_article (`id`, `subject`, `description`, `content`, `image`, `created_at`,`nickname`,`avatar`) VALUES (6,'路痴独闯魔幻重庆：我果然是被选中的孩子',' 即便洪水，也冲不走我要去重庆浪的心据说。',' 即便洪水，也冲不走我要去重庆浪的心据说，一个人去旅行是人生中一定要尝试的一环。机缘巧合下，我踏上了这次独自去重庆的旅程。自小有明确的路痴属性，小时候出门认路靠朋友，长大后所幸地图软件非常发达，找路靠百度。但8D魔幻重庆的名声实在太响亮 ','CoUBXl-9F4KAWRNKAATDc7cddoc430.png','2020-11-15','超级Lynn','CoUBGV4MP5WACSnMAAC7wW7f_E815.jpeg');
INSERT INTO mfw_article (`id`, `subject`, `description`, `content`, `image`, `created_at`,`nickname`,`avatar`) VALUES (7,' 哈瓦那 | 地球另一端，咖啡香与烟草味 ',' 该说说古巴了🇨🇺6月12号那天，整个朋友圈因为我大杰伦儿的新歌Mojito又热闹了一把。',' 该说说古巴了🇨🇺6月12号那天，整个朋友圈因为我大杰伦儿的新歌Mojito又热闹了一把。作为从周董出道就开始每首歌每盘专辑不落下的铁杆“夕阳红”粉丝，不管好不好听，花三块钱买首歌还是不为难的～不，肯定好听，必定好听，我大杰伦儿的歌怎么会不好 ','CoUBXl-lb5WAZKXeAA8s5Q-lSM8548.png','2020-02-24','Cecilia Z','CoUBGV4MP5WACSnMAAC7wW7f_E815.jpeg');
INSERT INTO mfw_article (`id`, `subject`, `description`, `content`, `image`, `created_at`,`nickname`,`avatar`) VALUES (8,'路痴独闯魔幻重庆：我果然是被选中的孩子',' 即便洪水，也冲不走我要去重庆浪的心据说。',' 即便洪水，也冲不走我要去重庆浪的心据说，一个人去旅行是人生中一定要尝试的一环。机缘巧合下，我踏上了这次独自去重庆的旅程。自小有明确的路痴属性，小时候出门认路靠朋友，长大后所幸地图软件非常发达，找路靠百度。但8D魔幻重庆的名声实在太响亮 ','CoUBXl-9F4KAWRNKAATDc7cddoc430.png','2020-11-15','超级Lynn','CoUBGV4MP5WACSnMAAC7wW7f_E815.jpeg');
INSERT INTO mfw_article (`id`, `subject`, `description`, `content`, `image`, `created_at`,`nickname`,`avatar`) VALUES (9,' 哈瓦那 | 地球另一端，咖啡香与烟草味 ',' 该说说古巴了🇨🇺6月12号那天，整个朋友圈因为我大杰伦儿的新歌Mojito又热闹了一把。',' 该说说古巴了🇨🇺6月12号那天，整个朋友圈因为我大杰伦儿的新歌Mojito又热闹了一把。作为从周董出道就开始每首歌每盘专辑不落下的铁杆“夕阳红”粉丝，不管好不好听，花三块钱买首歌还是不为难的～不，肯定好听，必定好听，我大杰伦儿的歌怎么会不好 ','CoUBXl-lb5WAZKXeAA8s5Q-lSM8548.png','2020-02-24','Cecilia Z','CoUBGV4MP5WACSnMAAC7wW7f_E815.jpeg');
INSERT INTO mfw_article (`id`, `subject`, `description`, `content`, `image`, `created_at`,`nickname`,`avatar`) VALUES (10,'路痴独闯魔幻重庆：我果然是被选中的孩子',' 即便洪水，也冲不走我要去重庆浪的心据说。',' 即便洪水，也冲不走我要去重庆浪的心据说，一个人去旅行是人生中一定要尝试的一环。机缘巧合下，我踏上了这次独自去重庆的旅程。自小有明确的路痴属性，小时候出门认路靠朋友，长大后所幸地图软件非常发达，找路靠百度。但8D魔幻重庆的名声实在太响亮 ','CoUBXl-9F4KAWRNKAATDc7cddoc430.png','2020-11-15','超级Lynn','CoUBGV4MP5WACSnMAAC7wW7f_E815.jpeg');
INSERT INTO mfw_article (`id`, `subject`, `description`, `content`, `image`, `created_at`,`nickname`,`avatar`) VALUES (11,' 哈瓦那 | 地球另一端，咖啡香与烟草味 ',' 该说说古巴了🇨🇺6月12号那天，整个朋友圈因为我大杰伦儿的新歌Mojito又热闹了一把。',' 该说说古巴了🇨🇺6月12号那天，整个朋友圈因为我大杰伦儿的新歌Mojito又热闹了一把。作为从周董出道就开始每首歌每盘专辑不落下的铁杆“夕阳红”粉丝，不管好不好听，花三块钱买首歌还是不为难的～不，肯定好听，必定好听，我大杰伦儿的歌怎么会不好 ','CoUBXl-lb5WAZKXeAA8s5Q-lSM8548.png','2020-02-24','Cecilia Z','CoUBGV4MP5WACSnMAAC7wW7f_E815.jpeg');
INSERT INTO mfw_article (`id`, `subject`, `description`, `content`, `image`, `created_at`,`nickname`,`avatar`) VALUES (12,'路痴独闯魔幻重庆：我果然是被选中的孩子',' 即便洪水，也冲不走我要去重庆浪的心据说。',' 即便洪水，也冲不走我要去重庆浪的心据说，一个人去旅行是人生中一定要尝试的一环。机缘巧合下，我踏上了这次独自去重庆的旅程。自小有明确的路痴属性，小时候出门认路靠朋友，长大后所幸地图软件非常发达，找路靠百度。但8D魔幻重庆的名声实在太响亮 ','CoUBXl-9F4KAWRNKAATDc7cddoc430.png','2020-11-15','超级Lynn','CoUBGV4MP5WACSnMAAC7wW7f_E815.jpeg');

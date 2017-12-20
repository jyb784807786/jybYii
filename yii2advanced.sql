/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : yii2advanced

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-12-20 16:00:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `imgUrl` varchar(255) DEFAULT NULL COMMENT '文章缩略图',
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `content` text,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '10' COMMENT '0-删除 10-显示 20-隐藏',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', 'Yii2搭建后台并实现rbac权限控制完整实例教程', null, null, '<p>1、安装yii2\r\n未安装的请参考yii2史上最简单式安装教程，没有之一\r\n已安装的请继续看下一步操作\r\n2、配置数据库\r\n2.1 配置数据库\r\n修改common/config/main-local.php 实际项目中本地的数据库往往跟线上数据库不一致，\r\n我们这里配置到main-local.php就可以了，产品上线后，我们可以使用git或者svn忽略掉main-local.php，线上直接部署。\r\n我们这里使用的mysql数据库，配置如下</p>', '1494990623', '1494990623', '1');
INSERT INTO `article` VALUES ('2', '我要飞得更高', null, null, '<p>飞得更高，狂风一样呼啸，挣脱怀抱</p>', '1494990653', '1494990653', null);
INSERT INTO `article` VALUES ('3', '特朗普抵达意大利 将赴梵蒂冈与教皇会见', null, null, '<h2 style=\"margin: 0px; padding: 0px; font-size: 18px; font-weight: normal; position: relative; z-index: 0; width: 335px;\"><a href=\"http://cnews.chinadaily.com.cn/2017-02/08/content_28134730.htm\" title=\"龙珠超最终boss竟是全王悟空该怎样与他交手\" target=\"_blank\" data-title=\"龙珠超最终boss竟是全王悟空该怎样与他交手\" data-link=\"http://cnews.chinadaily.com.cn/2017-02/08/content_28134730.htm\" data-click=\"LOG_LINK\" class=\"s-title-yahei\" style=\"text-decoration-line: none; outline: none; color: rgb(51, 51, 51); display: inline-block; zoom: 1; vertical-align: middle; font-weight: bold; line-height: 24px; font-family: arial, &quot;Microsoft Yahei&quot;, 微软雅黑;\">龙珠超最终boss竟是全王悟空该怎样与他交手</a></h2><p><span class=\"src-net\" style=\"outline: none; margin-right: 6px;\"><a href=\"http://cnews.chinadaily.com.cn/\" target=\"_blank\" data-src=\"1\" data-click=\"LOG_LINK\" style=\"text-decoration-line: none; outline: none; color: rgba(0, 0, 0, 0.4);\">中国日报网&nbsp;</a></span></p>', '1495615716', '1495615716', '10');
INSERT INTO `article` VALUES ('4', ' js查看Object对象的内容', null, null, '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">假设将对象赋给test，此时test是也是对象。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">var test = object;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">一、查看对象内容(一级对象)。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">for(i in test ){<br/>&nbsp; alert(i);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //获得属性&nbsp;<br/>&nbsp; alert(test[i]);&nbsp; //获得属性值</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">}</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">二、查看对象里的对象(二级及以上)</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">for(i in test ){<br/>&nbsp; alert(i);<br/>&nbsp; alert(test[i].toSource());</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">}</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">附：</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">使用<a href=\"http://lib.csdn.net/base/javascript\" class=\"replace_word\" title=\"JavaScript知识库\" target=\"_blank\" style=\"color: rgb(223, 52, 52); text-decoration-line: none; font-weight: bold;\">js</a>的 for...in语句 &nbsp;&nbsp;<br/>--不知属性个数时,用于对某个对象的所以属性进行循环操作,返回字符串形式的属性名;获取属性值方式: p1[temp] ;<br/>&nbsp; 跟<a href=\"http://lib.csdn.net/base/java\" class=\"replace_word\" title=\"Java 知识库\" target=\"_blank\" style=\"color: rgb(223, 52, 52); text-decoration-line: none; font-weight: bold;\">Java</a>的for(Student stu:students){...}很像;<br/>&nbsp; &nbsp;&nbsp;<br/>&nbsp; 语法: for(临时变量 in 对象实例名){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ...<br/>&nbsp; }<br/>&nbsp; &nbsp;&nbsp;<br/>&nbsp; function Person(){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; this.name=&quot;bai&quot;;&nbsp;&nbsp;<br/>&nbsp; &nbsp; &nbsp; this.age=19;&nbsp;&nbsp;<br/>&nbsp; &nbsp; &nbsp; this.height=175;<br/>&nbsp; }</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/>&nbsp; var p1= new Person();<br/>&nbsp; var temp,p1Str=&quot;&quot;;<br/>&nbsp; for(temp in p1){<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; alert(typeof temp); //是字符串<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; alert(p1[temp]);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; p1Str=p1Str+temp+&quot; -- &quot;<br/>&nbsp; }<br/>&nbsp; alert(p1Str); //返回&quot;name -- age -- height&quot;</p><p><br/></p>', '1970', '1500952554', '10');
INSERT INTO `article` VALUES ('5', '半年被击杀65亿次，原来他才是王者荣耀第一坑', null, null, '<p style=\"text-align: left;\"><img src=\"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=282577422,3338315810&fm=173&s=A02549B4606AB91FD224CDBB030090A2&w=550&h=361&img.JPEG\" style=\"border: 0px; width: 537px;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: left; font-family: arial; white-space: normal;\">No.5 安琪拉 &nbsp;38.54亿次</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: left; font-family: arial; white-space: normal;\">安琪拉可以说是妹子最为喜欢的英雄,也是除妲己外获取最为简单的法师英雄,新手号只需要签到7天即可免费领取。厉害的安琪拉即使在王者段位也可以carry队伍,只是当她成为我方队友的时候,总感觉被某种神秘力量吸引,不断喂养对方的中单。甩空全部技能后等死,安琪拉以38.54亿次的阵亡数排在第五位。</p><p style=\"text-align: left;\"><img src=\"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=2524593473,395374144&fm=173&s=B78DC6A6D6F12F8EE43B0DAF0300A01A&w=600&h=375&img.JPEG\" style=\"border: 0px; width: 537px;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: left; font-family: arial; white-space: normal;\">No.4 亚瑟 &nbsp;41.31亿次</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: left; font-family: arial; white-space: normal;\">亚瑟是所有玩家拥有的第一位英雄,也是纯新手英雄,很多玩家都对他爱不释手,甚至一路上到黄金甚至铂金。所以亚瑟的出场率也一直居高不下,长期霸占英雄出场率排行榜的前三位,不过亚瑟毕竟是一位坦克英雄,所以死亡次数并未进入前三名,以41.31亿次位居第四位。</p><p style=\"text-align: left;\"><img src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2655044644,1228208656&fm=173&s=DF3814C754132BC25E877D3803001018&w=600&h=338&img.JPEG\" style=\"border: 0px; width: 537px;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: left; font-family: arial; white-space: normal;\">No.3 阿轲 &nbsp;46.76亿次</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: left; font-family: arial; white-space: normal;\">阿轲依赖其极强的残局收割能力,是最容易拿到五杀的一位英雄之一,当然高输出意味着身板脆,要么超神,要么超鬼。阿轲以46.76亿次挤进了坑友榜单的前三位。</p><p style=\"text-align: left;\"><img src=\"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=2122686059,511761348&fm=173&s=B3EC0EAE7A32309282299ABF03004021&w=600&h=338&img.JPEG\" style=\"border: 0px; width: 537px;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: left; font-family: arial; white-space: normal;\">No.2 后羿 &nbsp;47.12亿次</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: left; font-family: arial; white-space: normal;\">后羿是一位非常廉价的射手英雄,而且后羿在刚登陆王者荣耀时可以通过签到免费获得。所以几乎绝大部分的玩家都会拥有后羿这位英雄。虽然当前版本后羿较为弱势,但是依然有一大批的玩家进来就锁定后羿并且不发一言。尤其是在炎热的夏天,各区市的玩家们纷纷呼叫该区市的第一后羿出来射日。后羿也是以47.12亿次的死亡次数屈居第二位。</p><p style=\"text-align: left;\"><img src=\"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1464568881,2857146076&fm=173&s=A4D03CC4D00279575FAC80320300E092&w=600&h=338&img.JPEG\" style=\"border: 0px; width: 537px;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: left; font-family: arial; white-space: normal;\">No.1 鲁班七号 &nbsp;64.43亿次</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: left; font-family: arial; white-space: normal;\">第一其实是最没有悬念的,鲁班七号长期霸占英雄出场率排行榜的头把交椅,又有着“移动提款机”的称号,高出场率,低生存率,死亡次数以64.43亿的死亡次数傲视群雄,每天被击杀的鲁班七号可以绕地球一周,比第二名的后羿整整多了17.31亿。真是应了他的台词“鲁班大师,智障二百五,膜拜,拒绝膜拜!”</p><p style=\"text-align: left;\"><img src=\"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1381788444,122488539&fm=173&s=94915695440303494CB43CA503003000&w=600&h=338&img.JPEG\" style=\"border: 0px; width: 537px;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: left; font-family: arial; white-space: normal;\">好吧,其实鲁大师还是很强的,或许死的多也不是人家的错。也许是玩家们特殊的爱呢?</p><p><br style=\"text-align: left;\"/></p>', '1970', '1501144531', '10');
INSERT INTO `article` VALUES ('6', '不得不服！炉石九版——最强的九位5费随从！', 'http://imageYii.example.com/upload/article/20171220/72691513752862.jpg', null, '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">炉石发展到现在也经历了诸多个版本，我们细数了一下：纳克萨玛斯、地精大战侏儒、黑石山的火焰、冠军的试炼、探险者协会、上古之神的低语、卡拉赞之夜、龙争虎斗加基森、勇闯安戈洛一共有9个主题的卡牌出现，这些卡牌或多或少的在历史的长河中大放光彩。</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">或许你刚刚进入炉石从来不认识他们，或许你已经是个炉石老鸟早就忘记了这些曾经的英雄。那么就让我们在这段时间里一起来回顾一下这些曾经时代的光辉，同时也从这些随从中领略到各版本的特殊魅力。</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">今天我们要盘点的就是各版本中最强的五费随从，五费这个阶段的卡牌往往在天梯中的作用显得非常的重要，5费具备一定的身材和特殊的效果，而他这个特殊效果在天梯中往往能够起到极其关键的作用！</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">纳克萨玛斯--洛欧塞布</p><p><img class=\"normal\" width=\"190px\" src=\"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=503374868,2531783908&fm=173&s=8AB25D85540C32FA648C54380300A040&w=190&h=267&img.JPEG\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">点评：法系职业的噩梦，这张卡牌可谓整整支配了一个时代，在那个时代你的冰法和一些法系职业是完全不要想打出特别的斩杀的。每个人的卡组里面都有一张洛欧塞布，关键费用丢下来，法系职业就会感觉到什么叫做噩梦，所以在洛欧塞布的时代更多的是倾向于站场的打法。</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">地精大战侏儒--老司机</p><p><img class=\"normal\" width=\"190px\" src=\"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=517935732,2544844862&fm=173&s=ABB044851A2D9ADA3688682E0300E040&w=190&h=270&img.JPEG\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">点评：多么亲切的名字，老司机带带我，带我走向胜利。这张卡牌是当年术士的标配，在那个没有雷诺的年代里面一切都是靠这些实实在在的卡牌来回复血量的，无论是竞技场还是天梯中，如果你是术士带上一张老司机是没错的，关键时刻救你一命。</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">黑石山的火焰--恐怖的奴隶主</p><p><img class=\"normal\" width=\"192px\" src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=532496596,2557905816&fm=173&s=0AB25C8170CD96FA60B0A91C0300A0C0&w=192&h=261&img.JPEG\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">点评：还记得那些在各大服务器登顶的战士么，他们曾经都是无二不作的奴隶战，依靠奴隶主强大的繁殖效果，配合上冲锋一套，奴隶主在朝神手上一朝封神，可惜强大的遭到了神灵的极度，一削在削，现在你再也看不到奴隶战的身影了。</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">冠军的试炼--雷霆崖勇士</p><p><img class=\"normal\" width=\"168px\" src=\"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=547057460,2570966770&fm=173&s=8A826D85D66D96F82DAD551C0300E0C2&w=168&h=236&img.JPEG\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">点评：冠军的试炼这个版本纯粹是在为了后来的版本提供帮助，雷霆崖的勇士在这个版本并没有获得很好的发挥，但是在之后的版本中，中速萨获得了崛起，雷霆崖勇士凭借其强悍的滚雪球效果，成为了中速萨中期最强的助力，一时风头无二！</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">探险者协会--虚灵巫师</p><p><img class=\"normal\" width=\"190px\" src=\"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=561618324,2584027724&fm=173&s=CA926C859A6D9ADA3E88F51C030030C0&w=190&h=270&img.JPEG\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">点评：虽然在这个版本中开创了灯神的体系，但是这种不稳定的黑科技卡组让我并不是很推崇，反而虚灵巫师在天梯成为了必带的一张卡牌之后，又在竞技场中无脑选择的一张卡牌，我记得当年最多的时候我在竞技场拿了5张虚灵巫师，简直打到对面跳脚。</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">上古之神的低语--秘法宝典</p><p><img class=\"normal\" width=\"190px\" src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=576179188,2597088678&fm=173&s=A6A204A9E6A6C6FA5E2849BD03003087&w=190&h=270&img.JPEG\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">点评：这张卡牌被我们亲切的称为小黄书，大家都知道黄书会让你的血液澎湃，激情迸发。这张卡牌的效果也是如此，它能够为你提供任意三张法师的法术，在天梯中可以用来配合萨隆补充手牌，在竞技场中的效果更加逆天，曾经出现了秘法宝典开秘法宝典，活活用法术打到对面绝望的场景。</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">卡拉赞之夜--愚者之灾</p><p><img class=\"normal\" width=\"265px\" src=\"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=590740052,2610149632&fm=173&s=BAB0658050EDB2F858E84D9B0300A082&w=265&h=380&img.JPEG\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">点评：最开始我以为这是一张垃圾卡牌，后来在竞技场中我一次次的被战士用这把SX一样的武器打败了几次后，我不得不承认在某些时刻这把武器真的蛮好用的，耐久高、无使用次数限制（前提是耐久够），配合上当年高甲的战士用来解场算是非常的不错。</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">龙争虎斗加基森--芬杰</p><p><img class=\"normal\" width=\"190px\" src=\"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=605300916,2623210586&fm=173&s=2890449592AD92FA1C912DBE03007000&w=190&h=270&img.JPEG\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">点评：没错，芬杰的出现带来了全新的鱼人体系打法，芬杰的检索效果为我们带了完全不一样的体验，检索的鱼人配合上骑士的王者归来，使得一段时间死鱼骑成为了天梯的主宰，能想到的应对办法居然只是污染鱼池。好在现在萨满的退化出来了，一张退化全家死光。</p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">勇闯安戈洛--卡利莫斯的仆从</p><p><img class=\"normal\" width=\"190px\" src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=619861780,2636271540&fm=173&s=8AA04585DEEC92DA169C791C03003040&w=190&h=270&img.JPEG\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\">点评：一生二，二生三、三生万物，卡利莫斯的仆从就是这样的卡牌，他这样良好的机制使得他在竞技场中成为了最受欢迎的体系，因为我们在获得站场随从的情况下，还能获得手牌的补充，在天梯中也是如此，大家都用他来发现卡利莫斯！</p><p><br/></p>', '1970', '1513753016', '10');

-- ----------------------------
-- Table structure for `auth_assignment`
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('发布员', '2', '1489562093');
INSERT INTO `auth_assignment` VALUES ('超级管理员', '1', '1489563395');

-- ----------------------------
-- Table structure for `auth_item`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1494555805', '1494555805');
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1494555798', '1494555798');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1494555798', '1494555798');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1494555798', '1494555798');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1494555798', '1494555798');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1494555798', '1494555798');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1494555798', '1494555798');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1494555798', '1494555798');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1494555799', '1494555799');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1494555800', '1494555800');
INSERT INTO `auth_item` VALUES ('/article/*', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/article/create', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/article/delete', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/article/index', '2', null, null, null, '1494555793', '1494555793');
INSERT INTO `auth_item` VALUES ('/article/update', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/article/upload', '2', null, null, null, '1500880766', '1500880766');
INSERT INTO `auth_item` VALUES ('/article/view', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/country/*', '2', null, null, null, '1494555804', '1494555804');
INSERT INTO `auth_item` VALUES ('/country/create', '2', null, null, null, '1494555803', '1494555803');
INSERT INTO `auth_item` VALUES ('/country/delete', '2', null, null, null, '1494555804', '1494555804');
INSERT INTO `auth_item` VALUES ('/country/index', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/country/update', '2', null, null, null, '1494555803', '1494555803');
INSERT INTO `auth_item` VALUES ('/country/view', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1494555801', '1494555801');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1494555802', '1494555802');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1494555804', '1494555804');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1494555804', '1494555804');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1494555804', '1494555804');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1494555804', '1494555804');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1494555804', '1494555804');
INSERT INTO `auth_item` VALUES ('/user/*', '2', null, null, null, '1494555805', '1494555805');
INSERT INTO `auth_item` VALUES ('/user/create', '2', null, null, null, '1494555804', '1494555804');
INSERT INTO `auth_item` VALUES ('/user/delete', '2', null, null, null, '1494555805', '1494555805');
INSERT INTO `auth_item` VALUES ('/user/index', '2', null, null, null, '1494555804', '1494555804');
INSERT INTO `auth_item` VALUES ('/user/update', '2', null, null, null, '1494555804', '1494555804');
INSERT INTO `auth_item` VALUES ('/user/view', '2', null, null, null, '1494555804', '1494555804');
INSERT INTO `auth_item` VALUES ('发布员', '1', null, null, null, '1489481959', '1489481959');
INSERT INTO `auth_item` VALUES ('文章修改权限', '2', '文章修改', null, null, '1489481870', '1489481870');
INSERT INTO `auth_item` VALUES ('超级权限', '2', null, null, null, '1489565034', '1489565034');
INSERT INTO `auth_item` VALUES ('超级管理员', '1', null, null, null, '1489563345', '1489563369');

-- ----------------------------
-- Table structure for `auth_item_child`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('超级权限', '/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/role/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/role/assign');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/role/create');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/role/delete');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/role/index');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/role/remove');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/role/update');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/role/view');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/route/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/route/refresh');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/route/remove');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/rule/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/rule/view');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('文章修改权限', '/article/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/article/*');
INSERT INTO `auth_item_child` VALUES ('文章修改权限', '/article/create');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/article/create');
INSERT INTO `auth_item_child` VALUES ('文章修改权限', '/article/delete');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/article/delete');
INSERT INTO `auth_item_child` VALUES ('文章修改权限', '/article/index');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/article/index');
INSERT INTO `auth_item_child` VALUES ('文章修改权限', '/article/update');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/article/update');
INSERT INTO `auth_item_child` VALUES ('文章修改权限', '/article/upload');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/article/upload');
INSERT INTO `auth_item_child` VALUES ('文章修改权限', '/article/view');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/article/view');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/country/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/country/create');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/country/delete');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/country/index');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/country/update');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/country/view');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/debug/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/debug/default/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/debug/default/db-explain');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/debug/default/download-mail');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/debug/default/index');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/debug/default/toolbar');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/debug/default/view');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/gii/default/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/gii/default/action');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/gii/default/diff');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/gii/default/index');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/gii/default/preview');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/gii/default/view');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/site/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/site/error');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/site/index');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/site/login');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/user/*');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/user/create');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/user/delete');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/user/index');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/user/update');
INSERT INTO `auth_item_child` VALUES ('超级权限', '/user/view');
INSERT INTO `auth_item_child` VALUES ('发布员', '文章修改权限');
INSERT INTO `auth_item_child` VALUES ('超级权限', '文章修改权限');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '超级权限');

-- ----------------------------
-- Table structure for `auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章分类',
  `name` char(50) NOT NULL COMMENT '分类名',
  `parent` int(11) NOT NULL DEFAULT '0' COMMENT '父级id',
  `isShow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('AU', 'Australia', '18886000');
INSERT INTO `country` VALUES ('BR', 'Brazil', '170115000');
INSERT INTO `country` VALUES ('CA', 'Canada', '1147000');
INSERT INTO `country` VALUES ('CN', 'China', '1277558000');
INSERT INTO `country` VALUES ('DE', 'Germany', '82164700');
INSERT INTO `country` VALUES ('FR', 'France', '59225700');
INSERT INTO `country` VALUES ('GB', 'United Kingdom', '59623400');
INSERT INTO `country` VALUES ('IN', 'India', '1013662000');
INSERT INTO `country` VALUES ('RU', 'Russia', '146934000');
INSERT INTO `country` VALUES ('US', 'United States', '278357000');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '文章管理', null, null, null, 0x7B2269636F6E223A202275736572227D);
INSERT INTO `menu` VALUES ('2', '文章列表', '1', '/article/index', null, null);
INSERT INTO `menu` VALUES ('3', '权限管理', null, null, null, null);
INSERT INTO `menu` VALUES ('4', '路由', '3', '/admin/route/index', null, null);
INSERT INTO `menu` VALUES ('5', '权限', '3', '/admin/permission/index', null, null);
INSERT INTO `menu` VALUES ('6', '角色', '3', '/admin/role/index', null, null);
INSERT INTO `menu` VALUES ('7', '分配', '3', '/admin/assignment/index', null, null);
INSERT INTO `menu` VALUES ('8', '菜单', '3', '/admin/menu/index', null, null);
INSERT INTO `menu` VALUES ('9', '管理员管理', null, '/user/index', null, null);
INSERT INTO `menu` VALUES ('10', 'Gii', null, '/gii/default/index', null, null);
INSERT INTO `menu` VALUES ('11', 'Debug', null, '/debug/default/index', null, null);

-- ----------------------------
-- Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1478742787');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1478742797');
INSERT INTO `migration` VALUES ('m140506_102106_rbac_init', '1478844092');
INSERT INTO `migration` VALUES ('m140602_111327_create_menu_table', '1478842805');
INSERT INTO `migration` VALUES ('m160312_050000_create_user', '1478842805');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'Ab-6x9iOaEDbKg9zGMd6exNietnHK0PM', '$2y$13$57DkAstm81yl/YWHTxI7oO2yxOsKDxNd3CbW90pqJRV/9/UsvgfXG', null, 'admin@example.com', '10', '2016', '1494990510');
INSERT INTO `user` VALUES ('2', 'jyb', 'e-e6HGQzwHLNQMy-V224mVy8ANEFbdd9', '$2y$13$YNIN4ZevUdl5W8T8WNJl8.xMo2UKDAO4Sq.oNqtAtR03oHh0OBTVm', null, 'jyb@qq.com', '10', '2017', '1501140265');

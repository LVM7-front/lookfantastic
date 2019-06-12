set names utf8;
drop database if exists lf;
create database lf charset=utf8;
use lf;

/**用户信息**/
create table lf_user(
  uid int primary key auto_increment,
  uname varchar(32),
  upwd varchar(32),
  email varchar(64),
  referrer varchar(16)   #推荐人
);

/****首页轮播广告商品****/
create table lf_index_carousel(
  cid int primary key auto_increment,
  img varchar(128),
  title varchar(64),
  href varchar(128)
);

/****logo展示图****/
create table lf_index_logo(
  lid int primary key auto_increment,
  img varchar(128),
  title varchar(64),
  href varchar(128)
);

/****首页商品****/
create table lf_index_product(
  pid int primary key auto_increment,
  title varchar(64),
  details varchar(128),
  pic varchar(128),
  href varchar(128)
);


/**用户信息**/
insert into lf_user values
(NULL, 'ding', '123456', 'ding@qq.com','tom'),
(NULL, 'son', '123456', 'son@qq.com','juery'),
(NULL, 'keny', '123456', 'keny@qq.com','pin'),
(NULL, 'wei', '123456', 'wei@qq.com','namo');

/****首页轮播广告商品****/
insert into lf_index_carousel values
(NULL, 'public/img/body/1_.jpg','轮播广告商品1','#'),
(NULL, 'public/img/body/2_.jpg','轮播广告商品2','#'),
(NULL, 'public/img/body/03_.jpg','轮播广告商品3','#');

/****logo展示图****/
insert into lf_index_logo values
(NULL, 'public/img/body/logo_caudalie.gif','logo展示图1','#'),
(NULL, 'public/img/body/logo_chantecaille.gif','logo展示图2','#'),
(NULL, 'public/img/body/logo_filorga.gif','logo展示图3','#'),
(NULL, 'public/img/body/logo_theordinary.gif','logo展示图4','#'),
(NULL, 'public/img/body/logo-kerastase.png','logo展示图5','#'),
(NULL, 'public/img/body/logo-NIOD.png','logo展示图6','#');

/****首页商品****/
insert into lf_index_product values
(NULL, '父亲节终极礼物', '还在为父亲节送礼发愁，Lookfantastic打造了最完美的礼物，这个限量版礼盒价值￥1200，现仅售￥450，一件即享包邮，让你成为最孝顺的仔！', 'public/img/body/1.product.jpg','#'),
(NULL, '本月明星品牌：Imedeen', '来自丹麦的伊美婷，通过血液吸收的胶原蛋白“口服护肤片”，重铸细胞结构，有效改善肌肤，锁住皮肤水分，达到抗老护肤的效果！', 'public/img/body/2.product.jpg','#'),
(NULL, 'Kérastase', 'Kérastase 低至 7 折优惠!  包括新产品线：夜间修复，八小时神奇精华，还你光彩亮丽发质！', 'public/img/body/3.product.jpg','#'),
(NULL, 'Grow Gorgeous', 'Grow Gorgeous 享受半价优惠！', 'public/img/body/4.product.jpg','#'),
(NULL, 'REN', '夏季清爽零负担护肤品牌 REN， 现在购满￥400 即可获赠夏季防晒SPF套装，让你无惧阳光！', 'public/img/body/5.product.jpg','#'),
(NULL, 'Elemis', '英国年度最受欢迎品牌，购满￥700 即可获赠 Elemis 护肤套装！', 'public/img/body/6.product.jpg','#'),
(NULL, 'Christophe Robin', '英国年度最受欢迎品牌，购满￥700 即可获赠 Elemis 护肤套装！', 'public/img/body/7.product.jpg','#'),
(NULL, 'Erno Laszlo', '明星单品 冰白面膜，豆腐霜等，清凉补水，购满￥660 即可获赠记忆睡眠面膜。', 'public/img/body/8.product.jpg','#');
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

/**首页广告条**/
create table lf_index_Banner(
  details varchar(128)
);

/****首页轮播广告商品****/
create table lf_index_carousel(
  cid int primary key auto_increment,
  img varchar(128),
  title varchar(64),
  href varchar(128)
);

/****首页logo展示图****/
create table lf_index_logo(
  lid int primary key auto_increment,
  img varchar(128),
  title varchar(64),
  href varchar(128)
);

/****一楼-首页商品（2个）****/
create table lf_index_product(
  pid int primary key auto_increment,
  title varchar(64),
  details varchar(128),
  pic varchar(128),
  href varchar(128)
);
/****二楼首页商品——品牌专区****/
create table lf_index_product_brand(      #品牌专区
  pid int primary key auto_increment,
  title varchar(64),
  details varchar(128),
  pic varchar(128),
  href varchar(128)
);

/****四楼首页商品——本周推荐****/
create table lf_index_product_recommend(      #本周推荐
  pid int primary key auto_increment,
  title varchar(64),
  details varchar(128),
  pic varchar(128),
  href varchar(128)
);

/****五楼首页商品——大家都在买****/
create table lf_index_product_buy(      #大家都在买
  pid int primary key auto_increment,
  details varchar(128),
  pic varchar(128),
  href varchar(128)
);

/****六楼首页商品——博客和微信****/
create table lf_index_product_Blog(      #博客和微信
  pid int primary key auto_increment,
  title varchar(64),
  details varchar(128),
  pic varchar(128),
  href varchar(128)
);

/***二级页面-->美发护发，大图***/
create table lf_hair_img(
	title varchar(64),
  details1 varchar(128),
	details2 varchar(128),
  pic varchar(128),
	button1 varchar(10),
	button2 varchar(10),
  href varchar(128)
);

/****美发logo展示图****/
create table lf_hari_logo(
	lid int primary key auto_increment,
  img varchar(128),
  title varchar(64),
  href varchar(128)
);

/****美发分类展示图****/
create table lf_hari_classify(
	lid int primary key auto_increment,
  img varchar(128),
  title varchar(64),
  href varchar(128)
);

/****美发商品推荐列表****/
create table lf_hari_product_recommend(      #美发产品推荐
  pid int primary key auto_increment,
  title varchar(64),
  details varchar(128),
  pic varchar(128),
  href varchar(128)
);

/****美发热卖单品****/
create table lf_hari_hot(      #美发热卖
  pid int primary key auto_increment,
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

/**首页广告条**/
insert into lf_index_Banner values
('折扣码：LFCN15，立即享受 85 折优惠！ (*部分产品不参加');

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

/****一楼首页商品****/
insert into lf_index_product values
(NULL, '父亲节终极礼物', '还在为父亲节送礼发愁，Lookfantastic打造了最完美的礼物，这个限量版礼盒价值￥1200，现仅售￥450，一件即享包邮，让你成为最孝顺的仔！', 'public/img/body/1.product.jpg','#'),
(NULL, '本月明星品牌：Imedeen', '来自丹麦的伊美婷，通过血液吸收的胶原蛋白“口服护肤片”，重铸细胞结构，有效改善肌肤，锁住皮肤水分，达到抗老护肤的效果！', 'public/img/body/2.product.jpg','#');

/****二楼首页商品-品牌专区****/
insert into lf_index_product_brand values
(NULL, 'Kérastase', 'Kérastase 低至 7 折优惠!  包括新产品线：夜间修复，八小时神奇精华，还你光彩亮丽发质！', 'public/img/body/3.product.jpg','#'),
(NULL, 'Grow Gorgeous', 'Grow Gorgeous 享受半价优惠！', 'public/img/body/4.product.jpg','#'),
(NULL, 'REN', '夏季清爽零负担护肤品牌 REN， 现在购满￥400 即可获赠夏季防晒SPF套装，让你无惧阳光！', 'public/img/body/5.product.jpg','#'),
(NULL, 'Elemis', '英国年度最受欢迎品牌，购满￥700 即可获赠 Elemis 护肤套装！', 'public/img/body/6.product.jpg','#'),
(NULL, 'Christophe Robin', '英国年度最受欢迎品牌，购满￥700 即可获赠 Elemis 护肤套装！', 'public/img/body/7.product.jpg','#'),
(NULL, 'Erno Laszlo', '明星单品 冰白面膜，豆腐霜等，清凉补水，购满￥660 即可获赠记忆睡眠面膜。', 'public/img/body/8.product.jpg','#');

/****四楼首页商品-本周推荐****/
insert into lf_index_product_recommend values
(NULL, '逆天折扣：Crabtree & Evelyn', '瑰柏翠的外观设计和取材用料都非常有英国田园风情，全线 5 折这样的机会，必须狠狠抓住！', 'public/img/body/10.product.jpg','#'),
(NULL, '夏季当之无愧的明星品牌：Ultrasun', '夏季防晒首选 Ultrasun， 来自瑞士的专业防晒品牌，也是欧洲夏季销量冠军！', 'public/img/body/11.product.jpg','#'),
(NULL, '敏感换季期的福音：Aesop', 'Aesop 采购草本成分和实验室研制的成分，并仅使用安全和有效的成分。伊索护肤品牌的档次偏向中高端，主要的特点就是：简单的设计，靠谱的的成分，有效的护肤。', 'public/img/body/12.product.jpg','#'),
(NULL, '夏季品牌推荐：KORRES', 'Korres 限时购满即赠正装赠品。', 'public/img/body/13.product.jpg','#'),
(NULL, '新品上市：Nuface', '笔式护肤工具，可提供温和的NuFACE®微电流能量，有助于减少预防细纹和皱纹。', 'public/img/body/14.product.jpg','#'),
(NULL, '名媛贵妇： ERNO LASZLO', '奥伦纳素，是来自美国的高端奢侈护肤品牌', 'public/img/body/15.product.jpg','#');

/****五楼首页商品-大家都在买****/
insert into lf_index_product_buy values
(NULL, '资生堂丝彩亮肤套装（高光粉饼 PK107 和 WT905 色号）', 'public/img/body/16.product.jpg','#'),
(NULL, 'CAUDALIE 欧缇丽泡沫洁面乳 (2 X 150ML)', 'public/img/body/17.product.jpg','#'),
(NULL, 'CHANTECAILLE 香缇卡隔离一白Alabaster + 清透干湿两用粉饼Petal', 'public/img/body/18.product.jpg','#'),
(NULL, 'ELEMIS 女士旅行套装', 'public/img/body/19.product.jpg','#');

/****六楼首页商品——博客和微信****/
insert into lf_index_product_Blog values
(NULL, '抖森代言善存片', '抖森代言了善存片的中国区广告, 引发了一场“中西媒体大战”。Lookfantastic 只能为你准备好善存多维生素片，早餐还得喊你男友做。', 'public/img/body/20.product.jpg','#'),
(NULL, '关注Lookfantastic官方微信', 'lookfanstastic上必入的天然护肤品', 'public/img/body/21.product.jpg','#'),
(NULL,'和伊索一起打造护肤神话', '创始于澳洲，畅销在中国、日本、英国、澳洲、挪威、法国等很多国家。在护肤品中设计做的最轰动，在设计界中，护肤品又做的最好，算的上是一个很优秀的 “斜杠青年” 。', 'public/img/body/22.product.jpg','#');

/***二级页面-->美发护发，大图***/
insert into lf_hair_img values
( 'Kérastase 卡诗', '享受沙龙级高品质的秀发清洁保养，现在 Kérastase 卡诗最高 7 折优惠。',' 2019 全新卡诗夏日艳阳系列，彻底清洁滋润在海水中、泳池中让秀发受损的有害物质，帮助秀发保持光泽与健康。', 'public/img/hair/1.hair.jpg','前往品牌','所有护发产品','#');

/****美发logo展示图****/
insert into lf_hari_logo values
(NULL, 'public/img/hair/2.hair.jpg','美发logo展示图1','#'),
(NULL, 'public/img/hair/3.hair.jpg','美发logo展示图2','#'),
(NULL, 'public/img/hair/4.hair.jpg','美发logo展示图3','#'),
(NULL, 'public/img/hair/5.hair.jpg','美发logo展示图4','#'),
(NULL, 'public/img/hair/6.hair.jpg','美发logo展示图5','#'),
(NULL, 'public/img/hair/7.hair.jpg','美发logo展示图6','#');

/****美发分类展示图****/
insert into lf_hari_classify values
(NULL, 'public/img/hair/8.hair.jpg','洗发露','#'),
(NULL, 'public/img/hair/9.hair.jpg','护发素','#'),
(NULL, 'public/img/hair/10.hair.jpg','造型','#'),
(NULL, 'public/img/hair/11.hair.jpg','滋润发油','#'),
(NULL, 'public/img/hair/12.hair.jpg','护发配件','#'),
(NULL, 'public/img/hair/13.hair.jpg','密集护理','#');

insert into lf_hari_product_recommend values
(NULL, 'Grow Gorgeous', '用Grow Gorgeous来加强和重塑发根。用创新和独特的治疗方法来帮助您的头发恢复活力。', 'public/img/hair/14.hair.jpg','#'),
(NULL, 'Aquis', 'Aquis干发帽，超细纤维耐用、吸水、舒适，创新技术面料制作，减少毛躁和分叉！', 'public/img/hair/15.hair.jpg','#'),
(NULL, 'Christophe Robin', '【没有健康的头发，就没有美丽的色彩。】是 Christophe Robin 对美发的坚持。', 'public/img/hair/16.hair.jpg','#'),
(NULL, 'Tangle Teezer', '众多明星推荐 - Tangle Teezer 独特的梳齿构造工艺带来前所未有的顺发效果，使头发柔顺健康，倍加光泽。', 'public/img/hair/17.hair.jpg','#');

/****美发热卖单品****/
insert into lf_hari_hot values
(NULL, 'GROW GORGEOUS 修复洗发乳', 'public/img/hair/18.hair.jpg','#'),
(NULL, '卡诗鱼子酱 | 再生洗发水和发膜两件套', 'public/img/hair/19.hair.jpg','#'),
(NULL, 'Tangle Teezer 菠萝棕榈发梳', 'public/img/hair/20.hair.jpg','#'),
(NULL, 'OLAPLEX 3 号发膜', 'public/img/hair/21.hair.jpg','#');
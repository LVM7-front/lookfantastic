set names utf8;
drop database if exists lf;
create database lf charset=utf8;
use lf;

/**�û���Ϣ**/
create table lf_user(
  uid int primary key auto_increment,
  uname varchar(32),
  upwd varchar(32),
  email varchar(64),
  referrer varchar(16)   #�Ƽ���
);

/****��ҳ�ֲ������Ʒ****/
create table lf_index_carousel(
  cid int primary key auto_increment,
  img varchar(128),
  title varchar(64),
  href varchar(128)
);

/****logoչʾͼ****/
create table lf_index_logo(
  lid int primary key auto_increment,
  img varchar(128),
  title varchar(64),
  href varchar(128)
);

/****��ҳ��Ʒ****/
create table lf_index_product(
  pid int primary key auto_increment,
  title varchar(64),
  details varchar(128),
  pic varchar(128),
  href varchar(128)
);


/**�û���Ϣ**/
insert into lf_user values
(NULL, 'ding', '123456', 'ding@qq.com','tom'),
(NULL, 'son', '123456', 'son@qq.com','juery'),
(NULL, 'keny', '123456', 'keny@qq.com','pin'),
(NULL, 'wei', '123456', 'wei@qq.com','namo');

/****��ҳ�ֲ������Ʒ****/
insert into lf_index_carousel values
(NULL, 'public/img/body/1_.jpg','�ֲ������Ʒ1','#'),
(NULL, 'public/img/body/2_.jpg','�ֲ������Ʒ2','#'),
(NULL, 'public/img/body/03_.jpg','�ֲ������Ʒ3','#');

/****logoչʾͼ****/
insert into lf_index_logo values
(NULL, 'public/img/body/logo_caudalie.gif','logoչʾͼ1','#'),
(NULL, 'public/img/body/logo_chantecaille.gif','logoչʾͼ2','#'),
(NULL, 'public/img/body/logo_filorga.gif','logoչʾͼ3','#'),
(NULL, 'public/img/body/logo_theordinary.gif','logoչʾͼ4','#'),
(NULL, 'public/img/body/logo-kerastase.png','logoչʾͼ5','#'),
(NULL, 'public/img/body/logo-NIOD.png','logoչʾͼ6','#');

/****��ҳ��Ʒ****/
insert into lf_index_product values
(NULL, '���׽��ռ�����', '����Ϊ���׽����񷢳Lookfantastic����������������������������м�ֵ��1200���ֽ��ۣ�450��һ��������ʣ������Ϊ��Т˳���У�', 'public/img/body/1.product.jpg','#'),
(NULL, '��������Ʒ�ƣ�Imedeen', '���Ե���������ã�ͨ��ѪҺ���յĽ�ԭ���ס��ڷ�����Ƭ��������ϸ���ṹ����Ч���Ƽ�������סƤ��ˮ�֣��ﵽ���ϻ�����Ч����', 'public/img/body/2.product.jpg','#'),
(NULL, 'K��rastase', 'K��rastase ���� 7 ���Ż�!  �����²�Ʒ�ߣ�ҹ���޸�����Сʱ���澫�����������������ʣ�', 'public/img/body/3.product.jpg','#'),
(NULL, 'Grow Gorgeous', 'Grow Gorgeous ���ܰ���Żݣ�', 'public/img/body/4.product.jpg','#'),
(NULL, 'REN', '�ļ���ˬ�㸺������Ʒ�� REN�� ���ڹ�����400 ���ɻ����ļ���ɹSPF��װ�������޾����⣡', 'public/img/body/5.product.jpg','#'),
(NULL, 'Elemis', 'Ӣ��������ܻ�ӭƷ�ƣ�������700 ���ɻ��� Elemis ������װ��', 'public/img/body/6.product.jpg','#'),
(NULL, 'Christophe Robin', 'Ӣ��������ܻ�ӭƷ�ƣ�������700 ���ɻ��� Elemis ������װ��', 'public/img/body/7.product.jpg','#'),
(NULL, 'Erno Laszlo', '���ǵ�Ʒ ������Ĥ������˪�ȣ�������ˮ��������660 ���ɻ�������˯����Ĥ��', 'public/img/body/8.product.jpg','#');
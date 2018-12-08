if exists(select 1 from sysdatabases where name='ByloveDB')
drop database ByloveDB
go
create database ByloveDB
on
(name='ByloveDB',filename='G:\ByloveDB.mdf',size=5MB)
go
use ByloveDB

go

create table UserInfo--�û���
(
  userId int primary key identity(10000,1), --�û�id
  petname nvarchar(50)  unique,--�û��ǳ�
  gender nvarchar(4) not null,--�Ա�
  education nvarchar(20) ,--ѧ��
  age int default(18) ,--����
  height int default(170),--���
  salary nvarchar(20),--��н
  marriageState nvarchar(20) not null ,--���
  phone varchar(20)   unique ,--�ֻ���
  pwd nvarchar(150) ,--����
  headImgUrl nvarchar(200) default('woman.jpg'), --ͷ��
  member bit default(0),--�Ƿ��Ա
  name nvarchar(20) ,--��ʵ��
  monologue nvarchar(200),--���Ķ���
  weights int  ,--����
  zodiac nvarchar(20) ,--��Ф
  star nvarchar(50) ,--����
  blood nvarchar(20)  ,--Ѫ��
  nation nvarchar(20),--����
  school nvarchar(20)  ,--��ҵԺУ
  major nvarchar(20)  ,--רҵ
  hobby nvarchar(100)  ,--��Ȥ����
  family nvarchar(100)  ,--��ͥ״��
  [address] nvarchar(100) ,--��ַ
  birthday date,--��������
  email nvarchar(30),--����
    wwixinID varchar(50),--΢�ź�26
  userState bit default(0),--�û�״̬
  addTime datetime default(getdate())--ע��ʱ��
  )

  go
insert into UserInfo values('����Ů��i' ,'��' ,'ʮ����' ,18 ,160 ,'50-100��Ԫ' ,'�����' ,'17637466195' ,'123456' ,'t0151226d781660269b.jpg' ,0 ,'С��' ,'�Ұ�����ǰ��㣬û����' ,140 ,'��' ,'��ţ' ,'B��' ,'����' ,'�廪��ѧ' ,'����' ,'��Ȥ������Ϸ' ,'�ѹ���' ,'��ַ' ,'2000/1/2 0:00:00' ,'12306@163.com','TEX889',0,2017-05-27)
insert into UserInfo values('��õ�廨֦���ܰ��ִ�ʹ' ,'��' ,'ʮ����' ,18 ,160 ,'ʮ��' ,'�������' ,'13525355301' ,'13525355301' ,'t012aa3c6e80e774dc9.jpg' ,0 ,'��Ӱ����' ,'���Ķ���û��' ,160 ,'��' ,'��ţ' ,'o' ,'����' ,'��ҵԺУû��' ,'רҵ����' ,'��Ȥ������Ϸ' ,'��ͥ״������' ,'��ַ' ,'2000/1/2 0:00:00' ,'12306@163.com','PPO889',0,2017-05-27)
insert into UserInfo values('������Ϊ���Ĥ�' ,'Ů' ,'������' ,10 ,160 ,'ʮ��' ,'�������' ,'13525355302' ,'123456' ,'t01385edf1bced5fa90.jpg' ,0 ,'����' ,'�����' ,0 ,'��' ,'����' ,'o' ,'����' ,'��ҵԺУû��' ,'רҵ����' ,'��Ȥ������Ϸ' ,'��ͥ״������' ,'��ַ' ,'2000/1/2 0:00:00' ,'12306@163.com','',0,2017-05-27)
insert into UserInfo values('��ҹ˭���ߣ�' ,'Ů' ,'ʮ����' ,11 ,160 ,'ʮ��' ,'�������' ,'13525355303' ,'13525355303' ,'t0121c248a899ad2530.jpg' ,0 ,'�ڰ�����' ,'˭�Ҵ���' ,120 ,'��' ,'��ţ' ,'o' ,'����' ,'��ҵԺУ����Ͽ��' ,'רҵ����' ,'��Ȥ������Ϸ' ,'��ͥ״������' ,'��ַ�����ӵ�' ,'2000/1/2 0:00:00' ,'12306@163.com','YYUT885',0,2017-05-27)
insert into UserInfo values('���@' ,'Ů' ,'������' ,20 ,170 ,'ʮ��' ,'�������' ,'15136960291' ,'15136960291' ,'t0192c2c2b42f5f5626.jpg' ,0 ,'��ľ��' ,'����Ǵ�˵' ,110 ,'��' ,'˫��' ,'o' ,'����' ,'��ҵԺУû��' ,'��ҵԺУ����Ͽ��' ,'��Ȥ������Ϸ' ,'��ͥ״������' ,'��ַ' ,'2000/1/2 0:00:00' ,'12306@163.com','',0,2017-05-27)
insert into UserInfo values('��' ,'��' ,'ʮ����' ,25 ,187 ,'��ʮ��' ,'�������' ,'15136960292' ,'15136960292' ,'t01479be2c2ab5edefb.jpg' ,0 ,'����֮����' ,'�������Լ�����һ��' ,130 ,'��' ,'��ţ' ,'o' ,'����' ,'��ҵԺУ����Ͽ��' ,'רҵ����' ,'��Ȥ������Ϸ' ,'��ͥ״������' ,'��ַ�����ӵ�' ,'2000/1/2 0:00:00' ,'12306@163.com','MMpLL008',0,2017-05-27)
insert into UserInfo values('���Q��' ,'��' ,'������' ,22 ,185 ,'��ʮ��' ,'�������' ,'15136960293' ,'15136960293' ,'t01abed2832e0daa3fe.jpg' ,0 ,'��Ӱ����������' ,'��������֮�أ����ǽ���' ,0 ,'��' ,'ˮƽ' ,'o' ,'����' ,'��ҵԺУ����Ͽ��' ,'רҵ����' ,'��Ȥ������Ϸ' ,'��ͥ״������' ,'��ַ' ,'2000/1/2 0:00:00' ,'12306@163.com','KKDF776',0,2017-05-27)
insert into UserInfo values('�a˽�е۩c��' ,'��' ,'ʮ����' ,28 ,191,'��ʮ��' ,'�������' ,'15136960294' ,'15136960294' ,'t01ce112d54f2050cd4.jpg' ,0 ,'����' ,'���ڣ��Ҿ���' ,0 ,'ţ' ,'��ţ' ,'o' ,'����' ,'��ҵԺУ����Ͽ��' ,'רҵ����' ,'��Ȥ������Ϸ' ,'��ͥ״����' ,'��ַ�����ӵ�' ,'2000/1/2 0:00:00' ,'12306@163.com','FDS33',0,2017-05-27)
insert into UserInfo values('��������û��С��*' ,'��' ,'������' ,16 ,165 ,'ʮ��' ,'�������' ,'15136950275' ,'15136960295' ,'t017ef8a5d903c1c10f.jpg' ,0 ,'��������' ,'ȫ����Ŀ����' ,140,'��' ,'˫��' ,'o' ,'����' ,'��ҵԺУ����Ͽ��' ,'�̿�' ,'��Ȥ������Ϸ' ,'��ͥ״����' ,'��ַ' ,'2000/1/2 0:00:00' ,'12306@163.com','Smile_1546337448',0,2017-05-27)
insert into UserInfo values('��ͨС��&' ,'Ů' ,'������' ,16 ,165 ,'ʮ��' ,'�������' ,'15136910295' ,'15136910295' ,'t016076f5b4416693a7.jpg' ,0 ,'С��' ,'ȫ����Ŀ����' ,140,'��' ,'˫��' ,'o' ,'����' ,'��ҵԺУ����Ͽ��' ,'�̿�' ,'��Ȥ������Ϸ' ,'��ͥ״����' ,'��ַ' ,'2000/1/2 0:00:00' ,'12306@163.com','Smile_1546337448',0,2017-05-27)
insert into UserInfo values('�ٻ��׻�Ȼ����@' ,'Ů' ,'������' ,16 ,165 ,'ʮ��' ,'�������' ,'15176960295' ,'15176960295' ,'t01331fd362f464e66f.jpg' ,0 ,'����' ,'ȫ����Ŀ����' ,140,'��' ,'˫��' ,'o' ,'����' ,'��ҵԺУ����Ͽ��' ,'�̿�' ,'��Ȥ������Ϸ' ,'��ͥ״����' ,'��ַ' ,'2000/1/2 0:00:00' ,'12306@163.com','Smile_1546337448',0,2017-05-27)

  select  * from UserInfo where userId <> 1 and gender<> UserInfo.gender

   select * from UserInfo
   go
create PROCEDURE [dbo].[GetDatasByPaging] 
	@pagesize int =10,--ÿҳ����
    @pageindex int =0,--�ڼ�ҳ
    @tablename varchar(200),--����ɸѡ�ı��������
    @orderstr varchar(100),--������ʽ
    @pk  varchar(20),--����
    @columns varchar(600)--ѡ�����
AS
BEGIN

	SET NOCOUNT ON
    Declare @sql nvarchar(1000) 
    set @sql='select  top '+ cast(@pagesize as VARCHAR(4))+ '  '+ @columns +' 
        from '+@tablename +'
        where('+ @pk +' not in(select  top '+ cast(@pageSize*@pageIndex as VARCHAR(20))+'  '+ @pk +'
        from '+ @tablename +' order by '+ @orderstr +')) order by '+ @orderstr
    print @sql
    execute(@sql) 
    SET NOCOUNT OFF
END
	
--execute [dbo].[GetDatasByPaging] 13,0,UserInfo,'addTime Desc',userId,'*'
select userId,petname,gender,phone,email,education,member from UserInfo
--insert into UserInfo(gender,birthday,[address],marriageState,height,education,salary,phone,email,pwd,petname) 
--values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}')
select * from UserInfo where phone='18639430091' and pwd='123456'
select * from CircleOfFriends
go
create table Menu--��Ŀ��
(
  menuId int primary key identity(1,1),--��Ŀid
  parentId int not null,--��Ŀ����Id
  menuLevel int,--��Ŀ����
  menuName nvarchar(20) not null,--��Ŀ����
  menuUrl nvarchar(80) ,--��Ŀ��ַ
)
go
create table ActivitiesInfo--���
(
activitiesID int primary key identity(1,1), --���
activitiesPic nvarchar(100),--�����
activitiesTit nvarchar(50), --����
activitiesContent nvarchar(200), --����
activitiesTime date, --�ʱ��
activitiesAddress nvarchar(150), --��ַ
inCount int , --����������
Moneys int --�����
)
insert into ActivitiesInfo values('���ֻ.jpg','���״��','�������꣬��������','2018.03.20','ƽ��ɽ',100,200)
insert into ActivitiesInfo values('���ֻ.jpg' ,'�ڶ�ʮ���� �й�������' ,'�������꣬��������' ,'2018/4/20 0:00:00' ,'ƽ��ɽ' ,100,0)
insert into ActivitiesInfo values('��������.jpg' ,'��������314' ,'����㣺��1��1���ӽ�̸��������ʶ�㡣��2����һ����Ӱ������һ��ƣ�������ġ���3�����޵�ʱ����ʶ�Ե��ˣ����ɵ���Ϸ�˽�Ե��ˣ�һ����ѹ����Ȥζ�Ļ��' ,'2018/3/20 0:00:00' ,'ʯ��·468�� �����Ǽ�Ӱ�ǣ�ʯ�ŵ꣩10�ż����� (���󷢶���)' ,100,0)
insert into ActivitiesInfo values('����Զ���.jpg' ,'��128�조�й�������' ,'�������꣬��������' ,'2018/3/20 0:00:00' ,'��������Ƕ�·77�Ŵ������B��4¥' ,9,0)
insert into ActivitiesInfo values('������.jpg' ,'��ʮ���� �й�������' ,'�������꣬��������' ,'2018/3/20 0:00:00' ,'��Ϫʪ�ء���԰' ,9,0)
insert into ActivitiesInfo values('������.jpg' ,'���������� Ʒ����Ե��' ,'�������꣬��������' ,'2018/3/20 0:00:00' ,'ƽ��ɽ' ,9,100)
insert into ActivitiesInfo values('��ʵ��û��ô��.jpg' ,'����Ǯ���߹����ҡ�' ,'�������꣬��������' ,'2018/3/28 0:00:00' ,'�������֣��������³�������·168��8�ţ�' ,9,0)
insert into ActivitiesInfo values('ȫ������.jpg' ,'�����о�Ӣ��ӭ�´���' ,'�������꣬��������' ,'2018/5/20 0:00:00' ,'������·81��' ,9,0)
insert into ActivitiesInfo values('������Ժ.jpg' ,'��Ҫ�������鰮' ,'�������꣬��������' ,'2018/3/20 0:00:00' ,'ƽ��ɽ' ,9,0)
insert into ActivitiesInfo values('����.jpg' ,'��������������' ,'�������꣬��������' ,'2018/3/20 0:00:00' ,'��ͤɽǧ��԰' ,9,0)
insert into ActivitiesInfo values('���ֻ.jpg' ,'���״��' ,'�������꣬��������' ,'2018/3/20 0:00:00' ,'ƽ��ɽ' ,100,0)
insert into ActivitiesInfo values('���ֻ.jpg' ,'2018���״��' ,'�������꣬��������' ,'2018/3/20 0:00:00' ,'ƽ��ɽ' ,100,0)

go
create table Registration--�������
(
  userID int foreign key references UserInfo(UserID),--�û����
  activitiesID int foreign key references ActivitiesInfo(ActivitiesID),--����
  regId int primary key identity(1,1), --�������
  phone varchar(20) not null,--�ֻ���                                                                                          --ְҵ
  height int ,--���
  profession varchar(10),--ְҵ
)
go
create table CircleOfFriends--����Ȧ��
(
userID int foreign key references UserInfo(UserID),
cofID int primary key identity(1,1),--���
cofContent nvarchar(250), --��Ϣ
imgUrl nvarchar(100),  --ͼƬ��ַ
comments nvarchar(250),--����
praiseCount int default(0),--���޴���
SendTime datetime,--����ʱ��
)


select * from CircleOfFriends
select u.headImgUrl,u.petname,u.age,u.[address],u.marriageState,c.cofContent,c.SendTime,cofID from UserInfo u,CircleOfFriends c where u.userId=c.userID and cofID=3
select UserInfo.userID,cofID, petname,cofContent,SendTime from UserInfo ,CircleOfFriends  where UserInfo.userId=CircleOfFriends.userID
go
create table Questions--�ʴ��
(
queID int primary key identity(1,1),--������
queTitle nvarchar(100) not null,--����
queContent nvarchar(1000)  not null,--��������
queUserAskID int not null foreign key references UserInfo(UserID) ,--�����˱��
queDatetime datetime default(getdate()) not null,--����ʱ��
)
go
create table Answer--�ظ���
(
ansID int primary key identity(1,1),--�ظ����
cofsID int foreign key references CircleOfFriends(CofID) not null,--����Ȧ������
ansContent nvarchar(1000) not null ,--�ظ�����
ansUserID int foreign key references UserInfo(UserID) not null,--�ظ���
ansDatetime datetime,--�ظ�ʱ��
)
select * from Answer

select u.headImgUrl, u.petname,u.age,u.[address],u.marriageState,c.cofContent,c.SendTime ,(select petname from UserInfo where userID=a.ansUserID) name from
 CircleOfFriends c,UserInfo u, Answer a where c.userID=u.userId and a.ansUserID=u.userId
go
create table HelloContent--���к�����
(
helConID int primary key identity(1,1),
helConContent nvarchar(1000) not null,--�к����ݣ���һ��ʱֱ�Ӳ��ң�
)

go
create table HelloContent--���к�����
(
helConID int primary key identity(1,1),
helConContent nvarchar(1000) not null,--�к����ݣ���һ��ʱֱ�Ӳ��ң�
)
go
insert HelloContent values('ÿ�����������Լ���������һ��')
insert HelloContent values('�簲���ѣ�������ҵ�ף��;')
insert HelloContent values('һ���ʺ�һ��Ը����һ��ף���������г��п���ӿ�֡���')
insert HelloContent values('�簲��̫�����簲�������簲���й����簲���װ�������')
insert HelloContent values('��������ЦһЦ��������־���ã�')
insert HelloContent values('һ�����������㣬���ַ�ȥ����Ϣ��')
insert HelloContent values('ʱ���������ã�ң���ʻ��̲ݣ�')
insert HelloContent values('����˯�ۣ����������������ӣ�����ǰ')
select * from HelloContent
go
create table Hello--���к���
(
helID int primary key identity(1,1),--���к����
helUserID int not null foreign key references UserInfo(UserID) ,--�����к��˱��
helUserIDHello int not null foreign key references UserInfo(UserID) ,--���к��˱��
helContentID int foreign key references HelloContent(HelConID),--�к�����ID
helloState bit
)
go
insert into Hello values(100000,100002,4,0)
insert into Hello values(100000,100003,2,0)
insert into Hello values(100000,100002,1,0)
select * from Hello
select* from UserInfo
select COUNT(1) from Hello where helUserID =10000 and helloState=0
select COUNT(*),helUserIDHello from Hello,UserInfo where UserInfo.userId=helUserIDHello group by helUserIDHello,helUserIDHello
select petname,headImgUrl,helloState,helUserIDHello ,COUNT(*) cou from Hello ,UserInfo  where UserInfo.userId=helUserIDHello  and helUserID =100000   group by petname,headImgUrl,helloState,helUserIDHello
select * from Hello,HelloContent,UserInfo where Hello.helContentID=HelloContent.helConID and helUserID=100000 and helUserIDHello=100002 and UserInfo.userId=helUserIDHello
--update Hello set helloState=1 where helUserID =100000 and helUserIDHello=100002
select * from Hello
go
--select * from PictureInfo where  PictureInfo.userId='1'and PictureInfo.picstar=1
create table PictureInfo--ͼƬ��Ϣ��
(
userID int foreign key references UserInfo(UserID),
pictureID int primary key identity(1,1), --ͼƬ���
pictureType nvarchar(50), --ͼƬ���
pictureUrl nvarchar(150) ,--ͼƬ·��
picstar int
)
go
create table Admins--����Ա��
(
adminid int identity(1,1),--���
number nvarchar(20) ,--�˺�
pwd nvarchar(20), --����

)

insert into Admins values('admin','admin')
select * from Admins
go
create table Lovers--�������
(
userID int foreign key references UserInfo(UserID),--�û����
LoversID int primary key identity(1,1), --������
apply bit ,--����״̬
lover bit --����״̬
)
select * from Lovers
go
create table Email
(
emailId int primary key identity(1,1),
emailContent nvarchar(200),--�ʼ�����
smtp nvarchar(50),--SMTP������
emailUid nvarchar(50),--�����ʺ�
emailPwd nvarchar(50),--��������
emailName nvarchar(50),--��������
)

go
insert into Email values('�°������������ǳ��ź���������Υ����վ�涨�������˺��ѱ���ͣ������������ϵ�ͷ���Ա��','smtp.163.com',
'17638136170@163.com','qing19960527','�°���')
go
select * from Email



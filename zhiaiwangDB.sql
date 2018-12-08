if exists(select 1 from sysdatabases where name='ByloveDB')
drop database ByloveDB
go
create database ByloveDB
on
(name='ByloveDB',filename='G:\ByloveDB.mdf',size=5MB)
go
use ByloveDB

go

create table UserInfo--用户表
(
  userId int primary key identity(10000,1), --用户id
  petname nvarchar(50)  unique,--用户昵称
  gender nvarchar(4) not null,--性别
  education nvarchar(20) ,--学历
  age int default(18) ,--年龄
  height int default(170),--身高
  salary nvarchar(20),--年薪
  marriageState nvarchar(20) not null ,--婚况
  phone varchar(20)   unique ,--手机号
  pwd nvarchar(150) ,--密码
  headImgUrl nvarchar(200) default('woman.jpg'), --头像
  member bit default(0),--是否会员
  name nvarchar(20) ,--真实名
  monologue nvarchar(200),--内心独白
  weights int  ,--体重
  zodiac nvarchar(20) ,--生肖
  star nvarchar(50) ,--星座
  blood nvarchar(20)  ,--血型
  nation nvarchar(20),--民族
  school nvarchar(20)  ,--毕业院校
  major nvarchar(20)  ,--专业
  hobby nvarchar(100)  ,--兴趣爱好
  family nvarchar(100)  ,--家庭状况
  [address] nvarchar(100) ,--地址
  birthday date,--出生日期
  email nvarchar(30),--邮箱
    wwixinID varchar(50),--微信号26
  userState bit default(0),--用户状态
  addTime datetime default(getdate())--注册时间
  )

  go
insert into UserInfo values('奇葩女神i' ,'男' ,'十分钟' ,18 ,160 ,'50-100万元' ,'结过婚' ,'17637466195' ,'123456' ,'t0151226d781660269b.jpg' ,0 ,'小龚' ,'我爱你就是爱你，没道理' ,140 ,'蛇' ,'金牛' ,'B型' ,'汉族' ,'清华大学' ,'记者' ,'兴趣爱好游戏' ,'已购房' ,'地址' ,'2000/1/2 0:00:00' ,'12306@163.com','TEX889',0,2017-05-27)
insert into UserInfo values('、玫瑰花枝总能把手刺痛' ,'男' ,'十分钟' ,18 ,160 ,'十万' ,'婚况单身' ,'13525355301' ,'13525355301' ,'t012aa3c6e80e774dc9.jpg' ,0 ,'暗影主宰' ,'内心独白没有' ,160 ,'龙' ,'金牛' ,'o' ,'汉族' ,'毕业院校没有' ,'专业游民' ,'兴趣爱好游戏' ,'家庭状况不好' ,'地址' ,'2000/1/2 0:00:00' ,'12306@163.com','PPO889',0,2017-05-27)
insert into UserInfo values('以自我为中心ろ' ,'女' ,'二分钟' ,10 ,160 ,'十万' ,'婚况单身' ,'13525355302' ,'123456' ,'t01385edf1bced5fa90.jpg' ,0 ,'暴君' ,'别打我' ,0 ,'蛇' ,'白羊' ,'o' ,'汉族' ,'毕业院校没有' ,'专业游民' ,'兴趣爱好游戏' ,'家庭状况不好' ,'地址' ,'2000/1/2 0:00:00' ,'12306@163.com','',0,2017-05-27)
insert into UserInfo values('今夜谁无眠）' ,'女' ,'十分钟' ,11 ,160 ,'十万' ,'婚况单身' ,'13525355303' ,'13525355303' ,'t0121c248a899ad2530.jpg' ,0 ,'黑暗暴君' ,'谁敢打我' ,120 ,'龙' ,'金牛' ,'o' ,'汉族' ,'毕业院校王者峡谷' ,'专业游民' ,'兴趣爱好游戏' ,'家庭状况不好' ,'地址蓝方河道' ,'2000/1/2 0:00:00' ,'12306@163.com','YYUT885',0,2017-05-27)
insert into UserInfo values('左耳@' ,'女' ,'二分钟' ,20 ,170 ,'十万' ,'婚况单身' ,'15136960291' ,'15136960291' ,'t0192c2c2b42f5f5626.jpg' ,0 ,'花木兰' ,'姐可是传说' ,110 ,'虎' ,'双子' ,'o' ,'汉族' ,'毕业院校没有' ,'毕业院校王者峡谷' ,'兴趣爱好游戏' ,'家庭状况不好' ,'地址' ,'2000/1/2 0:00:00' ,'12306@163.com','',0,2017-05-27)
insert into UserInfo values('铠' ,'男' ,'十分钟' ,25 ,187 ,'二十万' ,'婚况单身' ,'15136960292' ,'15136960292' ,'t01479be2c2ab5edefb.jpg' ,0 ,'寂灭之刃铠' ,'忘记了自己孤身一人' ,130 ,'马' ,'金牛' ,'o' ,'汉族' ,'毕业院校王者峡谷' ,'专业游民' ,'兴趣爱好游戏' ,'家庭状况不好' ,'地址蓝方河道' ,'2000/1/2 0:00:00' ,'12306@163.com','MMpLL008',0,2017-05-27)
insert into UserInfo values('獨哘亼' ,'男' ,'二分钟' ,22 ,185 ,'三十万' ,'婚况单身' ,'15136960293' ,'15136960293' ,'t01abed2832e0daa3fe.jpg' ,0 ,'暗影刀锋兰陵王' ,'刀锋所划之地，便是疆土' ,0 ,'蛇' ,'水平' ,'o' ,'汉族' ,'毕业院校王者峡谷' ,'专业游民' ,'兴趣爱好游戏' ,'家庭状况不好' ,'地址' ,'2000/1/2 0:00:00' ,'12306@163.com','KKDF776',0,2017-05-27)
insert into UserInfo values('゛私有德愛ヽ°' ,'男' ,'十分钟' ,28 ,191,'二十万' ,'婚况单身' ,'15136960294' ,'15136960294' ,'t01ce112d54f2050cd4.jpg' ,0 ,'苏烈' ,'我在，家就在' ,0 ,'牛' ,'金牛' ,'o' ,'汉族' ,'毕业院校王者峡谷' ,'专业游民' ,'兴趣爱好游戏' ,'家庭状况良' ,'地址蓝方河道' ,'2000/1/2 0:00:00' ,'12306@163.com','FDS33',0,2017-05-27)
insert into UserInfo values('曾经蜡笔没有小新*' ,'男' ,'二分钟' ,16 ,165 ,'十万' ,'婚况单身' ,'15136950275' ,'15136960295' ,'t017ef8a5d903c1c10f.jpg' ,0 ,'百里玄策' ,'全场醒目担当' ,140,'蛇' ,'双子' ,'o' ,'汉族' ,'毕业院校王者峡谷' ,'刺客' ,'兴趣爱好游戏' ,'家庭状况良' ,'地址' ,'2000/1/2 0:00:00' ,'12306@163.com','Smile_1546337448',0,2017-05-27)
insert into UserInfo values('普通小姐&' ,'女' ,'二分钟' ,16 ,165 ,'十万' ,'婚况单身' ,'15136910295' ,'15136910295' ,'t016076f5b4416693a7.jpg' ,0 ,'小米' ,'全场醒目担当' ,140,'蛇' ,'双子' ,'o' ,'汉族' ,'毕业院校王者峡谷' ,'刺客' ,'兴趣爱好游戏' ,'家庭状况良' ,'地址' ,'2000/1/2 0:00:00' ,'12306@163.com','Smile_1546337448',0,2017-05-27)
insert into UserInfo values('再回首恍然如梦@' ,'女' ,'二分钟' ,16 ,165 ,'十万' ,'婚况单身' ,'15176960295' ,'15176960295' ,'t01331fd362f464e66f.jpg' ,0 ,'花花' ,'全场醒目担当' ,140,'蛇' ,'双子' ,'o' ,'汉族' ,'毕业院校王者峡谷' ,'刺客' ,'兴趣爱好游戏' ,'家庭状况良' ,'地址' ,'2000/1/2 0:00:00' ,'12306@163.com','Smile_1546337448',0,2017-05-27)

  select  * from UserInfo where userId <> 1 and gender<> UserInfo.gender

   select * from UserInfo
   go
create PROCEDURE [dbo].[GetDatasByPaging] 
	@pagesize int =10,--每页行数
    @pageindex int =0,--第几页
    @tablename varchar(200),--数据筛选的表或表的联合
    @orderstr varchar(100),--排序表达式
    @pk  varchar(20),--主键
    @columns varchar(600)--选择的列
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
create table Menu--栏目表
(
  menuId int primary key identity(1,1),--栏目id
  parentId int not null,--栏目父级Id
  menuLevel int,--栏目级别
  menuName nvarchar(20) not null,--栏目名称
  menuUrl nvarchar(80) ,--栏目地址
)
go
create table ActivitiesInfo--活动表
(
activitiesID int primary key identity(1,1), --编号
activitiesPic nvarchar(100),--活动海报
activitiesTit nvarchar(50), --标题
activitiesContent nvarchar(200), --内容
activitiesTime date, --活动时间
activitiesAddress nvarchar(150), --地址
inCount int , --参与人数量
Moneys int --活动费用
)
insert into ActivitiesInfo values('音乐活动.jpg','相亲大会','大龄青年，快来相亲','2018.03.20','平顶山',100,200)
insert into ActivitiesInfo values('音乐活动.jpg' ,'第二十二期 中国红娘网' ,'大龄青年，快来相亲' ,'2018/4/20 0:00:00' ,'平顶山' ,100,0)
insert into ActivitiesInfo values('三生三世.jpg' ,'三生三世314' ,'活动亮点：（1）1分钟交谈，我想认识你。（2）看一场电影，放松一下疲惫的身心。（3）有限的时间认识对的人，轻松的游戏了解对的人，一个无压力有趣味的活动。' ,'2018/3/20 0:00:00' ,'石桥路468号 杭州星际影城（石桥店）10号激光厅 (大润发对面)' ,100,0)
insert into ActivitiesInfo values('爱情对对碰.jpg' ,'第128届“中国红娘日' ,'大龄青年，快来相亲' ,'2018/3/20 0:00:00' ,'江干区天城东路77号创意大厦B座4楼' ,9,0)
insert into ActivitiesInfo values('红娘帮帮.jpg' ,'第十九期 中国红娘网' ,'大龄青年，快来相亲' ,'2018/3/20 0:00:00' ,'西溪湿地·洪园' ,9,0)
insert into ActivitiesInfo values('黄龙洞.jpg' ,'【花漾三月 品茗结缘】' ,'大龄青年，快来相亲' ,'2018/3/20 0:00:00' ,'平顶山' ,9,100)
insert into ActivitiesInfo values('其实我没那么酷.jpg' ,'【老钱红线工作室】' ,'大龄青年，快来相亲' ,'2018/3/28 0:00:00' ,'咖啡星乐（杭州市下城区朝晖路168—8号）' ,9,0)
insert into ActivitiesInfo values('全程热恋.jpg' ,'【都市精英，迎新春】' ,'大龄青年，快来相亲' ,'2018/5/20 0:00:00' ,'万松岭路81号' ,9,0)
insert into ActivitiesInfo values('万松书院.jpg' ,'若要爱，尽情爱' ,'大龄青年，快来相亲' ,'2018/3/20 0:00:00' ,'平顶山' ,9,0)
insert into ActivitiesInfo values('新年.jpg' ,'最美季节遇见你' ,'大龄青年，快来相亲' ,'2018/3/20 0:00:00' ,'皋亭山千桃园' ,9,0)
insert into ActivitiesInfo values('音乐活动.jpg' ,'相亲大会' ,'大龄青年，快来相亲' ,'2018/3/20 0:00:00' ,'平顶山' ,100,0)
insert into ActivitiesInfo values('音乐活动.jpg' ,'2018相亲大会' ,'大龄青年，快来相亲' ,'2018/3/20 0:00:00' ,'平顶山' ,100,0)

go
create table Registration--活动报名表
(
  userID int foreign key references UserInfo(UserID),--用户编号
  activitiesID int foreign key references ActivitiesInfo(ActivitiesID),--活动编号
  regId int primary key identity(1,1), --报名编号
  phone varchar(20) not null,--手机号                                                                                          --职业
  height int ,--身高
  profession varchar(10),--职业
)
go
create table CircleOfFriends--交友圈表
(
userID int foreign key references UserInfo(UserID),
cofID int primary key identity(1,1),--编号
cofContent nvarchar(250), --消息
imgUrl nvarchar(100),  --图片地址
comments nvarchar(250),--评论
praiseCount int default(0),--点赞次数
SendTime datetime,--发布时间
)


select * from CircleOfFriends
select u.headImgUrl,u.petname,u.age,u.[address],u.marriageState,c.cofContent,c.SendTime,cofID from UserInfo u,CircleOfFriends c where u.userId=c.userID and cofID=3
select UserInfo.userID,cofID, petname,cofContent,SendTime from UserInfo ,CircleOfFriends  where UserInfo.userId=CircleOfFriends.userID
go
create table Questions--问答表
(
queID int primary key identity(1,1),--问题编号
queTitle nvarchar(100) not null,--标题
queContent nvarchar(1000)  not null,--问题内容
queUserAskID int not null foreign key references UserInfo(UserID) ,--发问人编号
queDatetime datetime default(getdate()) not null,--发问时间
)
go
create table Answer--回复表
(
ansID int primary key identity(1,1),--回复编号
cofsID int foreign key references CircleOfFriends(CofID) not null,--交友圈问题编号
ansContent nvarchar(1000) not null ,--回复内容
ansUserID int foreign key references UserInfo(UserID) not null,--回复人
ansDatetime datetime,--回复时间
)
select * from Answer

select u.headImgUrl, u.petname,u.age,u.[address],u.marriageState,c.cofContent,c.SendTime ,(select petname from UserInfo where userID=a.ansUserID) name from
 CircleOfFriends c,UserInfo u, Answer a where c.userID=u.userId and a.ansUserID=u.userId
go
create table HelloContent--打招呼内容
(
helConID int primary key identity(1,1),
helConContent nvarchar(1000) not null,--招呼内容（换一组时直接查找）
)

go
create table HelloContent--打招呼内容
(
helConID int primary key identity(1,1),
helConContent nvarchar(1000) not null,--招呼内容（换一组时直接查找）
)
go
insert HelloContent values('每天醒来告诉自己：理由少一点')
insert HelloContent values('早安朋友，请接受我的祝福;')
insert HelloContent values('一声问候，一个愿望，一串祝福望你心中常有快乐涌现……')
insert HelloContent values('早安，太阳，早安，地球，早安，中国，早安，亲爱的猪猪')
insert HelloContent values('早上醒来笑一笑，心情快乐精神好；')
insert HelloContent values('一觉醒来好想你，随手发去短信息，')
insert HelloContent values('时光依旧美好，遥看鲜花绿草，')
insert HelloContent values('睁开睡眼，整理衣衫，精神抖擞，大步向前')
select * from HelloContent
go
create table Hello--打招呼表
(
helID int primary key identity(1,1),--打招呼编号
helUserID int not null foreign key references UserInfo(UserID) ,--被打招呼人编号
helUserIDHello int not null foreign key references UserInfo(UserID) ,--打招呼人编号
helContentID int foreign key references HelloContent(HelConID),--招呼内容ID
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
create table PictureInfo--图片信息表
(
userID int foreign key references UserInfo(UserID),
pictureID int primary key identity(1,1), --图片编号
pictureType nvarchar(50), --图片类别
pictureUrl nvarchar(150) ,--图片路径
picstar int
)
go
create table Admins--管理员表
(
adminid int identity(1,1),--编号
number nvarchar(20) ,--账号
pwd nvarchar(20), --密码

)

insert into Admins values('admin','admin')
select * from Admins
go
create table Lovers--红娘服务
(
userID int foreign key references UserInfo(UserID),--用户编号
LoversID int primary key identity(1,1), --申请编号
apply bit ,--申请状态
lover bit --红娘状态
)
select * from Lovers
go
create table Email
(
emailId int primary key identity(1,1),
emailContent nvarchar(200),--邮件内容
smtp nvarchar(50),--SMTP服务器
emailUid nvarchar(50),--邮箱帐号
emailPwd nvarchar(50),--邮箱密码
emailName nvarchar(50),--发件名称
)

go
insert into Email values('致爱网提醒您：非常遗憾，由于您违反网站规定，您的账号已被封停，如需解封请联系客服人员。','smtp.163.com',
'17638136170@163.com','qing19960527','致爱网')
go
select * from Email



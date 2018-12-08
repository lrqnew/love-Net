if exists(select 1 from sysdatabases where name='ByloveDB')
drop database ByloveDB
go
create database ByloveDB
on
(name='ByloveDB',filename='F:\MyDB\ByloveDB.mdf',size=5MB)
go
use ByloveDB

go
create table UserInfo--用户表
(
  UserId int primary key identity(1,1), --用户id
  Petname varchar(50) not null unique,--用户昵称
  Gender varchar(4) not null,--性别
  Education varchar(20) not null,--学历
  Age int not null,--年龄
  Height int,--身高
  Salary decimal(10,2),--年薪
  MarriageState varchar(20) not null ,--婚况
  Phone varchar(20)  not null unique ,--手机号
  Pwd varchar(30) not null,--密码
  HeadImgUrl varchar(200), --头像
  Member bit,--是否会员
Name varchar(20) not null,--用户名
Monologue varchar(200),--内心独白
Weights int  not null,--体重
Zodiac varchar(2) not null,--生肖
Star varchar(10) not null,--星座
Blood varchar(2) not null,--血型
Nation varchar(20) not null,--民族
School varchar(20) not null,--毕业院校
major varchar(20) not null,--专业
Hobby varchar(100) not null,--兴趣爱好
Family varchar(100) not null,--家庭状况
[Address] varchar(100) not null,--地址
)
go
create table Menu--栏目表
(
  MenuId int primary key identity(1,1),--栏目id
  ParentId int not null,--栏目父级Id
  MenuLevel int,--栏目级别
  MenuName varchar(20) not null,--栏目名称
  MenuUrl varchar(80) ,--栏目地址
)
go
create table ActivitiesInfo--活动表
(
ActivitiesID int primary key identity(1,1), --编号
ActivitiesTit varchar(50), --标题
ActivitiesContent varchar(200), --内容
ActivitiesTime date, --活动时间
ActivitiesAddress varchar(150), --地址
InCount int  --参与人数量
)
go
create table Registration--活动报名表
(
  UserID int foreign key references UserInfo(UserID),
  ActivitiesID int foreign key references ActivitiesInfo(ActivitiesID),--活动编号
  RegId int primary key identity(1,1), --报名编号
  Phone varchar(20) not null,--手机号                                                --身高                                            --职业
  Picture varchar(50)--照片
)
go
create table CircleOfFriends--交友圈表
(
UserID int foreign key references UserInfo(UserID),
CofID int primary key identity(1,1),--编号
CofContent varchar(250), --消息
ImgUrl varchar(100),  --图片地址
Comments varchar(250),--评论
PraiseCount int --点赞次数
)

go
create table Questions--问答表
(
QueID int primary key identity(1,1),--问题编号
QueTitle nvarchar(100) not null,--标题
QueContent nvarchar(1000)  not null,--问题内容
QueUserAskID int not null foreign key references UserInfo(UserID) ,--发问人编号
QueDatetime datetime default(getdate()) not null,--发问时间
)

go
create table Answer--回复表
(
AnsID int primary key identity(1,1),--回复编号
AnsQuesstionID int foreign key references Questions(QueID) not null,--问答问题编号
CofsID int foreign key references CircleOfFriends(CofID) not null,--交友圈问题编号
AnsContent nvarchar(1000) not null ,--回复内容
AnsUserID int foreign key references UserInfo(UserID) not null,--回复人
AnsDatetime datetime default(getdate()) not null,--回复时间
)

go
create table HelloContent--打招呼内容
(
HelConID int primary key identity(1,1),
HelConContent nvarchar(1000) not null,--招呼内容（换一组时直接查找）
)

go
create table Hello--打招呼表
(
HelID int primary key identity(1,1),--打招呼编号
HelUserID int not null foreign key references UserInfo(UserID) ,--被打招呼人编号
HelUserIDHello int not null foreign key references UserInfo(UserID) ,--打招呼人编号
HelContentID int foreign key references HelloContent(HelConID),--招呼内容ID
)

go
create table PictureInfo--图片信息表
(
 UserID int foreign key references UserInfo(UserID),
PictureID int primary key identity(1,1), --图片编号
PictureType varchar(50), --图片类别
PictureUrl varchar(150) --图片路径
)
go
create table Admins--管理员表
(
Adminid int identity(1,1),--编号
Number int ,--账号
Pwd int --密码
)
if exists(select 1 from sysdatabases where name='ByloveDB')
drop database ByloveDB
go
create database ByloveDB
on
(name='ByloveDB',filename='F:\MyDB\ByloveDB.mdf',size=5MB)
go
use ByloveDB

go
create table UserInfo--�û���
(
  UserId int primary key identity(1,1), --�û�id
  Petname varchar(50) not null unique,--�û��ǳ�
  Gender varchar(4) not null,--�Ա�
  Education varchar(20) not null,--ѧ��
  Age int not null,--����
  Height int,--���
  Salary decimal(10,2),--��н
  MarriageState varchar(20) not null ,--���
  Phone varchar(20)  not null unique ,--�ֻ���
  Pwd varchar(30) not null,--����
  HeadImgUrl varchar(200), --ͷ��
  Member bit,--�Ƿ��Ա
Name varchar(20) not null,--�û���
Monologue varchar(200),--���Ķ���
Weights int  not null,--����
Zodiac varchar(2) not null,--��Ф
Star varchar(10) not null,--����
Blood varchar(2) not null,--Ѫ��
Nation varchar(20) not null,--����
School varchar(20) not null,--��ҵԺУ
major varchar(20) not null,--רҵ
Hobby varchar(100) not null,--��Ȥ����
Family varchar(100) not null,--��ͥ״��
[Address] varchar(100) not null,--��ַ
)
go
create table Menu--��Ŀ��
(
  MenuId int primary key identity(1,1),--��Ŀid
  ParentId int not null,--��Ŀ����Id
  MenuLevel int,--��Ŀ����
  MenuName varchar(20) not null,--��Ŀ����
  MenuUrl varchar(80) ,--��Ŀ��ַ
)
go
create table ActivitiesInfo--���
(
ActivitiesID int primary key identity(1,1), --���
ActivitiesTit varchar(50), --����
ActivitiesContent varchar(200), --����
ActivitiesTime date, --�ʱ��
ActivitiesAddress varchar(150), --��ַ
InCount int  --����������
)
go
create table Registration--�������
(
  UserID int foreign key references UserInfo(UserID),
  ActivitiesID int foreign key references ActivitiesInfo(ActivitiesID),--����
  RegId int primary key identity(1,1), --�������
  Phone varchar(20) not null,--�ֻ���                                                --���                                            --ְҵ
  Picture varchar(50)--��Ƭ
)
go
create table CircleOfFriends--����Ȧ��
(
UserID int foreign key references UserInfo(UserID),
CofID int primary key identity(1,1),--���
CofContent varchar(250), --��Ϣ
ImgUrl varchar(100),  --ͼƬ��ַ
Comments varchar(250),--����
PraiseCount int --���޴���
)

go
create table Questions--�ʴ��
(
QueID int primary key identity(1,1),--������
QueTitle nvarchar(100) not null,--����
QueContent nvarchar(1000)  not null,--��������
QueUserAskID int not null foreign key references UserInfo(UserID) ,--�����˱��
QueDatetime datetime default(getdate()) not null,--����ʱ��
)

go
create table Answer--�ظ���
(
AnsID int primary key identity(1,1),--�ظ����
AnsQuesstionID int foreign key references Questions(QueID) not null,--�ʴ�������
CofsID int foreign key references CircleOfFriends(CofID) not null,--����Ȧ������
AnsContent nvarchar(1000) not null ,--�ظ�����
AnsUserID int foreign key references UserInfo(UserID) not null,--�ظ���
AnsDatetime datetime default(getdate()) not null,--�ظ�ʱ��
)

go
create table HelloContent--���к�����
(
HelConID int primary key identity(1,1),
HelConContent nvarchar(1000) not null,--�к����ݣ���һ��ʱֱ�Ӳ��ң�
)

go
create table Hello--���к���
(
HelID int primary key identity(1,1),--���к����
HelUserID int not null foreign key references UserInfo(UserID) ,--�����к��˱��
HelUserIDHello int not null foreign key references UserInfo(UserID) ,--���к��˱��
HelContentID int foreign key references HelloContent(HelConID),--�к�����ID
)

go
create table PictureInfo--ͼƬ��Ϣ��
(
 UserID int foreign key references UserInfo(UserID),
PictureID int primary key identity(1,1), --ͼƬ���
PictureType varchar(50), --ͼƬ���
PictureUrl varchar(150) --ͼƬ·��
)
go
create table Admins--����Ա��
(
Adminid int identity(1,1),--���
Number int ,--�˺�
Pwd int --����
)
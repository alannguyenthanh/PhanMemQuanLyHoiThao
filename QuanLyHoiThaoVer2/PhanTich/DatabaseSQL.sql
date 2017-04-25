if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DANG_KY') and o.name = 'FK_DANG_KY_RELATIONS_SINH_VIE')
alter table DANG_KY
   drop constraint FK_DANG_KY_RELATIONS_SINH_VIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DANG_KY') and o.name = 'FK_DANG_KY_RELATIONS_MON_THI')
alter table DANG_KY
   drop constraint FK_DANG_KY_RELATIONS_MON_THI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KET_QUA_CA_NHAN') and o.name = 'FK_KET_QUA__RELATIONS_SINH_VIE')
alter table KET_QUA_CA_NHAN
   drop constraint FK_KET_QUA__RELATIONS_SINH_VIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KET_QUA_CA_NHAN') and o.name = 'FK_KET_QUA__RELATIONS_MON_THI')
alter table KET_QUA_CA_NHAN
   drop constraint FK_KET_QUA__RELATIONS_MON_THI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KET_QUA_NHOM') and o.name = 'FK_KET_QUA__RELATIONS_NHOM')
alter table KET_QUA_NHOM
   drop constraint FK_KET_QUA__RELATIONS_NHOM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KET_QUA_NHOM') and o.name = 'FK_KET_QUA__RELATIONS_MON_THI')
alter table KET_QUA_NHOM
   drop constraint FK_KET_QUA__RELATIONS_MON_THI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KHOAN_CHI') and o.name = 'FK_KHOAN_CH_RELATIONS_KET_QUA_')
alter table KHOAN_CHI
   drop constraint FK_KHOAN_CH_RELATIONS_KET_QUA_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KHOAN_CHI') and o.name = 'FK_KHOAN_CH_RELATIONS_KET_QUA_')
alter table KHOAN_CHI
   drop constraint FK_KHOAN_CH_RELATIONS_KET_QUA_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KHOAN_THU') and o.name = 'FK_KHOAN_TH_RELATIONS_LOP')
alter table KHOAN_THU
   drop constraint FK_KHOAN_TH_RELATIONS_LOP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LICH_THI') and o.name = 'FK_LICH_THI_RELATIONS_SINH_VIE')
alter table LICH_THI
   drop constraint FK_LICH_THI_RELATIONS_SINH_VIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LICH_THI') and o.name = 'FK_LICH_THI_RELATIONS_MON_THI')
alter table LICH_THI
   drop constraint FK_LICH_THI_RELATIONS_MON_THI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LOP') and o.name = 'FK_LOP_RELATIONS_NGANH')
alter table LOP
   drop constraint FK_LOP_RELATIONS_NGANH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHOM') and o.name = 'FK_NHOM_RELATIONS_LOP')
alter table NHOM
   drop constraint FK_NHOM_RELATIONS_LOP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHOM') and o.name = 'FK_NHOM_RELATIONS_MON_THI')
alter table NHOM
   drop constraint FK_NHOM_RELATIONS_MON_THI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SINH_VIEN') and o.name = 'FK_SINH_VIE_RELATIONS_NHOM')
alter table SINH_VIEN
   drop constraint FK_SINH_VIE_RELATIONS_NHOM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SINH_VIEN') and o.name = 'FK_SINH_VIE_RELATIONS_LOP')
alter table SINH_VIEN
   drop constraint FK_SINH_VIE_RELATIONS_LOP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TAI_KHOAN') and o.name = 'FK_TAI_KHOA_RELATIONS_CAN_BO')
alter table TAI_KHOAN
   drop constraint FK_TAI_KHOA_RELATIONS_CAN_BO
go

ALTER TABLE SINH_VIEN
DROP COLUMN MA_NHOM;

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TRONG_TAI') and o.name = 'FK_TRONG_TA_RELATIONS_MON_THI')
alter table TRONG_TAI
   drop constraint FK_TRONG_TA_RELATIONS_MON_THI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CAN_BO')
            and   type = 'U')
   drop table CAN_BO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DANG_KY')
            and   name  = 'RELATIONSHIP_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index DANG_KY.RELATIONSHIP_11_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DANG_KY')
            and   name  = 'RELATIONSHIP_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index DANG_KY.RELATIONSHIP_10_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DANG_KY')
            and   type = 'U')
   drop table DANG_KY
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KET_QUA_CA_NHAN')
            and   name  = 'RELATIONSHIP_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index KET_QUA_CA_NHAN.RELATIONSHIP_9_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KET_QUA_CA_NHAN')
            and   name  = 'RELATIONSHIP_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index KET_QUA_CA_NHAN.RELATIONSHIP_8_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KET_QUA_CA_NHAN')
            and   type = 'U')
   drop table KET_QUA_CA_NHAN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KET_QUA_NHOM')
            and   name  = 'RELATIONSHIP_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index KET_QUA_NHOM.RELATIONSHIP_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KET_QUA_NHOM')
            and   name  = 'RELATIONSHIP_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index KET_QUA_NHOM.RELATIONSHIP_6_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KET_QUA_NHOM')
            and   type = 'U')
   drop table KET_QUA_NHOM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KHOAN_CHI')
            and   name  = 'RELATIONSHIP_18_FK'
            and   indid > 0
            and   indid < 255)
   drop index KHOAN_CHI.RELATIONSHIP_18_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KHOAN_CHI')
            and   name  = 'RELATIONSHIP_17_FK'
            and   indid > 0
            and   indid < 255)
   drop index KHOAN_CHI.RELATIONSHIP_17_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHOAN_CHI')
            and   type = 'U')
   drop table KHOAN_CHI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KHOAN_THU')
            and   name  = 'RELATIONSHIP_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index KHOAN_THU.RELATIONSHIP_15_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHOAN_THU')
            and   type = 'U')
   drop table KHOAN_THU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LICH_THI')
            and   name  = 'RELATIONSHIP_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index LICH_THI.RELATIONSHIP_13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LICH_THI')
            and   name  = 'RELATIONSHIP_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index LICH_THI.RELATIONSHIP_12_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LICH_THI')
            and   type = 'U')
   drop table LICH_THI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LOP')
            and   name  = 'RELATIONSHIP_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index LOP.RELATIONSHIP_5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOP')
            and   type = 'U')
   drop table LOP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MON_THI')
            and   type = 'U')
   drop table MON_THI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NGANH')
            and   type = 'U')
   drop table NGANH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHOM')
            and   name  = 'RELATIONSHIP_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHOM.RELATIONSHIP_4_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHOM')
            and   name  = 'RELATIONSHIP_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHOM.RELATIONSHIP_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHOM')
            and   type = 'U')
   drop table NHOM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SINH_VIEN')
            and   name  = 'RELATIONSHIP_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index SINH_VIEN.RELATIONSHIP_2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SINH_VIEN')
            and   name  = 'RELATIONSHIP_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index SINH_VIEN.RELATIONSHIP_1_FK
go

ALTER TABLE sinh_vien
DROP COLUMN ma_nhom;
select * from SINH_VIEN

if exists (select 1
            from  sysobjects
           where  id = object_id('SINH_VIEN')
            and   type = 'U')
   drop table SINH_VIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TAI_KHOAN')
            and   name  = 'RELATIONSHIP_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index TAI_KHOAN.RELATIONSHIP_16_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TAI_KHOAN')
            and   type = 'U')
   drop table TAI_KHOAN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TRONG_TAI')
            and   name  = 'RELATIONSHIP_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index TRONG_TAI.RELATIONSHIP_14_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TRONG_TAI')
            and   type = 'U')
   drop table TRONG_TAI
go

/*==============================================================*/
/* Table: CAN_BO                                                */
/*==============================================================*/
create table CAN_BO (
   MA_CAN_BO            char(20)             not null,
   TEN_CAN_BO           varchar(50)          not null,
   CHUC_VU              varchar(50)          not null,
   constraint PK_CAN_BO primary key nonclustered (MA_CAN_BO)
)
go

/*==============================================================*/
/* Table: DANG_KY                                               */
/*==============================================================*/
create table DANG_KY (
   MA_MON               char(30)             not null,
   MSSV                 char(30)             not null,
   constraint PK_DANG_KY primary key nonclustered (MA_MON, MSSV)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on DANG_KY (
MSSV ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_11_FK on DANG_KY (
MA_MON ASC
)
go

/*==============================================================*/
/* Table: KET_QUA_CA_NHAN                                       */
/*==============================================================*/
create table KET_QUA_CA_NHAN (
   MA_MON               char(30)             not null,
   MSSV                 char(30)             not null,
   GIAI                 varchar(50)          not null,
   HUY_CHUONG           varchar(30)          not null,
   KHEN_THUONG_CA_NHAN  float                not null,
   constraint PK_KET_QUA_CA_NHAN primary key nonclustered (MA_MON, MSSV)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on KET_QUA_CA_NHAN (
MSSV ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_9_FK on KET_QUA_CA_NHAN (
MA_MON ASC
)
go

/*==============================================================*/
/* Table: KET_QUA_NHOM                                          */
/*==============================================================*/
create table KET_QUA_NHOM (
   MA_MON               char(30)             not null,
   MA_NHOM              char(30)             not null,
   GIAI                 varchar(50)          not null,
   HUY_CHUONG           varchar(30)          not null,
   KHEN_THUONG_NHOM     float                not null,
   constraint PK_KET_QUA_NHOM primary key nonclustered (MA_MON, MA_NHOM)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on KET_QUA_NHOM (
MA_NHOM ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on KET_QUA_NHOM (
MA_MON ASC
)
go

/*==============================================================*/
/* Table: KHOAN_CHI                                             */
/*==============================================================*/
create table KHOAN_CHI (
   MA_PHIEU_CHI         char(50)             not null,
   MA_MON               char(30)             not null,
   MSSV                 char(30)             not null,
   KET_MA_MON           char(30)             not null,
   MA_NHOM              char(30)             not null,
   NOI_DUNG_CHI         varchar(255)         not null,
   NGAY_CHI             datetime             not null,
   SO_TIEN              float                not null,
   constraint PK_KHOAN_CHI primary key nonclustered (MA_PHIEU_CHI)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_17_FK on KHOAN_CHI (
MA_MON ASC,
MSSV ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_18_FK on KHOAN_CHI (
KET_MA_MON ASC,
MA_NHOM ASC
)
go

/*==============================================================*/
/* Table: KHOAN_THU                                             */
/*==============================================================*/
create table KHOAN_THU (
   MA_PHIEU_THU         char(50)             not null,
   MA_LOP               char(30)             not null,
   NGUOI_NOP            varchar(50)          not null,
   SO_TIEN              float                not null,
   NGAY_THU             datetime             not null,
   DIA_CHI              varchar(255)         not null,
   constraint PK_KHOAN_THU primary key nonclustered (MA_PHIEU_THU)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_15_FK on KHOAN_THU (
MA_LOP ASC
)
go

/*==============================================================*/
/* Table: LICH_THI                                              */
/*==============================================================*/
create table LICH_THI (
   MA_MON               char(30)             not null,
   MSSV                 char(30)             not null,
   STT                  bigint               not null,
   NGAY_THI_DAU         datetime             not null,
   GIO_THI_DAU          datetime             not null,
   constraint PK_LICH_THI primary key nonclustered (MA_MON, MSSV)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on LICH_THI (
MSSV ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on LICH_THI (
MA_MON ASC
)
go

/*==============================================================*/
/* Table: LOP                                                   */
/*==============================================================*/
create table LOP (
   MA_LOP               char(30)             not null,
   MA_NGANH             char(30)             null,
   TEN_LOP              varchar(50)          not null,
   KHOA_HOC             char(30)             not null,
   constraint PK_LOP primary key nonclustered (MA_LOP)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on LOP (
MA_NGANH ASC
)
go

/*==============================================================*/
/* Table: MON_THI                                               */
/*==============================================================*/
create table MON_THI (
   MA_MON               char(30)             not null,
   TEN_MON              text                 not null,
   constraint PK_MON_THI primary key nonclustered (MA_MON)
)
go

/*==============================================================*/
/* Table: NGANH                                                 */
/*==============================================================*/
create table NGANH (
   MA_NGANH             char(30)             not null,
   TEN_NGANH            text                 not null,
   constraint PK_NGANH primary key nonclustered (MA_NGANH)
)
go

/*==============================================================*/
/* Table: NHOM                                                  */
/*==============================================================*/
create table NHOM (
   MA_NHOM              char(30)             not null,
   MA_LOP               char(30)             null,
   MA_MON               char(30)             null,
   SO_LUONG             int                  not null,
   constraint PK_NHOM primary key nonclustered (MA_NHOM)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on NHOM (
MA_LOP ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_4_FK on NHOM (
MA_MON ASC
)
go

/*==============================================================*/
/* Table: SINH_VIEN                                             */
/*==============================================================*/
create table SINH_VIEN (
   MSSV                 char(30)             not null,
   MA_NHOM              char(30)             null,
   MA_LOP               char(30)             null,
   TEN_SV               text                 not null,
   DIA_CHI              varchar(255)         not null,
   SDT                  varchar(30)          not null,
   EMAIL                char(50)             not null,
   constraint PK_SINH_VIEN primary key nonclustered (MSSV)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on SINH_VIEN (
MA_NHOM ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on SINH_VIEN (
MA_LOP ASC
)
go

/*==============================================================*/
/* Table: TAI_KHOAN                                             */
/*==============================================================*/
create table TAI_KHOAN (
   MA_CAN_BO            char(20)             not null,
   TEN_DANG_NHAP        char(100)            not null,
   MAT_KHAU             varchar(255)         not null,
   constraint PK_TAI_KHOAN primary key nonclustered (MA_CAN_BO, TEN_DANG_NHAP)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_16_FK on TAI_KHOAN (
MA_CAN_BO ASC
)
go

/*==============================================================*/
/* Table: TRONG_TAI                                             */
/*==============================================================*/
create table TRONG_TAI (
   MA_MON               char(30)             not null,
   MA_TRONG_TAI         char(30)             not null,
   TEN_TRONG_TAI        text                 not null,
   MAM                  char(10)             null,
   THOI_GIAN_THI_DAU    datetime             not null,
   constraint PK_TRONG_TAI primary key nonclustered (MA_MON, MA_TRONG_TAI)
)
go


/*==============================================================*/
/* Table: THU_CHI                                             */
/*==============================================================*/
create table THU_CHI (
   NOI_DUNG        text                 not null,
   SO_TIEN                  varchar(50)             null,
   THU_HOAC_CHI			bit		not null
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_14_FK on TRONG_TAI (
MA_MON ASC
)
go

alter table DANG_KY
   add constraint FK_DANG_KY_RELATIONS_SINH_VIE foreign key (MSSV)
      references SINH_VIEN (MSSV)
go

alter table DANG_KY
   add constraint FK_DANG_KY_RELATIONS_MON_THI foreign key (MA_MON)
      references MON_THI (MA_MON)
go

alter table KET_QUA_CA_NHAN
   add constraint FK_KET_QUA__RELATIONS_SINH_VIE foreign key (MSSV)
      references SINH_VIEN (MSSV)
go

alter table KET_QUA_CA_NHAN
   add constraint FK_KET_QUA__RELATIONS_MON_THI foreign key (MA_MON)
      references MON_THI (MA_MON)
go

alter table KET_QUA_NHOM
   add constraint FK_KET_QUA__RELATIONS_NHOM foreign key (MA_NHOM)
      references NHOM (MA_NHOM)
go

alter table KET_QUA_NHOM
   add constraint FK_KET_QUA__RELATIONS_MON_THI foreign key (MA_MON)
      references MON_THI (MA_MON)
go

alter table KHOAN_CHI
   add constraint FK_KHOAN_CH_RELATIONS_KET_QUA_ foreign key (MA_MON, MSSV)
      references KET_QUA_CA_NHAN (MA_MON, MSSV)
go

alter table KHOAN_CHI
   add constraint FK_KHOAN_CH_RELATIONS_KET_QUA_ foreign key (KET_MA_MON, MA_NHOM)
      references KET_QUA_NHOM (MA_MON, MA_NHOM)
go

alter table KHOAN_THU
   add constraint FK_KHOAN_TH_RELATIONS_LOP foreign key (MA_LOP)
      references LOP (MA_LOP)
go

alter table LICH_THI
   add constraint FK_LICH_THI_RELATIONS_SINH_VIE foreign key (MSSV)
      references SINH_VIEN (MSSV)
go

alter table LICH_THI
   add constraint FK_LICH_THI_RELATIONS_MON_THI foreign key (MA_MON)
      references MON_THI (MA_MON)
go

alter table LOP
   add constraint FK_LOP_RELATIONS_NGANH foreign key (MA_NGANH)
      references NGANH (MA_NGANH)
go

alter table NHOM
   add constraint FK_NHOM_RELATIONS_LOP foreign key (MA_LOP)
      references LOP (MA_LOP)
go

alter table NHOM
   add constraint FK_NHOM_RELATIONS_MON_THI foreign key (MA_MON)
      references MON_THI (MA_MON)
go

alter table SINH_VIEN
   add constraint FK_SINH_VIE_RELATIONS_NHOM foreign key (MA_NHOM)
      references NHOM (MA_NHOM)
go

alter table SINH_VIEN
   add constraint FK_SINH_VIE_RELATIONS_LOP foreign key (MA_LOP)
      references LOP (MA_LOP)
go

alter table TAI_KHOAN
   add constraint FK_TAI_KHOA_RELATIONS_CAN_BO foreign key (MA_CAN_BO)
      references CAN_BO (MA_CAN_BO)
go

alter table TRONG_TAI
   add constraint FK_TRONG_TA_RELATIONS_MON_THI foreign key (MA_MON)
      references MON_THI (MA_MON)
go

--NGANH
insert into NGANH values('httt', 'He thong thong tin');
insert into NGANH values('cntt', 'Cong nghe thong tin');
insert into NGANH values('ktpm', 'Ky thuat phan mem');

select * from NGANH

--LOP
insert into LOP values('DI1495A1', 'httt','He thong thong tin 1', '40');
insert into LOP values('DI1495A2', 'httt','He thong thong tin 2', '40');

select * from LOP

--CAN BO
insert into CAN_BO values('cb1', 'Tran Van An','admin');
insert into CAN_BO values('cb3', 'Tran Van Binh','admin');

delete FROM CAN_BO
WHERE MA_CAN_BO = 'cb3';
select *from CAN_BO;

select * from TAI_KHOAN;

--MON THI
insert into MON_THI values('bd', 'Bong da');
insert into MON_THI values('bc', 'Bong chuyen');
insert into MON_THI values('cl', 'Cau long');
insert into MON_THI values('bb', 'Bong ban');
insert into MON_THI values('br', 'Bong ro');
select * from MON_THI;

--TAI KHOAN
insert into TAI_KHOAN values('cb1', 'admin', '202cb962ac59075b964b07152d234b70');
select * from TAI_KHOAN;

UPDATE TAI_KHOAN
SET MAT_KHAU = '202cb962ac59075b964b07152d234b70'
WHERE TEN_DANG_NHAP = 'admin';

select * from SINH_VIEN
--DANG KY
select * from DANG_KY

--HIEN THI THONG TIN DANG KY
SELECT DANG_KY.MA_MON, SINH_VIEN.TEN_SV, MON_THI.TEN_MON
FROM ((DANG_KY
INNER JOIN SINH_VIEN ON DANG_KY.MSSV = SINH_VIEN.MSSV)
INNER JOIN MON_THI ON DANG_KY.MA_MON = MON_THI.MA_MON)
WHERE DANG_KY.MA_MON LIKE 'bc' OR SINH_VIEN.TEN_SV LIKE 't';

SELECT * FROM KET_QUA_CA_NHAN

select * from LOP
select * from SINH_VIEN
insert into SINH_VIEN values('b1410153', 'DI1495A1', 'Nguyen Minh Tuan', 'abcd', '0934156213', 'tuanb1410153@student.ctu.edu.vn');
insert into SINH_VIEN values('b1405456', 'DI1495A2', 'Bui Minh Sang', 'abcd', '0934654654', 'sangb1405456@student.ctu.edu.vn');
insert into SINH_VIEN values('b1411656', 'DI1495A1', 'Vo Tuan Minh', 'abcd', '0934465465', 'minhb1411656@student.ctu.edu.vn');

select * from DANG_KY
select * from MON_THI

insert into DANG_KY values('bc', 'b1411656');
insert into DANG_KY values('cl', 'b1411656');
insert into DANG_KY values('bb', 'b1410153');
insert into DANG_KY values('cl', 'b1405456');

SELECT DANG_KY.MSSV, SINH_VIEN.TEN_SV 
                    FROM DANG_KY
                    INNER JOIN SINH_VIEN ON DANG_KY.MSSV = SINH_VIEN.MSSV
                    WHERE DANG_KY.MA_MON = 'cl';

SELECT * FROM LICH_THI
delete from LICH_THI
where MA_MON = 'cl'
ALTER TABLE LICH_THI
ALTER COLUMN GIO_THI_DAU char(20);

use QuanLyHoiThao;

ALTER TABLE KET_QUA_CA_NHAN
ALTER COLUMN giai VARCHAR(50) NULL

ALTER TABLE KET_QUA_CA_NHAN
ALTER COLUMN HUY_CHUONG VARCHAR(30) NULL

ALTER TABLE KET_QUA_CA_NHAN
ALTER COLUMN KHEN_THUONG_CA_NHAN float NULL

select * from SINH_VIEN;
select * from KET_QUA_CA_NHAN;
select * from DANG_KY

INSERT INTO KET_QUA_CA_NHAN
VALUES ('cl', 'b1411656', null, null, null);

INSERT INTO KET_QUA_CA_NHAN
VALUES ('cl', 'b1405456', null, null, null);

INSERT INTO KET_QUA_CA_NHAN
VALUES ('bb', 'b1410153', null, null, null);

INSERT INTO KET_QUA_CA_NHAN
VALUES ('bc', 'b1405456', null, null, null);

SELECT DANG_KY.MA_MON, SINH_VIEN.TEN_SV, MON_THI.TEN_MON
FROM ((DANG_KY
INNER JOIN SINH_VIEN ON DANG_KY.MSSV = SINH_VIEN.MSSV)
INNER JOIN MON_THI ON DANG_KY.MA_MON = MON_THI.MA_MON)
WHERE DANG_KY.MA_MON LIKE 'bc' OR SINH_VIEN.TEN_SV LIKE 't';

select * from KHOAN_CHI;
select * from KHOAN_THU;

SELECT * FROM THU_CHI;

INSERT INTO THU_CHI
VALUES ('Them 10 thung nuoc', '1000000', 0);

INSERT INTO THU_CHI
VALUES ('Mua 5 khan tam', '200000', 1);
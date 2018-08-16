/*
Navicat SQL Server Data Transfer

Source Server         : sa
Source Server Version : 105000
Source Host           : 192.168.2.216:1433
Source Database       : ApiCenter
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2018-08-06 10:38:02
*/


-- ----------------------------
-- Table structure for api_air_order
-- ----------------------------
--DROP TABLE [dbo].[api_air_order]
GO
CREATE TABLE [dbo].[api_air_order] (
[id] int NOT NULL IDENTITY(1,1) ,
[order_no_api] varchar(30) NOT NULL ,
[order_no_customer] varchar(30) NULL ,
[order_no_supplier] varchar(30) NULL ,
[total_other_fee] decimal(10,2) NULL ,
[total_pur_price] decimal(10,2) NULL ,
[total_face_price] decimal(10,2) NULL ,
[total_pay_cash] decimal(10,2) NULL ,
[total_sale_price] decimal(10,2) NULL ,
[ticket_type] char(1) NULL ,
[order_state] char(2) NULL ,
[legs] varchar(10) NULL ,
[contact_phone] varchar(20) NULL ,
[contact_name] nvarchar(20) NULL ,
[recevie_time] datetime NULL ,
[start_time] datetime NULL ,
[recevie_station] nvarchar(20) NULL ,
[start_station] nvarchar(20) NULL ,
[train_no] varchar(10) NULL ,
[finish_time] datetime NULL ,
[pay_time] datetime NULL ,
[pay_state] char(1) NULL ,
[order_title] varchar(20) NULL ,
[create_time] datetime NULL ,
[remark] nvarchar(200) NULL ,
[tpl_id] varchar(20) NULL ,
[order_state_desc] nvarchar(20) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_air_order]', RESEED, 3)
GO

-- ----------------------------
-- Table structure for api_air_order_child
-- ----------------------------
--DROP TABLE [dbo].[api_air_order_child]
GO
CREATE TABLE [dbo].[api_air_order_child] (
[id] int NOT NULL IDENTITY(1,1) ,
[sale_price] decimal(10,2) NULL ,
[seat_type] char(2) NULL ,
[refund_fee] decimal(10,2) NULL ,
[pay_cash] decimal(10,2) NULL ,
[idcard_type] char(1) NULL ,
[state] char(2) NULL ,
[face_price] decimal(10,2) NULL ,
[pur_price] decimal(10,2) NULL ,
[other_fee] decimal(10,2) NULL ,
[fee_detail] varchar(100) NULL ,
[ticket_no] varchar(50) NULL ,
[idcard_no] varchar(50) NULL ,
[passenger_tel] varchar(20) NULL ,
[passenger_name] nvarchar(20) NULL ,
[item_id] varchar(50) NULL ,
[seat_name] nvarchar(20) NULL ,
[order_no_api] varchar(32) NULL ,
[order_no_supplier] varchar(32) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_air_order_child]', RESEED, 3)
GO

-- ----------------------------
-- Table structure for api_all_taxi_order
-- ----------------------------
--DROP TABLE [dbo].[api_all_taxi_order]
GO
CREATE TABLE [dbo].[api_all_taxi_order] (
[id] int NOT NULL IDENTITY(1,1) ,
[order_no_supplier] varchar(255) NULL ,
[order_no_api] varchar(255) NULL ,
[order_no_customer] varchar(255) NULL ,
[city_id] varchar(255) NULL ,
[from_longitude] varchar(255) NULL ,
[from_latitude] varchar(255) NULL ,
[to_longitude] varchar(255) NULL ,
[to_latitude] varchar(255) NULL ,
[car_type] varchar(255) NULL ,
[passenger_phone] varchar(255) NULL ,
[passenger_name] varchar(255) NULL ,
[caller_phone] varchar(255) NULL ,
[estimate_price] decimal(20,4) NULL ,
[order_type] varchar(255) NULL ,
[start_name] varchar(255) NULL DEFAULT NULL ,
[start_address] varchar(255) NULL ,
[end_name] varchar(255) NULL ,
[end_address] varchar(255) NULL ,
[order_tags] varchar(255) NULL ,
[order_status] varchar(255) NULL ,
[remark] varchar(255) NULL ,
[created_time] datetime NULL ,
[departure_time] datetime NULL ,
[customer_notify_url] varchar(255) NULL ,
[updated_time] datetime NULL ,
[supplier_code] varchar(255) NULL ,
[cancel_reason] varchar(255) NULL ,
[custom_no] varchar(255) NULL ,
[order_source] varchar(255) NULL ,
[member_code] varchar(255) NULL ,
[driver_name] varchar(255) NULL ,
[driver_phone] varchar(255) NULL ,
[driver_avatar] varchar(255) NULL ,
[driver_order_count] varchar(255) NULL ,
[driver_level] varchar(255) NULL ,
[driver_card] varchar(255) NULL ,
[driver_car_color] varchar(255) NULL ,
[driver_car_type] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_all_taxi_order]', RESEED, 781)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'order_no_supplier')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'第三方订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'order_no_supplier'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'第三方订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'order_no_supplier'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'order_no_api')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'api平台订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'order_no_api'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'api平台订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'order_no_api'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'order_no_customer')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'客户订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'order_no_customer'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'客户订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'order_no_customer'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'city_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'city_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'city_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'from_longitude')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'出发地经度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'from_longitude'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'出发地经度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'from_longitude'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'from_latitude')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'出发地纬度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'from_latitude'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'出发地纬度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'from_latitude'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'to_longitude')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'目的地经度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'to_longitude'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'目的地经度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'to_longitude'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'to_latitude')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'目的地纬度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'to_latitude'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'目的地纬度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'to_latitude'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'car_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'服务车型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'car_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'服务车型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'car_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'passenger_phone')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'乘车人手机号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'passenger_phone'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'乘车人手机号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'passenger_phone'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'passenger_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'乘车人名字'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'passenger_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'乘车人名字'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'passenger_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'caller_phone')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户手机号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'caller_phone'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户手机号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'caller_phone'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'estimate_price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'预估费用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'estimate_price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'预估费用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'estimate_price'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'order_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'order_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'order_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'start_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'出发地名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'start_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'出发地名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'start_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'start_address')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'出发地详细地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'start_address'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'出发地详细地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'start_address'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'end_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'目的地名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'end_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'目的地名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'end_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'end_address')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'目的地详细地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'end_address'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'目的地详细地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'end_address'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'order_tags')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'支付方式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'order_tags'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'支付方式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'order_tags'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'order_status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'order_status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'order_status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'created_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'created_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'created_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'departure_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用车时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'departure_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用车时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'departure_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'customer_notify_url')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'回调地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'customer_notify_url'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'回调地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'customer_notify_url'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'updated_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'updated_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'updated_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'supplier_code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'供应商标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'supplier_code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'供应商标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'supplier_code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'cancel_reason')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'退单原因'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'cancel_reason'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'退单原因'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'cancel_reason'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'custom_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'客户号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'custom_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'客户号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'custom_no'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'order_source')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'下单来源'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'order_source'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'下单来源'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'order_source'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'member_code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'个人账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'member_code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'个人账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'member_code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'driver_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'司机名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'司机名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'driver_phone')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'司机电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_phone'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'司机电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_phone'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'driver_avatar')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'司机头像'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_avatar'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'司机头像'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_avatar'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'driver_order_count')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'司机接单数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_order_count'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'司机接单数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_order_count'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'driver_level')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'司机等级'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_level'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'司机等级'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_level'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'driver_card')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车牌'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_card'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车牌'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_card'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'driver_car_color')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车辆颜色'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_car_color'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车辆颜色'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_car_color'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_all_taxi_order', 
'COLUMN', N'driver_car_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车辆品牌'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_car_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车辆品牌'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_all_taxi_order'
, @level2type = 'COLUMN', @level2name = N'driver_car_type'
GO

-- ----------------------------
-- Table structure for api_common_facle_value
-- ----------------------------
--DROP TABLE [dbo].[api_common_facle_value]
GO
CREATE TABLE [dbo].[api_common_facle_value] (
[id] int NOT NULL IDENTITY(1,1) ,
[originals_price] decimal(20) NULL ,
[foreign_price] decimal(20) NULL ,
[supplier_price] decimal(20) NULL ,
[telecom_operators] varchar(255) NULL ,
[range] int NULL ,
[effect_start_time] int NULL ,
[effect_time] int NULL ,
[net_type] varchar(255) NULL ,
[package_name] varchar(255) NULL ,
[recharge_source] varchar(255) NULL ,
[remark] varchar(255) NULL ,
[package_id] int NULL ,
[package_number] varchar(200) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_common_facle_value]', RESEED, 15)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_facle_value', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_facle_value', 
'COLUMN', N'originals_price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'原价'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'originals_price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'原价'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'originals_price'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_facle_value', 
'COLUMN', N'foreign_price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'对外销售价'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'foreign_price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'对外销售价'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'foreign_price'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_facle_value', 
'COLUMN', N'supplier_price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'供应商价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'supplier_price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'供应商价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'supplier_price'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_facle_value', 
'COLUMN', N'telecom_operators')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'产品类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'telecom_operators'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'产品类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'telecom_operators'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_facle_value', 
'COLUMN', N'range')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'使用范围 1（省内）、 2（全国）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'range'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'使用范围 1（省内）、 2（全国）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'range'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_facle_value', 
'COLUMN', N'effect_start_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'生效时间 1（当日）、2（次日）、3（次月）、6(国庆)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'effect_start_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'生效时间 1（当日）、2（次日）、3（次月）、6(国庆)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'effect_start_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_facle_value', 
'COLUMN', N'effect_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'1-当月有效,2-30天有效,3-半年有效,4-3个月有效,5-2个月有效,6-6个月有效,7-20天有效,8-3日有效,9-90天有效,10-7天有效,11-当日有效,12-4小时有效,13-24小时有效,14-7个月有效,16-国庆8日有效'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'effect_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'1-当月有效,2-30天有效,3-半年有效,4-3个月有效,5-2个月有效,6-6个月有效,7-20天有效,8-3日有效,9-90天有效,10-7天有效,11-当日有效,12-4小时有效,13-24小时有效,14-7个月有效,16-国庆8日有效'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'effect_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_facle_value', 
'COLUMN', N'net_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'网络制式 2G、3G、4G(可不传，不传默认4GGG依次匹配)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'net_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'网络制式 2G、3G、4G(可不传，不传默认4GGG依次匹配)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'net_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_facle_value', 
'COLUMN', N'package_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'package_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'package_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_facle_value', 
'COLUMN', N'recharge_source')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'充值来源'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'recharge_source'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'充值来源'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'recharge_source'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_facle_value', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_facle_value', 
'COLUMN', N'package_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'商品类型（1为话费）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'package_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'商品类型（1为话费）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'package_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_facle_value', 
'COLUMN', N'package_number')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'对应编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'package_number'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'对应编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_facle_value'
, @level2type = 'COLUMN', @level2name = N'package_number'
GO

-- ----------------------------
-- Table structure for api_common_order
-- ----------------------------
--DROP TABLE [dbo].[api_common_order]
GO
CREATE TABLE [dbo].[api_common_order] (
[id] int NOT NULL IDENTITY(1,1) ,
[order_no_api] varchar(30) NOT NULL ,
[order_no_customer] varchar(30) NULL ,
[order_no_supplier] varchar(30) NULL ,
[order_type] int NOT NULL ,
[order_state] varchar(64) NULL ,
[order_remark] varchar(512) NULL ,
[card_no] varchar(255) NULL ,
[total_amount] decimal(18,2) NOT NULL ,
[amount] decimal(18,2) NOT NULL ,
[fee_amount] decimal(18,2) NOT NULL ,
[customer_no] varchar(30) NULL ,
[is_valid] tinyint NULL ,
[is_deleted] tinyint NULL ,
[created_time] datetime2(7) NOT NULL ,
[last_updated_time] datetime2(7) NULL ,
[notify_url] varchar(255) NULL ,
[member_code] varchar(30) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_common_order]', RESEED, 738)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'order_no_api')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'order_no_api'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'order_no_api'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'order_no_customer')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'外部订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'order_no_customer'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'外部订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'order_no_customer'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'order_no_supplier')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'第三方订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'order_no_supplier'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'第三方订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'order_no_supplier'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'order_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'order_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'order_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'order_state')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'order_state'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'order_state'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'order_remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'order_remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'order_remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'card_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'相关卡号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'card_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'相关卡号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'card_no'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'total_amount')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'总金额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'total_amount'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'总金额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'total_amount'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'amount')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'金额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'amount'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'金额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'amount'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'fee_amount')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'手续费'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'fee_amount'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'手续费'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'fee_amount'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'customer_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'交易账户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'customer_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'交易账户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'customer_no'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'is_valid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否有效'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'is_valid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否有效'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'is_valid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'is_deleted')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'is_deleted'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'is_deleted'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'created_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'created_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'created_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'last_updated_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'last_updated_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'last_updated_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_common_order', 
'COLUMN', N'notify_url')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'通知地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'notify_url'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'通知地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_common_order'
, @level2type = 'COLUMN', @level2name = N'notify_url'
GO

-- ----------------------------
-- Table structure for api_customer
-- ----------------------------
--DROP TABLE [dbo].[api_customer]
GO
CREATE TABLE [dbo].[api_customer] (
[id] int NOT NULL IDENTITY(1,1) ,
[name] varchar(64) NULL ,
[customer_no] varchar(64) NULL ,
[app_key] varchar(64) NULL ,
[app_secret] varchar(64) NULL ,
[remark] varchar(255) NULL ,
[created_by] varchar(64) NULL ,
[created_time] datetime NULL ,
[last_updated_by] varchar(64) NULL ,
[last_updated_time] datetime NULL ,
[is_pay_member] varchar(64) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_customer]', RESEED, 12)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_customer', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'商户信息表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'商户信息表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_customer', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_customer', 
'COLUMN', N'name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'商户名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'商户名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_customer', 
'COLUMN', N'app_key')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'商户key'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'app_key'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'商户key'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'app_key'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_customer', 
'COLUMN', N'app_secret')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'商户secret'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'app_secret'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'商户secret'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'app_secret'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_customer', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_customer', 
'COLUMN', N'created_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'created_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'created_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_customer', 
'COLUMN', N'created_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'created_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'created_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_customer', 
'COLUMN', N'last_updated_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'last_updated_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'last_updated_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_customer', 
'COLUMN', N'last_updated_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'last_updated_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'last_updated_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_customer', 
'COLUMN', N'is_pay_member')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否扣会员款（0:不是，1：是）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'is_pay_member'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否扣会员款（0:不是，1：是）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_customer'
, @level2type = 'COLUMN', @level2name = N'is_pay_member'
GO

-- ----------------------------
-- Table structure for api_film
-- ----------------------------
--DROP TABLE [dbo].[api_film]
GO
CREATE TABLE [dbo].[api_film] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[film_id] varchar(100) NULL ,
[film_name] varchar(100) NULL ,
[english_name] varchar(100) NULL ,
[language] varchar(60) NULL ,
[duration] varchar(16) NULL ,
[dimensional] varchar(12) NULL ,
[country] varchar(50) NULL ,
[director] varchar(100) NULL ,
[actor] varchar(2000) NULL ,
[opening_date] varchar(100) NULL ,
[catalog] varchar(300) NULL ,
[picture] varchar(500) NULL ,
[description] varchar(MAX) NULL ,
[show_count] int NULL ,
[rating] varchar(255) NULL ,
[star_picture] varchar(1000) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_film]', RESEED, 1739)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'蜘蛛网影片列表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'蜘蛛网影片列表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'film_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影片id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'film_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影片id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'film_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'film_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影片名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'film_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影片名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'film_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'english_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'英文名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'english_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'英文名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'english_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'language')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'语言'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'language'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'语言'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'language'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'duration')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'持续时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'duration'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'持续时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'duration'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'dimensional')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影片格式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'dimensional'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影片格式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'dimensional'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'country')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'国家'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'country'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'国家'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'country'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'director')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'导演'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'director'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'导演'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'director'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'actor')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'演员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'actor'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'演员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'actor'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'opening_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'开始时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'opening_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'开始时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'opening_date'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'catalog')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'目录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'catalog'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'目录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'catalog'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'picture')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影片封面图片'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'picture'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影片封面图片'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'picture'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'show_count')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'播放场次'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'show_count'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'播放场次'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'show_count'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'rating')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'评分'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'rating'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'评分'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'rating'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film', 
'COLUMN', N'star_picture')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主演照片'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'star_picture'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主演照片'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film'
, @level2type = 'COLUMN', @level2name = N'star_picture'
GO

-- ----------------------------
-- Table structure for api_film_broadcast
-- ----------------------------
--DROP TABLE [dbo].[api_film_broadcast]
GO
CREATE TABLE [dbo].[api_film_broadcast] (
[id] int NOT NULL IDENTITY(1,1) ,
[image_url] varchar(255) NULL ,
[skip_url] varchar(255) NULL ,
[created_time] datetime NULL ,
[updated_time] datetime NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_film_broadcast]', RESEED, 4)
GO

-- ----------------------------
-- Table structure for api_film_cinema
-- ----------------------------
--DROP TABLE [dbo].[api_film_cinema]
GO
CREATE TABLE [dbo].[api_film_cinema] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[cinema_id] varchar(500) NULL ,
[cinema_name] varchar(900) NULL ,
[cinema_logo] varchar(900) NULL ,
[cinema_add] varchar(900) NULL ,
[contact] varchar(130) NULL ,
[get_ticket_way] varchar(150) NOT NULL ,
[city_id] varchar(150) NULL ,
[region_id] varchar(150) NULL ,
[end_buy_date] varchar(150) NULL ,
[presale_day] varchar(150) NULL ,
[longitude] varchar(400) NULL ,
[latitude] varchar(400) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_film_cinema]', RESEED, 21528)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'蜘蛛网电影院列表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'蜘蛛网电影院列表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema', 
'COLUMN', N'cinema_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电影院id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电影院id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema', 
'COLUMN', N'cinema_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电影院名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'cinema_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电影院名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'cinema_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema', 
'COLUMN', N'cinema_logo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电影院logo'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'cinema_logo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电影院logo'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'cinema_logo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema', 
'COLUMN', N'cinema_add')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电影院添加'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'cinema_add'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电影院添加'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'cinema_add'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema', 
'COLUMN', N'contact')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'联系方式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'contact'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'联系方式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'contact'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema', 
'COLUMN', N'get_ticket_way')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'得到电影票的方式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'get_ticket_way'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'得到电影票的方式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'get_ticket_way'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema', 
'COLUMN', N'city_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'city_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'city_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema', 
'COLUMN', N'region_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'地区id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'region_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'地区id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'region_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema', 
'COLUMN', N'end_buy_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'结束购买时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'end_buy_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'结束购买时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'end_buy_date'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema', 
'COLUMN', N'presale_day')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'预售日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'presale_day'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'预售日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'presale_day'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema', 
'COLUMN', N'longitude')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'经度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'longitude'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'经度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'longitude'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema', 
'COLUMN', N'latitude')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'纬度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'latitude'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'纬度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema'
, @level2type = 'COLUMN', @level2name = N'latitude'
GO

-- ----------------------------
-- Table structure for api_film_cinema_temp
-- ----------------------------
--DROP TABLE [dbo].[api_film_cinema_temp]
GO
CREATE TABLE [dbo].[api_film_cinema_temp] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[cinema_id] varchar(500) NULL ,
[cinema_name] varchar(900) NULL ,
[cinema_logo] varchar(900) NULL ,
[cinema_add] varchar(900) NULL ,
[contact] varchar(130) NULL ,
[get_ticket_way] varchar(150) NOT NULL ,
[city_id] varchar(150) NULL ,
[region_id] varchar(150) NULL ,
[end_buy_date] varchar(150) NULL ,
[presale_day] varchar(150) NULL ,
[longitude] varchar(400) NULL ,
[latitude] varchar(400) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_film_cinema_temp]', RESEED, 5737907)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema_temp', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'蜘蛛网电影院列表临时表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'蜘蛛网电影院列表临时表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema_temp', 
'COLUMN', N'cinema_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电影院id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电影院id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema_temp', 
'COLUMN', N'cinema_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电影院名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电影院名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema_temp', 
'COLUMN', N'cinema_logo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电影院logo'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_logo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电影院logo'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_logo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema_temp', 
'COLUMN', N'cinema_add')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电影院添加'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_add'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电影院添加'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_add'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema_temp', 
'COLUMN', N'contact')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'联系方式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'contact'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'联系方式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'contact'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema_temp', 
'COLUMN', N'get_ticket_way')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'得到电影票的方式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'get_ticket_way'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'得到电影票的方式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'get_ticket_way'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema_temp', 
'COLUMN', N'city_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'city_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'city_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema_temp', 
'COLUMN', N'region_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'地区id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'region_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'地区id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'region_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema_temp', 
'COLUMN', N'end_buy_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'结束购买时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'end_buy_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'结束购买时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'end_buy_date'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema_temp', 
'COLUMN', N'presale_day')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'预售日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'presale_day'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'预售日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'presale_day'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema_temp', 
'COLUMN', N'longitude')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'经度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'longitude'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'经度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'longitude'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_cinema_temp', 
'COLUMN', N'latitude')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'纬度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'latitude'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'纬度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_cinema_temp'
, @level2type = 'COLUMN', @level2name = N'latitude'
GO

-- ----------------------------
-- Table structure for api_film_city
-- ----------------------------
--DROP TABLE [dbo].[api_film_city]
GO
CREATE TABLE [dbo].[api_film_city] (
[city_id] varchar(50) NOT NULL ,
[city_name] varchar(50) NOT NULL ,
[city_type] varchar(5) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_city', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'蜘蛛网城市列表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_city'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'蜘蛛网城市列表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_city'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_city', 
'COLUMN', N'city_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_city'
, @level2type = 'COLUMN', @level2name = N'city_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_city'
, @level2type = 'COLUMN', @level2name = N'city_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_city', 
'COLUMN', N'city_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_city'
, @level2type = 'COLUMN', @level2name = N'city_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_city'
, @level2type = 'COLUMN', @level2name = N'city_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_city', 
'COLUMN', N'city_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_city'
, @level2type = 'COLUMN', @level2name = N'city_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_city'
, @level2type = 'COLUMN', @level2name = N'city_type'
GO

-- ----------------------------
-- Table structure for api_film_hall
-- ----------------------------
--DROP TABLE [dbo].[api_film_hall]
GO
CREATE TABLE [dbo].[api_film_hall] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[hall_id] varchar(50) NOT NULL ,
[hall_name] varchar(300) NOT NULL ,
[cinema_id] varchar(50) NOT NULL ,
[hall_type] varchar(30) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_film_hall]', RESEED, 148536)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_hall', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'蜘蛛网影厅列表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'蜘蛛网影厅列表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_hall', 
'COLUMN', N'hall_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'大厅id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall'
, @level2type = 'COLUMN', @level2name = N'hall_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'大厅id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall'
, @level2type = 'COLUMN', @level2name = N'hall_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_hall', 
'COLUMN', N'hall_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'大厅名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall'
, @level2type = 'COLUMN', @level2name = N'hall_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'大厅名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall'
, @level2type = 'COLUMN', @level2name = N'hall_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_hall', 
'COLUMN', N'cinema_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电影id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电影id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_hall', 
'COLUMN', N'hall_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'大厅类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall'
, @level2type = 'COLUMN', @level2name = N'hall_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'大厅类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall'
, @level2type = 'COLUMN', @level2name = N'hall_type'
GO

-- ----------------------------
-- Table structure for api_film_hall_temp
-- ----------------------------
--DROP TABLE [dbo].[api_film_hall_temp]
GO
CREATE TABLE [dbo].[api_film_hall_temp] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[hall_id] varchar(50) NOT NULL ,
[hall_name] varchar(300) NOT NULL ,
[cinema_id] varchar(50) NOT NULL ,
[hall_type] varchar(30) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_film_hall_temp]', RESEED, 32161051)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_hall_temp', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'蜘蛛网影厅列表临时表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall_temp'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'蜘蛛网影厅列表临时表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall_temp'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_hall_temp', 
'COLUMN', N'hall_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'大厅id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall_temp'
, @level2type = 'COLUMN', @level2name = N'hall_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'大厅id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall_temp'
, @level2type = 'COLUMN', @level2name = N'hall_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_hall_temp', 
'COLUMN', N'hall_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'大厅名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall_temp'
, @level2type = 'COLUMN', @level2name = N'hall_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'大厅名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall_temp'
, @level2type = 'COLUMN', @level2name = N'hall_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_hall_temp', 
'COLUMN', N'cinema_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电影id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电影id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_hall_temp', 
'COLUMN', N'hall_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'大厅类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall_temp'
, @level2type = 'COLUMN', @level2name = N'hall_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'大厅类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_hall_temp'
, @level2type = 'COLUMN', @level2name = N'hall_type'
GO

-- ----------------------------
-- Table structure for api_film_order
-- ----------------------------
--DROP TABLE [dbo].[api_film_order]
GO
CREATE TABLE [dbo].[api_film_order] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[order_no_supplier] varchar(100) NULL ,
[order_no_api] varchar(100) NULL ,
[order_no_customer] varchar(100) NULL ,
[show_id] varchar(120) NOT NULL ,
[cinema_id] varchar(50) NULL ,
[cinema_name] varchar(300) NULL ,
[hall_id] varchar(120) NULL ,
[hall_name] varchar(120) NULL ,
[film_id] varchar(120) NULL ,
[film_name] varchar(300) NULL ,
[seat_id] varchar(100) NULL ,
[user_price] varchar(30) NULL ,
[mer_price] varchar(30) NULL ,
[fee_price] varchar(30) NULL ,
[show_date] varchar(30) NULL ,
[mobile] varchar(50) NULL ,
[status] varchar(50) NULL ,
[create_by] varchar(64) NULL ,
[create_time] datetime NULL ,
[update_by] varchar(64) NULL ,
[update_time] datetime NULL ,
[member_code] varchar(255) NULL ,
[custom_no] varchar(255) NULL ,
[notify_url] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_film_order]', RESEED, 191)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'蜘蛛网订单表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'蜘蛛网订单表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'order_no_supplier')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'第三方订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'order_no_supplier'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'第三方订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'order_no_supplier'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'order_no_api')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'order_no_api'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'order_no_api'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'order_no_customer')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'客户订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'order_no_customer'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'客户订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'order_no_customer'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'show_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'场次编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'show_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'场次编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'show_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'cinema_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影院编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影院编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'cinema_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影院名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'cinema_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影院名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'cinema_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'hall_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'大厅编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'hall_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'大厅编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'hall_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'hall_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'大厅名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'hall_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'大厅名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'hall_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'film_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影片编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'film_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影片编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'film_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'film_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影片名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'film_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影片名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'film_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'seat_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'座位编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'seat_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'座位编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'seat_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'user_price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'user_price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'user_price'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'mer_price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'个人价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'mer_price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'个人价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'mer_price'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'fee_price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'手续费'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'fee_price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'手续费'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'fee_price'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'show_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'开始时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'show_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'开始时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'show_date'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'mobile')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'手机号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'mobile'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'手机号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'mobile'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'create_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'create_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'create_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'create_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'create_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'create_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'update_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'update_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'update_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'update_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'update_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'update_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'member_code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'个人账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'member_code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'个人账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'member_code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'custom_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'企业账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'custom_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'企业账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'custom_no'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_order', 
'COLUMN', N'notify_url')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'回调地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'notify_url'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'回调地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_order'
, @level2type = 'COLUMN', @level2name = N'notify_url'
GO

-- ----------------------------
-- Table structure for api_film_region
-- ----------------------------
--DROP TABLE [dbo].[api_film_region]
GO
CREATE TABLE [dbo].[api_film_region] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[city_id] varchar(50) NOT NULL ,
[city_name] varchar(50) NOT NULL ,
[city_type] varchar(5) NULL ,
[region_id] varchar(50) NOT NULL ,
[region_name] varchar(50) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_film_region]', RESEED, 30960)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_region', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'蜘蛛网地区列表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'蜘蛛网地区列表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_region', 
'COLUMN', N'city_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region'
, @level2type = 'COLUMN', @level2name = N'city_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region'
, @level2type = 'COLUMN', @level2name = N'city_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_region', 
'COLUMN', N'city_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region'
, @level2type = 'COLUMN', @level2name = N'city_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region'
, @level2type = 'COLUMN', @level2name = N'city_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_region', 
'COLUMN', N'city_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region'
, @level2type = 'COLUMN', @level2name = N'city_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region'
, @level2type = 'COLUMN', @level2name = N'city_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_region', 
'COLUMN', N'region_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'地区id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region'
, @level2type = 'COLUMN', @level2name = N'region_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'地区id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region'
, @level2type = 'COLUMN', @level2name = N'region_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_region', 
'COLUMN', N'region_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'地区名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region'
, @level2type = 'COLUMN', @level2name = N'region_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'地区名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region'
, @level2type = 'COLUMN', @level2name = N'region_name'
GO

-- ----------------------------
-- Table structure for api_film_region_temp
-- ----------------------------
--DROP TABLE [dbo].[api_film_region_temp]
GO
CREATE TABLE [dbo].[api_film_region_temp] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[city_id] varchar(50) NOT NULL ,
[city_name] varchar(50) NOT NULL ,
[city_type] varchar(5) NULL ,
[region_id] varchar(50) NOT NULL ,
[region_name] varchar(50) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_film_region_temp]', RESEED, 1962471)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_region_temp', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'蜘蛛网地区列表临时表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region_temp'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'蜘蛛网地区列表临时表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region_temp'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_region_temp', 
'COLUMN', N'city_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region_temp'
, @level2type = 'COLUMN', @level2name = N'city_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region_temp'
, @level2type = 'COLUMN', @level2name = N'city_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_region_temp', 
'COLUMN', N'city_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region_temp'
, @level2type = 'COLUMN', @level2name = N'city_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region_temp'
, @level2type = 'COLUMN', @level2name = N'city_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_region_temp', 
'COLUMN', N'city_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region_temp'
, @level2type = 'COLUMN', @level2name = N'city_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region_temp'
, @level2type = 'COLUMN', @level2name = N'city_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_region_temp', 
'COLUMN', N'region_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'地区id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region_temp'
, @level2type = 'COLUMN', @level2name = N'region_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'地区id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region_temp'
, @level2type = 'COLUMN', @level2name = N'region_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_region_temp', 
'COLUMN', N'region_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'地区名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region_temp'
, @level2type = 'COLUMN', @level2name = N'region_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'地区名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_region_temp'
, @level2type = 'COLUMN', @level2name = N'region_name'
GO

-- ----------------------------
-- Table structure for api_film_seat
-- ----------------------------
--DROP TABLE [dbo].[api_film_seat]
GO
CREATE TABLE [dbo].[api_film_seat] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[cinema_id] varchar(50) NOT NULL ,
[hall_id] varchar(50) NOT NULL ,
[maxcol_num] varchar(6) NOT NULL ,
[maxrow_num] varchar(6) NOT NULL ,
[row] varchar(MAX) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_film_seat]', RESEED, 123466)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_seat', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'蜘蛛网座位列表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'蜘蛛网座位列表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_seat', 
'COLUMN', N'cinema_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电影院id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电影院id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_seat', 
'COLUMN', N'hall_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'大厅id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat'
, @level2type = 'COLUMN', @level2name = N'hall_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'大厅id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat'
, @level2type = 'COLUMN', @level2name = N'hall_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_seat', 
'COLUMN', N'maxcol_num')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最大列数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat'
, @level2type = 'COLUMN', @level2name = N'maxcol_num'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最大列数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat'
, @level2type = 'COLUMN', @level2name = N'maxcol_num'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_seat', 
'COLUMN', N'maxrow_num')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最大行数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat'
, @level2type = 'COLUMN', @level2name = N'maxrow_num'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最大行数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat'
, @level2type = 'COLUMN', @level2name = N'maxrow_num'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_seat', 
'COLUMN', N'row')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat'
, @level2type = 'COLUMN', @level2name = N'row'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat'
, @level2type = 'COLUMN', @level2name = N'row'
GO

-- ----------------------------
-- Table structure for api_film_seat_temp
-- ----------------------------
--DROP TABLE [dbo].[api_film_seat_temp]
GO
CREATE TABLE [dbo].[api_film_seat_temp] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[cinema_id] varchar(50) NOT NULL ,
[hall_id] varchar(50) NOT NULL ,
[maxcol_num] varchar(6) NOT NULL ,
[maxrow_num] varchar(6) NOT NULL ,
[row] varchar(MAX) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_film_seat_temp]', RESEED, 22904434)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_seat_temp', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'蜘蛛网座位列表临时表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat_temp'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'蜘蛛网座位列表临时表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat_temp'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_seat_temp', 
'COLUMN', N'cinema_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电影院id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电影院id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_seat_temp', 
'COLUMN', N'hall_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'大厅id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat_temp'
, @level2type = 'COLUMN', @level2name = N'hall_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'大厅id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat_temp'
, @level2type = 'COLUMN', @level2name = N'hall_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_seat_temp', 
'COLUMN', N'maxcol_num')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最大列数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat_temp'
, @level2type = 'COLUMN', @level2name = N'maxcol_num'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最大列数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat_temp'
, @level2type = 'COLUMN', @level2name = N'maxcol_num'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_seat_temp', 
'COLUMN', N'maxrow_num')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最大行数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat_temp'
, @level2type = 'COLUMN', @level2name = N'maxrow_num'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最大行数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat_temp'
, @level2type = 'COLUMN', @level2name = N'maxrow_num'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_seat_temp', 
'COLUMN', N'row')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat_temp'
, @level2type = 'COLUMN', @level2name = N'row'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_seat_temp'
, @level2type = 'COLUMN', @level2name = N'row'
GO

-- ----------------------------
-- Table structure for api_film_show
-- ----------------------------
--DROP TABLE [dbo].[api_film_show]
GO
CREATE TABLE [dbo].[api_film_show] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[show_id] varchar(255) NULL ,
[cinema_id] varchar(255) NULL ,
[cinema_name] varchar(255) NULL ,
[hall_id] varchar(255) NULL ,
[hall_name] varchar(255) NULL ,
[film_id] varchar(255) NULL ,
[film_name] varchar(255) NULL ,
[show_date] varchar(255) NULL ,
[show_time] varchar(255) NULL ,
[sta_price] varchar(255) NULL ,
[user_price] varchar(255) NULL ,
[mer_price] varchar(255) NULL ,
[fee_price] varchar(255) NULL ,
[language] varchar(255) NULL ,
[duration] varchar(255) NULL ,
[dimensional] varchar(255) NULL ,
[activity_id] varchar(255) NULL ,
[is_discount] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_film_show]', RESEED, 652018)
GO

-- ----------------------------
-- Table structure for api_film_show_temp
-- ----------------------------
--DROP TABLE [dbo].[api_film_show_temp]
GO
CREATE TABLE [dbo].[api_film_show_temp] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[show_id] varchar(120) NULL ,
[cinema_id] varchar(50) NULL ,
[cinema_name] varchar(120) NULL ,
[hall_id] varchar(120) NULL ,
[hall_name] varchar(120) NULL ,
[film_id] varchar(120) NULL ,
[film_name] varchar(120) NULL ,
[show_date] varchar(30) NULL ,
[show_time] varchar(30) NULL ,
[sta_price] varchar(30) NULL ,
[user_price] varchar(30) NULL ,
[mer_price] varchar(30) NULL ,
[fee_price] varchar(30) NULL ,
[language] varchar(30) NULL ,
[duration] varchar(30) NULL ,
[dimensional] varchar(10) NULL ,
[activity_id] varchar(50) NULL ,
[is_discount] varchar(5) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_film_show_temp]', RESEED, 1179480657)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'蜘蛛网影片场次列表临时表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'蜘蛛网影片场次列表临时表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'show_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'场次id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'show_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'场次id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'show_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'cinema_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电影院id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电影院id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'cinema_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电影院名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电影院名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'cinema_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'hall_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'大厅id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'hall_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'大厅id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'hall_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'hall_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'大厅名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'hall_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'大厅名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'hall_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'film_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影片Id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'film_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影片Id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'film_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'film_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影片名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'film_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影片名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'film_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'show_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'显示日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'show_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'显示日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'show_date'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'show_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'显示时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'show_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'显示时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'show_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'user_price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'user_price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'user_price'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'fee_price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'费率价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'fee_price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'费率价格'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'fee_price'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'language')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'语言'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'language'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'语言'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'language'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'duration')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'持续时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'duration'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'持续时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'duration'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'dimensional')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影片格式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'dimensional'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影片格式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'dimensional'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'activity_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'活动id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'activity_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'活动id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'activity_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_show_temp', 
'COLUMN', N'is_discount')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'折扣'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'is_discount'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'折扣'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_show_temp'
, @level2type = 'COLUMN', @level2name = N'is_discount'
GO

-- ----------------------------
-- Table structure for api_film_temp
-- ----------------------------
--DROP TABLE [dbo].[api_film_temp]
GO
CREATE TABLE [dbo].[api_film_temp] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[film_id] varchar(100) NULL ,
[film_name] varchar(100) NULL ,
[english_name] varchar(100) NULL ,
[language] varchar(60) NULL ,
[duration] varchar(16) NULL ,
[dimensional] varchar(12) NULL ,
[country] varchar(50) NULL ,
[director] varchar(100) NULL ,
[actor] varchar(2000) NULL ,
[opening_date] varchar(100) NULL ,
[catalog] varchar(300) NULL ,
[picture] varchar(500) NULL ,
[description] varchar(MAX) NULL ,
[show_count] varchar(255) NULL ,
[rating] varchar(999) NULL ,
[star_picture] varchar(1000) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_film_temp]', RESEED, 799901)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'蜘蛛网影片列表临时表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'蜘蛛网影片列表临时表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'film_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影片id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'film_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影片id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'film_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'film_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影片名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'film_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影片名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'film_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'english_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'英文名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'english_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'英文名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'english_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'language')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'语言'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'language'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'语言'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'language'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'duration')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'持续时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'duration'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'持续时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'duration'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'dimensional')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影片格式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'dimensional'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影片格式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'dimensional'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'country')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'国家'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'country'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'国家'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'country'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'director')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'导演'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'director'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'导演'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'director'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'actor')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'演员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'actor'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'演员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'actor'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'opening_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'开始时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'opening_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'开始时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'opening_date'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'catalog')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'目录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'catalog'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'目录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'catalog'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'picture')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'影片封面图片'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'picture'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'影片封面图片'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'picture'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'rating')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'评分'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'rating'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'评分'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'rating'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_film_temp', 
'COLUMN', N'star_picture')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主演照片'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'star_picture'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主演照片'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_film_temp'
, @level2type = 'COLUMN', @level2name = N'star_picture'
GO

-- ----------------------------
-- Table structure for api_passenger
-- ----------------------------
--DROP TABLE [dbo].[api_passenger]
GO
CREATE TABLE [dbo].[api_passenger] (
[id] int NOT NULL IDENTITY(1,1) ,
[custom_no] varchar(50) NULL ,
[user_no] varchar(30) NULL ,
[passenger_type] char(1) NULL ,
[is_self] char(1) NULL ,
[name] nvarchar(40) NULL ,
[id_type] char(2) NULL ,
[id_no] varchar(50) NULL ,
[phone] varchar(20) NULL ,
[nationality] nvarchar(40) NULL ,
[sex] char(1) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_passenger', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'乘客表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'乘客表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_passenger', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_passenger', 
'COLUMN', N'custom_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'客户号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'custom_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'客户号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'custom_no'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_passenger', 
'COLUMN', N'user_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'user_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'user_no'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_passenger', 
'COLUMN', N'passenger_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'乘客类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'passenger_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'乘客类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'passenger_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_passenger', 
'COLUMN', N'is_self')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否本人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'is_self'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否本人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'is_self'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_passenger', 
'COLUMN', N'name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_passenger', 
'COLUMN', N'id_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'证件类型(0:身份证)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'id_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'证件类型(0:身份证)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'id_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_passenger', 
'COLUMN', N'id_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'证件号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'id_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'证件号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'id_no'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_passenger', 
'COLUMN', N'phone')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'手机号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'phone'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'手机号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'phone'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_passenger', 
'COLUMN', N'nationality')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'国籍'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'nationality'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'国籍'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_passenger'
, @level2type = 'COLUMN', @level2name = N'nationality'
GO

-- ----------------------------
-- Table structure for api_phone_traffic_order
-- ----------------------------
--DROP TABLE [dbo].[api_phone_traffic_order]
GO
CREATE TABLE [dbo].[api_phone_traffic_order] (
[id] int NOT NULL IDENTITY(1,1) NOT FOR REPLICATION ,
[order_no_api] varchar(30) NOT NULL ,
[order_no_supplier] varchar(30) NULL ,
[order_no_customer] varchar(30) NOT NULL ,
[traffic_order_state] varchar(255) NOT NULL ,
[traffic_order_state_code] varchar(10) NULL ,
[traffic_order_remark] varchar(512) NULL ,
[notify_url] varchar(256) NULL ,
[customer_no] varchar(11) NULL ,
[phone_no] varchar(11) NULL ,
[package_id] int NULL ,
[flowValue] varchar(30) NULL ,
[created_time] datetime NOT NULL DEFAULT (getdate()) ,
[last_update_time] datetime NOT NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_phone_traffic_order]', RESEED, 147)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_order', 
'COLUMN', N'order_no_api')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'order_no_api'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'order_no_api'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_order', 
'COLUMN', N'order_no_supplier')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'供应商订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'order_no_supplier'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'供应商订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'order_no_supplier'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_order', 
'COLUMN', N'order_no_customer')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'第三方订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'order_no_customer'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'第三方订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'order_no_customer'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_order', 
'COLUMN', N'traffic_order_state')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'流量充值状态 1 待充值 2 充值成功 3 充值失败'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'traffic_order_state'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'流量充值状态 1 待充值 2 充值成功 3 充值失败'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'traffic_order_state'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_order', 
'COLUMN', N'traffic_order_state_code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'供应商回状态码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'traffic_order_state_code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'供应商回状态码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'traffic_order_state_code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_order', 
'COLUMN', N'traffic_order_remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'供应商返回状态描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'traffic_order_remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'供应商返回状态描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'traffic_order_remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_order', 
'COLUMN', N'notify_url')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'回调地址URL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'notify_url'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'回调地址URL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'notify_url'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_order', 
'COLUMN', N'phone_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'充值手机号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'phone_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'充值手机号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'phone_no'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_order', 
'COLUMN', N'package_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'充值套餐iD'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'package_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'充值套餐iD'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'package_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_order', 
'COLUMN', N'flowValue')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'面值'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'flowValue'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'面值'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'flowValue'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_order', 
'COLUMN', N'created_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'created_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'created_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_order', 
'COLUMN', N'last_update_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'last_update_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_order'
, @level2type = 'COLUMN', @level2name = N'last_update_time'
GO

-- ----------------------------
-- Table structure for api_phone_traffic_package
-- ----------------------------
--DROP TABLE [dbo].[api_phone_traffic_package]
GO
CREATE TABLE [dbo].[api_phone_traffic_package] (
[id] int NOT NULL IDENTITY(1,1) NOT FOR REPLICATION ,
[package_name] varchar(64) NULL ,
[package_id] varchar(64) NULL ,
[sale_price] decimal(10,2) NULL ,
[cost_price] decimal(10,2) NULL ,
[market_price] decimal(10,2) NULL ,
[telecom_operators] varchar(64) NULL ,
[supplier] varchar(64) NULL ,
[create_by] varchar(64) NULL ,
[create_time] datetime NULL ,
[update_by] varchar(64) NULL ,
[update_time] datetime NULL ,
[flow_value] varchar(64) NULL ,
[per_value] decimal(18) NULL ,
[range] int NULL ,
[effect_start_time] int NULL ,
[effect_time] int NULL ,
[net_type] varchar(10) NULL ,
[max_recharge] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_phone_traffic_package]', RESEED, 32)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_package', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_package'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_package'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_package', 
'COLUMN', N'flow_value')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'流量值'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_package'
, @level2type = 'COLUMN', @level2name = N'flow_value'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'流量值'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_package'
, @level2type = 'COLUMN', @level2name = N'flow_value'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_package', 
'COLUMN', N'per_value')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'面值'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_package'
, @level2type = 'COLUMN', @level2name = N'per_value'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'面值'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_package'
, @level2type = 'COLUMN', @level2name = N'per_value'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_package', 
'COLUMN', N'range')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'使用范围 1（省内）、 2（全国）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_package'
, @level2type = 'COLUMN', @level2name = N'range'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'使用范围 1（省内）、 2（全国）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_package'
, @level2type = 'COLUMN', @level2name = N'range'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_package', 
'COLUMN', N'effect_start_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'生效时间 1（当日）、2（次日）、3（次月）、6(国庆)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_package'
, @level2type = 'COLUMN', @level2name = N'effect_start_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'生效时间 1（当日）、2（次日）、3（次月）、6(国庆)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_package'
, @level2type = 'COLUMN', @level2name = N'effect_start_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_package', 
'COLUMN', N'effect_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'1-当月有效,2-30天有效,3-半年有效,4-3个月有效,5-2个月有效,6-6个月有效,7-20天有效,8-3日有效,9-90天有效,10-7天有效,11-当日有效,12-4小时有效,13-24小时有效,14-7个月有效,16-国庆8日有效'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_package'
, @level2type = 'COLUMN', @level2name = N'effect_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'1-当月有效,2-30天有效,3-半年有效,4-3个月有效,5-2个月有效,6-6个月有效,7-20天有效,8-3日有效,9-90天有效,10-7天有效,11-当日有效,12-4小时有效,13-24小时有效,14-7个月有效,16-国庆8日有效'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_package'
, @level2type = 'COLUMN', @level2name = N'effect_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_phone_traffic_package', 
'COLUMN', N'net_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'网络制式 2G、3G、4G(可不传，不传默认4GGG依次匹配)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_package'
, @level2type = 'COLUMN', @level2name = N'net_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'网络制式 2G、3G、4G(可不传，不传默认4GGG依次匹配)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_phone_traffic_package'
, @level2type = 'COLUMN', @level2name = N'net_type'
GO

-- ----------------------------
-- Table structure for api_taxi_city
-- ----------------------------
--DROP TABLE [dbo].[api_taxi_city]
GO
CREATE TABLE [dbo].[api_taxi_city] (
[id] int NOT NULL IDENTITY(1,1) ,
[city_name] nvarchar(50) NULL ,
[city_id] varchar(50) NULL ,
[city_spell] varchar(50) NULL ,
[is_hot] bit NULL ,
[sort] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_taxi_city]', RESEED, 1421)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_taxi_city', 
'COLUMN', N'city_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city'
, @level2type = 'COLUMN', @level2name = N'city_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city'
, @level2type = 'COLUMN', @level2name = N'city_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_taxi_city', 
'COLUMN', N'city_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city'
, @level2type = 'COLUMN', @level2name = N'city_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city'
, @level2type = 'COLUMN', @level2name = N'city_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_taxi_city', 
'COLUMN', N'city_spell')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'城市名称拼写'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city'
, @level2type = 'COLUMN', @level2name = N'city_spell'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'城市名称拼写'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city'
, @level2type = 'COLUMN', @level2name = N'city_spell'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_taxi_city', 
'COLUMN', N'is_hot')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'0 非热门， 1 热门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city'
, @level2type = 'COLUMN', @level2name = N'is_hot'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'0 非热门， 1 热门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city'
, @level2type = 'COLUMN', @level2name = N'is_hot'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_taxi_city', 
'COLUMN', N'sort')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city'
, @level2type = 'COLUMN', @level2name = N'sort'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city'
, @level2type = 'COLUMN', @level2name = N'sort'
GO

-- ----------------------------
-- Table structure for api_taxi_city_biz
-- ----------------------------
--DROP TABLE [dbo].[api_taxi_city_biz]
GO
CREATE TABLE [dbo].[api_taxi_city_biz] (
[id] int NOT NULL IDENTITY(1,1) ,
[supplier_code] varchar(50) NOT NULL ,
[city_id] varchar(50) NULL ,
[supplier_city_code] varchar(50) NOT NULL ,
[biz_type] varchar(128) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_taxi_city_biz]', RESEED, 5646)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_taxi_city_biz', 
'COLUMN', N'supplier_code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'供应商编码,与city_id组合唯一，如果某供应商无某城市下明细数据，可认为该供应商在该城市下未开展业务'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city_biz'
, @level2type = 'COLUMN', @level2name = N'supplier_code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'供应商编码,与city_id组合唯一，如果某供应商无某城市下明细数据，可认为该供应商在该城市下未开展业务'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city_biz'
, @level2type = 'COLUMN', @level2name = N'supplier_code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_taxi_city_biz', 
'COLUMN', N'city_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'关联城市表主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city_biz'
, @level2type = 'COLUMN', @level2name = N'city_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'关联城市表主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city_biz'
, @level2type = 'COLUMN', @level2name = N'city_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_taxi_city_biz', 
'COLUMN', N'supplier_city_code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'供应商对该城市编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city_biz'
, @level2type = 'COLUMN', @level2name = N'supplier_city_code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'供应商对该城市编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_taxi_city_biz'
, @level2type = 'COLUMN', @level2name = N'supplier_city_code'
GO

-- ----------------------------
-- Table structure for api_taxi_order
-- ----------------------------
--DROP TABLE [dbo].[api_taxi_order]
GO
CREATE TABLE [dbo].[api_taxi_order] (
[id] int NOT NULL IDENTITY(1,1) ,
[no] varchar(1) NOT NULL ,
[order_note] varchar(255) NULL ,
[call_together_result_no] varchar(1) NULL ,
[common_comment] varchar(255) NULL ,
[tlng] varchar(255) NULL ,
[estimate_price] float(53) NULL ,
[strive_time] varchar(1) NULL ,
[driver_avatar] varchar(255) NULL ,
[driver_car_type] varchar(255) NULL ,
[source] varchar(255) NULL ,
[clng] varchar(255) NULL ,
[flng] varchar(255) NULL ,
[begin_charge_time] varchar(1) NULL ,
[out_source_no] varchar(1) NULL ,
[dlat] varchar(255) NULL ,
[state_name] varchar(255) NULL ,
[flat] varchar(255) NULL ,
[from] varchar(255) NULL ,
[state] varchar(255) NULL ,
[prices] varchar(255) NULL ,
[order_type] varchar(255) NULL ,
[tlat] varchar(255) NULL ,
[passenger_phone] varchar(255) NULL ,
[driver_order_count] varchar(255) NULL ,
[amount] varchar(255) NULL ,
[common_level] varchar(255) NULL ,
[level] varchar(255) NULL ,
[driver_card] varchar(255) NULL ,
[to_detail] varchar(255) NULL ,
[driver_phone] varchar(255) NULL ,
[driver_level] varchar(255) NULL ,
[passenger_name] varchar(255) NULL ,
[dlng] varchar(255) NULL ,
[finish_time] datetime2(7) NULL ,
[driver_car_color] varchar(255) NULL ,
[driver_name] varchar(255) NULL ,
[clat] varchar(255) NULL ,
[total_amount] varchar(255) NULL ,
[to] varchar(255) NULL ,
[call_together_no] varchar(255) NULL ,
[from_detail] varchar(255) NULL 
)


GO

-- ----------------------------
-- Table structure for api_traffic_order
-- ----------------------------
--DROP TABLE [dbo].[api_traffic_order]
GO
CREATE TABLE [dbo].[api_traffic_order] (
[id] int NOT NULL IDENTITY(1,1) NOT FOR REPLICATION ,
[order_no_api] varchar(30) NOT NULL ,
[order_no_supplier] varchar(30) NOT NULL ,
[order_no_customer] varchar(30) NOT NULL ,
[traffic_order_state] varchar(255) NOT NULL ,
[traffic_order_state_code] varchar(10) NOT NULL ,
[traffic_order_remark] varchar(255) NULL ,
[phone_no] varchar(11) NULL ,
[package_id] int NULL ,
[flowValue] varchar(30) NULL ,
[created_time] datetime NOT NULL DEFAULT (getdate()) ,
[last_update_time] datetime NOT NULL DEFAULT (getdate()) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_traffic_order', 
'COLUMN', N'order_no_api')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'order_no_api'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'order_no_api'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_traffic_order', 
'COLUMN', N'order_no_supplier')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'供应商订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'order_no_supplier'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'供应商订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'order_no_supplier'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_traffic_order', 
'COLUMN', N'order_no_customer')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'第三方订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'order_no_customer'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'第三方订单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'order_no_customer'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_traffic_order', 
'COLUMN', N'traffic_order_state')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'流量充值状态 1 待充值 2 充值成功 3 充值失败'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'traffic_order_state'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'流量充值状态 1 待充值 2 充值成功 3 充值失败'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'traffic_order_state'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_traffic_order', 
'COLUMN', N'traffic_order_state_code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'供应商回状态码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'traffic_order_state_code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'供应商回状态码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'traffic_order_state_code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_traffic_order', 
'COLUMN', N'traffic_order_remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'供应商返回状态描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'traffic_order_remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'供应商返回状态描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'traffic_order_remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_traffic_order', 
'COLUMN', N'phone_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'充值手机号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'phone_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'充值手机号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'phone_no'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_traffic_order', 
'COLUMN', N'package_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'充值套餐iD'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'package_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'充值套餐iD'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'package_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_traffic_order', 
'COLUMN', N'flowValue')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'面值'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'flowValue'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'面值'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'flowValue'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_traffic_order', 
'COLUMN', N'created_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'created_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'created_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_traffic_order', 
'COLUMN', N'last_update_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'last_update_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_traffic_order'
, @level2type = 'COLUMN', @level2name = N'last_update_time'
GO

-- ----------------------------
-- Table structure for api_train_order
-- ----------------------------
--DROP TABLE [dbo].[api_train_order]
GO
CREATE TABLE [dbo].[api_train_order] (
[id] int NOT NULL IDENTITY(1,1) NOT FOR REPLICATION ,
[order_no_api] varchar(30) NULL ,
[order_no_supplier] varchar(30) NOT NULL ,
[order_no_customer] varchar(30) NOT NULL ,
[order_state] varchar(255) NOT NULL ,
[order_state_code] varchar(10) NOT NULL ,
[order_remark] varchar(255) NULL ,
[book_time] datetime NULL ,
[pay_time] datetime NULL ,
[issue_time] datetime NULL ,
[place_time] datetime NULL ,
[pay_type] varchar(255) NULL ,
[pay_status] varchar(10) NOT NULL ,
[pay_info] varchar(255) NULL ,
[order_price] decimal(18,2) NOT NULL ,
[service_fee_total] decimal(18,2) NULL DEFAULT '' ,
[post_fee_amount] decimal(18,2) NULL ,
[ticket_no] varchar(30) NULL ,
[change_fee] decimal(18,2) NULL ,
[train_no] varchar(10) NULL ,
[train_date] varchar(30) NULL ,
[from_station] varchar(255) NULL ,
[to_station] varchar(255) NULL ,
[departure_time] datetime NULL ,
[arrival_time] datetime NULL ,
[expiration_time] datetime NULL ,
[notify_url] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_train_order]', RESEED, 89)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'order_no_api')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单号(同api_order的order_no)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'order_no_api'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单号(同api_order的order_no)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'order_no_api'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'order_no_supplier')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'第三方订单号(同火车票订单详情orderNo)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'order_no_supplier'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'第三方订单号(同火车票订单详情orderNo)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'order_no_supplier'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'order_no_customer')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'外部订单号(同火车票订单详情outOrderNo)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'order_no_customer'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'外部订单号(同火车票订单详情outOrderNo)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'order_no_customer'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'order_state')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单状态（中文,同火车票订单详情orderState）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'order_state'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单状态（中文,同火车票订单详情orderState）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'order_state'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'order_state_code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单状态码（同火车票订单详情orderStateCode）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'order_state_code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单状态码（同火车票订单详情orderStateCode）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'order_state_code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'order_remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单备注(同订单详情failureReason)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'order_remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单备注(同订单详情failureReason)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'order_remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'pay_status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'付款状态（0：未付款，1：付款成功，-1：付款失败）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'pay_status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'付款状态（0：未付款，1：付款成功，-1：付款失败）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'pay_status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'pay_info')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'付款备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'pay_info'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'付款备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'pay_info'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'order_price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单总金额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'order_price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单总金额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'order_price'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'service_fee_total')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'服务费总额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'service_fee_total'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'服务费总额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'service_fee_total'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'post_fee_amount')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'邮寄费用总额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'post_fee_amount'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'邮寄费用总额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'post_fee_amount'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'ticket_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'火车票编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'ticket_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'火车票编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'ticket_no'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'change_fee')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'改签手续费（仅限改签新单有值）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'change_fee'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'改签手续费（仅限改签新单有值）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'change_fee'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'train_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车次'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'train_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车次'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'train_no'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'train_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'出发日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'train_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'出发日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'train_date'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'from_station')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'出发站'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'from_station'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'出发站'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'from_station'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'to_station')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'到达站'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'to_station'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'到达站'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'to_station'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'departure_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'出发时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'departure_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'出发时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'departure_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'arrival_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'到达时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'arrival_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'到达时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'arrival_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'expiration_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'订单过期时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'expiration_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'订单过期时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'expiration_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order', 
'COLUMN', N'notify_url')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'火车票回调地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'notify_url'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'火车票回调地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order'
, @level2type = 'COLUMN', @level2name = N'notify_url'
GO

-- ----------------------------
-- Table structure for api_train_order_child
-- ----------------------------
--DROP TABLE [dbo].[api_train_order_child]
GO
CREATE TABLE [dbo].[api_train_order_child] (
[id] int NOT NULL IDENTITY(1,1) NOT FOR REPLICATION ,
[order_no_supplier] varchar(30) NOT NULL ,
[passenger_id] varchar(20) NULL ,
[passenger_name] varchar(255) NULL ,
[passenger_type] int NULL ,
[id_type] int NULL ,
[id_card] varchar(30) NULL ,
[birthday] varchar(30) NULL ,
[seat_class] varchar(30) NULL ,
[seat_class_name] varchar(30) NULL ,
[seat_no] varchar(30) NULL ,
[p_ticket_no] varchar(30) NULL ,
[ticket_state_code] varchar(10) NULL ,
[ticket_state] varchar(20) NULL ,
[ticket_price] decimal(18,2) NULL ,
[insure_unit_price] decimal(18,2) NULL ,
[insure_state] varchar(10) NULL ,
[insure_bill_no] varchar(30) NULL ,
[refund_fee] decimal(18,2) NULL ,
[refund_time] datetime NULL ,
[ticket_gate] varchar(30) NULL ,
[refund_price] decimal(18,2) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[api_train_order_child]', RESEED, 114)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'order_no_supplier')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'第三方订单号(同火车票订单详情orderNo)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'order_no_supplier'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'第三方订单号(同火车票订单详情orderNo)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'order_no_supplier'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'passenger_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'乘客编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'passenger_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'乘客编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'passenger_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'passenger_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'乘客姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'passenger_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'乘客姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'passenger_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'passenger_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'乘客类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'passenger_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'乘客类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'passenger_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'id_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'证件类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'id_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'证件类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'id_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'id_card')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'证件号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'id_card'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'证件号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'id_card'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'birthday')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'生日'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'birthday'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'生日'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'birthday'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'seat_class')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'座位类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'seat_class'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'座位类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'seat_class'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'seat_class_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'座位类型名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'seat_class_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'座位类型名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'seat_class_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'seat_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'座位号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'seat_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'座位号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'seat_no'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'p_ticket_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'乘客火车票编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'p_ticket_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'乘客火车票编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'p_ticket_no'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'ticket_state_code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'火车票状态编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'ticket_state_code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'火车票状态编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'ticket_state_code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'ticket_state')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'火车票状态名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'ticket_state'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'火车票状态名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'ticket_state'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'ticket_price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'火车票金额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'ticket_price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'火车票金额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'ticket_price'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'insure_unit_price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'保险金额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'insure_unit_price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'保险金额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'insure_unit_price'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'insure_state')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'保险状态(F：已购保）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'insure_state'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'保险状态(F：已购保）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'insure_state'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'insure_bill_no')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'保险单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'insure_bill_no'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'保险单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'insure_bill_no'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'refund_fee')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'退票手续费'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'refund_fee'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'退票手续费'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'refund_fee'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'refund_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'退票完成时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'refund_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'退票完成时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'refund_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'ticket_gate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'检票口信息 （不是所有都可获取到检票口信息）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'ticket_gate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'检票口信息 （不是所有都可获取到检票口信息）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'ticket_gate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'api_train_order_child', 
'COLUMN', N'refund_price')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'退款金额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'refund_price'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'退款金额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'api_train_order_child'
, @level2type = 'COLUMN', @level2name = N'refund_price'
GO

-- ----------------------------
-- Table structure for api_train_order_insur
-- ----------------------------
--DROP TABLE [dbo].[api_train_order_insur]
GO
CREATE TABLE [dbo].[api_train_order_insur] (
[id] int NOT NULL IDENTITY(1,1) NOT FOR REPLICATION ,
[orderNo] varchar(50) NULL ,
[state] char(2) NULL ,
[facePrice] decimal(10,2) NULL ,
[payCash] decimal(10,2) NULL ,
[itemCash] decimal(10,2) NULL ,
[salePrice] decimal(10,2) NULL ,
[saleOrderNo] varchar(50) NULL ,
[insuranceNo] varchar(50) NULL ,
[itemId] varchar(50) NULL ,
[userTel] varchar(20) NULL ,
[userName] nvarchar(20) NULL ,
[insurancePolicyNo] varchar(50) NULL 
)


GO

-- ----------------------------
-- Table structure for t_qrtz_fired_triggers
-- ----------------------------
--DROP TABLE [dbo].[t_qrtz_fired_triggers]
GO
CREATE TABLE [dbo].[t_qrtz_fired_triggers] (
[sched_name] nvarchar(64) NOT NULL ,
[entry_id] nvarchar(128) NOT NULL ,
[trigger_name] nvarchar(64) NOT NULL ,
[trigger_group] nvarchar(64) NOT NULL ,
[instance_name] nvarchar(64) NOT NULL ,
[fired_time] bigint NOT NULL ,
[sched_time] bigint NOT NULL ,
[priority] int NOT NULL ,
[state] nvarchar(16) NOT NULL ,
[job_name] nvarchar(64) NULL ,
[job_group] nvarchar(64) NULL ,
[is_nonconcurrent] nvarchar(1) NULL ,
[requests_recovery] nvarchar(1) NULL 
)


GO

-- ----------------------------
-- Table structure for t_qrtz_locks
-- ----------------------------
--DROP TABLE [dbo].[t_qrtz_locks]
GO
CREATE TABLE [dbo].[t_qrtz_locks] (
[sched_name] nvarchar(64) NOT NULL ,
[lock_name] nvarchar(64) NOT NULL 
)


GO

-- ----------------------------
-- Table structure for t_qrtz_scheduler_state
-- ----------------------------
--DROP TABLE [dbo].[t_qrtz_scheduler_state]
GO
CREATE TABLE [dbo].[t_qrtz_scheduler_state] (
[sched_name] nvarchar(64) NOT NULL ,
[instance_name] nvarchar(128) NOT NULL ,
[last_checkin_time] bigint NOT NULL ,
[checkin_interval] bigint NOT NULL 
)


GO

-- ----------------------------
-- Table structure for t_qrtz_triggers
-- ----------------------------
--DROP TABLE [dbo].[t_qrtz_triggers]
GO
CREATE TABLE [dbo].[t_qrtz_triggers] (
[sched_name] nvarchar(64) NOT NULL ,
[trigger_name] nvarchar(64) NOT NULL ,
[trigger_group] nvarchar(64) NOT NULL ,
[job_name] nvarchar(64) NOT NULL ,
[job_group] nvarchar(64) NOT NULL ,
[description] nvarchar(128) NULL ,
[next_fire_time] bigint NULL ,
[prev_fire_time] bigint NULL ,
[priority] int NULL ,
[trigger_state] nvarchar(16) NOT NULL ,
[trigger_type] nvarchar(8) NOT NULL ,
[start_time] bigint NOT NULL ,
[end_time] bigint NULL ,
[calendar_name] nvarchar(128) NULL ,
[misfire_instr] smallint NULL ,
[job_data] varbinary(MAX) NULL 
)


GO

-- ----------------------------
-- Table structure for t_sys_dict
-- ----------------------------
--DROP TABLE [dbo].[t_sys_dict]
GO
CREATE TABLE [dbo].[t_sys_dict] (
[id] int NOT NULL IDENTITY(1,1) ,
[type] nvarchar(16) NOT NULL ,
[k] nvarchar(16) NOT NULL ,
[val] nvarchar(64) NOT NULL ,
[createtime] datetime2(7) NOT NULL ,
[updatetime] datetime2(7) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_sys_dict]', RESEED, 93)
GO

-- ----------------------------
-- Table structure for t_sys_file_info
-- ----------------------------
--DROP TABLE [dbo].[t_sys_file_info]
GO
CREATE TABLE [dbo].[t_sys_file_info] (
[id] nvarchar(32) NOT NULL ,
[contenttype] nvarchar(128) NOT NULL ,
[size] int NOT NULL ,
[path] nvarchar(255) NOT NULL ,
[url] nvarchar(1024) NOT NULL ,
[type] int NOT NULL ,
[createtime] datetime2(7) NOT NULL ,
[updatetime] datetime2(7) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_file_info', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'文件md5'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_file_info'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'文件md5'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_file_info'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_file_info', 
'COLUMN', N'path')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'物理路径'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_file_info'
, @level2type = 'COLUMN', @level2name = N'path'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'物理路径'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_file_info'
, @level2type = 'COLUMN', @level2name = N'path'
GO

-- ----------------------------
-- Table structure for t_sys_job
-- ----------------------------
--DROP TABLE [dbo].[t_sys_job]
GO
CREATE TABLE [dbo].[t_sys_job] (
[id] int NOT NULL IDENTITY(1,1) ,
[jobname] nvarchar(64) NOT NULL ,
[description] nvarchar(255) NULL ,
[cron] nvarchar(64) NOT NULL ,
[springbeanname] nvarchar(64) NOT NULL ,
[methodname] nvarchar(64) NOT NULL ,
[issysjob] tinyint NOT NULL ,
[status] tinyint NOT NULL ,
[createtime] datetime2(7) NOT NULL ,
[updatetime] datetime2(7) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_job', 
'COLUMN', N'springbeanname')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'springbean名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_job'
, @level2type = 'COLUMN', @level2name = N'springbeanname'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'springbean名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_job'
, @level2type = 'COLUMN', @level2name = N'springbeanname'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_job', 
'COLUMN', N'methodname')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'方法名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_job'
, @level2type = 'COLUMN', @level2name = N'methodname'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'方法名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_job'
, @level2type = 'COLUMN', @level2name = N'methodname'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_job', 
'COLUMN', N'issysjob')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否是系统job'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_job'
, @level2type = 'COLUMN', @level2name = N'issysjob'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否是系统job'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_job'
, @level2type = 'COLUMN', @level2name = N'issysjob'
GO

-- ----------------------------
-- Table structure for t_sys_login_info
-- ----------------------------
--DROP TABLE [dbo].[t_sys_login_info]
GO
CREATE TABLE [dbo].[t_sys_login_info] (
[id] int NOT NULL IDENTITY(1,1) ,
[userId] nvarchar(20) NOT NULL ,
[username] varchar(255) NOT NULL ,
[operatorTime] datetime NOT NULL DEFAULT (getdate()) ,
[result] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_sys_login_info]', RESEED, 2715)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_login_info', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录记录表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_login_info'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录记录表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_login_info'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_login_info', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_login_info'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_login_info'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_login_info', 
'COLUMN', N'userId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_login_info'
, @level2type = 'COLUMN', @level2name = N'userId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_login_info'
, @level2type = 'COLUMN', @level2name = N'userId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_login_info', 
'COLUMN', N'username')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用戶名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_login_info'
, @level2type = 'COLUMN', @level2name = N'username'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用戶名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_login_info'
, @level2type = 'COLUMN', @level2name = N'username'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_login_info', 
'COLUMN', N'operatorTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_login_info'
, @level2type = 'COLUMN', @level2name = N'operatorTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_login_info'
, @level2type = 'COLUMN', @level2name = N'operatorTime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_login_info', 
'COLUMN', N'result')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作结果(0：登录成功，1：登录失败）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_login_info'
, @level2type = 'COLUMN', @level2name = N'result'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作结果(0：登录成功，1：登录失败）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_login_info'
, @level2type = 'COLUMN', @level2name = N'result'
GO

-- ----------------------------
-- Table structure for t_sys_logs
-- ----------------------------
--DROP TABLE [dbo].[t_sys_logs]
GO
CREATE TABLE [dbo].[t_sys_logs] (
[id] int NOT NULL IDENTITY(1,1) ,
[userid] int NULL ,
[module] nvarchar(50) NULL ,
[flag] tinyint NULL ,
[remark] nvarchar(MAX) NULL ,
[createtime] datetime2(7) NOT NULL ,
[ipRequest] varchar(255) NULL ,
[custom_no] varchar(20) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_sys_logs]', RESEED, 12819)
GO

-- ----------------------------
-- Table structure for t_sys_notice
-- ----------------------------
--DROP TABLE [dbo].[t_sys_notice]
GO
CREATE TABLE [dbo].[t_sys_notice] (
[id] int NOT NULL IDENTITY(1,1) ,
[title] nvarchar(128) NOT NULL ,
[content] nvarchar(MAX) NOT NULL ,
[status] tinyint NOT NULL ,
[createtime] datetime2(7) NOT NULL ,
[updatetime] datetime2(7) NOT NULL 
)


GO

-- ----------------------------
-- Table structure for t_sys_notice_read
-- ----------------------------
--DROP TABLE [dbo].[t_sys_notice_read]
GO
CREATE TABLE [dbo].[t_sys_notice_read] (
[noticeid] int NOT NULL ,
[userid] int NOT NULL ,
[createtime] datetime2(7) NOT NULL 
)


GO

-- ----------------------------
-- Table structure for t_sys_permission
-- ----------------------------
--DROP TABLE [dbo].[t_sys_permission]
GO
CREATE TABLE [dbo].[t_sys_permission] (
[id] int NOT NULL IDENTITY(1,1) ,
[parentid] int NOT NULL ,
[name] nvarchar(50) NOT NULL ,
[css] nvarchar(30) NULL ,
[href] nvarchar(1000) NULL ,
[type] tinyint NOT NULL ,
[permission] nvarchar(50) NULL ,
[sort] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_sys_permission]', RESEED, 48)
GO

-- ----------------------------
-- Table structure for t_sys_region_info
-- ----------------------------
--DROP TABLE [dbo].[t_sys_region_info]
GO
CREATE TABLE [dbo].[t_sys_region_info] (
[id] int NOT NULL IDENTITY(1,1) ,
[region_id] int NOT NULL ,
[parent_region_id] int NOT NULL ,
[region_name] nvarchar(64) NOT NULL ,
[depth] int NULL ,
[is_last] tinyint NOT NULL ,
[full_region_path] nvarchar(20) NOT NULL ,
[remark] nvarchar(255) NULL ,
[is_valid] tinyint NULL ,
[is_deleted] tinyint NULL ,
[created_by] nvarchar(64) NULL ,
[created_time] datetime2(7) NULL ,
[last_updated_by] nvarchar(64) NULL ,
[last_updated_time] datetime2(7) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'区域信息表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'区域信息表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
'COLUMN', N'region_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'地区编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'region_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'地区编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'region_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
'COLUMN', N'parent_region_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'父地区编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'parent_region_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'父地区编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'parent_region_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
'COLUMN', N'region_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'地区名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'region_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'地区名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'region_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
'COLUMN', N'depth')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'父级区域机构'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'depth'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'父级区域机构'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'depth'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
'COLUMN', N'is_last')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'is_last'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'is_last'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
'COLUMN', N'full_region_path')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'full_region_path'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'full_region_path'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'开户备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'开户备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
'COLUMN', N'is_valid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否有效'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'is_valid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否有效'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'is_valid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
'COLUMN', N'is_deleted')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'is_deleted'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否删除'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'is_deleted'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
'COLUMN', N'created_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'created_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'created_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
'COLUMN', N'created_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'created_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'created_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
'COLUMN', N'last_updated_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'last_updated_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'last_updated_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_region_info', 
'COLUMN', N'last_updated_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'last_updated_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_region_info'
, @level2type = 'COLUMN', @level2name = N'last_updated_time'
GO

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
--DROP TABLE [dbo].[t_sys_role]
GO
CREATE TABLE [dbo].[t_sys_role] (
[id] int NOT NULL IDENTITY(1,1) ,
[name] nvarchar(50) NOT NULL ,
[description] nvarchar(100) NULL ,
[createtime] datetime2(7) NOT NULL ,
[updatetime] datetime2(7) NOT NULL ,
[username] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_sys_role]', RESEED, 9)
GO

-- ----------------------------
-- Table structure for t_sys_role_permission
-- ----------------------------
--DROP TABLE [dbo].[t_sys_role_permission]
GO
CREATE TABLE [dbo].[t_sys_role_permission] (
[roleid] int NOT NULL ,
[permissionid] int NOT NULL 
)


GO

-- ----------------------------
-- Table structure for t_sys_role_user
-- ----------------------------
--DROP TABLE [dbo].[t_sys_role_user]
GO
CREATE TABLE [dbo].[t_sys_role_user] (
[userid] int NOT NULL ,
[roleid] int NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_role_user', 
'COLUMN', N'userid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_role_user'
, @level2type = 'COLUMN', @level2name = N'userid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_role_user'
, @level2type = 'COLUMN', @level2name = N'userid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_role_user', 
'COLUMN', N'roleid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_role_user'
, @level2type = 'COLUMN', @level2name = N'roleid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_role_user'
, @level2type = 'COLUMN', @level2name = N'roleid'
GO

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
--DROP TABLE [dbo].[t_sys_user]
GO
CREATE TABLE [dbo].[t_sys_user] (
[id] int NOT NULL IDENTITY(1,1) ,
[username] nvarchar(50) NOT NULL ,
[payment_password] nvarchar(50) NOT NULL ,
[password] nvarchar(32) NOT NULL ,
[account_type] tinyint NOT NULL ,
[salt] nvarchar(32) NOT NULL ,
[nickname] nvarchar(255) NULL ,
[headimgurl] nvarchar(255) NULL ,
[phone] nvarchar(11) NULL ,
[telephone] nvarchar(30) NULL ,
[email] nvarchar(50) NULL ,
[birthday] date NULL ,
[sex] tinyint NULL ,
[status] tinyint NOT NULL ,
[createtime] datetime2(7) NOT NULL ,
[updatetime] datetime2(7) NOT NULL ,
[fingerprint1] varchar(1024) NULL ,
[fingerprint2] varchar(1024) NULL ,
[fingerprint3] varchar(1024) NULL ,
[is_power] char(1) NULL ,
[power_time] datetime NULL ,
[power_user] varchar(20) NULL ,
[fingerprint_time] datetime NULL ,
[createuser] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_sys_user]', RESEED, 45)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_user', 
'COLUMN', N'username')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user'
, @level2type = 'COLUMN', @level2name = N'username'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user'
, @level2type = 'COLUMN', @level2name = N'username'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_user', 
'COLUMN', N'payment_password')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'支付密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user'
, @level2type = 'COLUMN', @level2name = N'payment_password'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'支付密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user'
, @level2type = 'COLUMN', @level2name = N'payment_password'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_user', 
'COLUMN', N'account_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'账户类型(0:企业，1：平台，2：管理员)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user'
, @level2type = 'COLUMN', @level2name = N'account_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'账户类型(0:企业，1：平台，2：管理员)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user'
, @level2type = 'COLUMN', @level2name = N'account_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_user', 
'COLUMN', N'is_power')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否使用指纹登录（0：不使用，1：使用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user'
, @level2type = 'COLUMN', @level2name = N'is_power'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否使用指纹登录（0：不使用，1：使用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user'
, @level2type = 'COLUMN', @level2name = N'is_power'
GO

-- ----------------------------
-- Table structure for t_sys_user_customer
-- ----------------------------
--DROP TABLE [dbo].[t_sys_user_customer]
GO
CREATE TABLE [dbo].[t_sys_user_customer] (
[id] int NOT NULL IDENTITY(1,1) ,
[user_id] int NOT NULL ,
[customer_id] int NOT NULL ,
[create_by] varchar(64) NOT NULL ,
[create_time] datetime NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_sys_user_customer]', RESEED, 45)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_user_customer', 
'COLUMN', N'user_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'关联用户表id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user_customer'
, @level2type = 'COLUMN', @level2name = N'user_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'关联用户表id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user_customer'
, @level2type = 'COLUMN', @level2name = N'user_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_user_customer', 
'COLUMN', N'customer_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'关联企业表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user_customer'
, @level2type = 'COLUMN', @level2name = N'customer_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'关联企业表ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user_customer'
, @level2type = 'COLUMN', @level2name = N'customer_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_user_customer', 
'COLUMN', N'create_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user_customer'
, @level2type = 'COLUMN', @level2name = N'create_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user_customer'
, @level2type = 'COLUMN', @level2name = N'create_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_sys_user_customer', 
'COLUMN', N'create_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user_customer'
, @level2type = 'COLUMN', @level2name = N'create_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_sys_user_customer'
, @level2type = 'COLUMN', @level2name = N'create_time'
GO

-- ----------------------------
-- Indexes structure for table api_air_order
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_air_order
-- ----------------------------
ALTER TABLE [dbo].[api_air_order] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_air_order_child
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_air_order_child
-- ----------------------------
ALTER TABLE [dbo].[api_air_order_child] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_common_facle_value
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_common_facle_value
-- ----------------------------
ALTER TABLE [dbo].[api_common_facle_value] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_common_order
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_common_order
-- ----------------------------
ALTER TABLE [dbo].[api_common_order] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_customer
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_customer
-- ----------------------------
ALTER TABLE [dbo].[api_customer] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_film
-- ----------------------------

-- ----------------------------
-- Uniques structure for table api_film
-- ----------------------------
ALTER TABLE [dbo].[api_film] ADD UNIQUE ([film_id] ASC)
GO

-- ----------------------------
-- Indexes structure for table api_film_broadcast
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_film_broadcast
-- ----------------------------
ALTER TABLE [dbo].[api_film_broadcast] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_film_cinema
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_film_cinema
-- ----------------------------
ALTER TABLE [dbo].[api_film_cinema] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table api_film_cinema
-- ----------------------------
ALTER TABLE [dbo].[api_film_cinema] ADD UNIQUE ([cinema_id] ASC)
GO

-- ----------------------------
-- Indexes structure for table api_film_city
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_film_city
-- ----------------------------
ALTER TABLE [dbo].[api_film_city] ADD PRIMARY KEY ([city_id])
GO

-- ----------------------------
-- Indexes structure for table api_film_hall
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_film_hall
-- ----------------------------
ALTER TABLE [dbo].[api_film_hall] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_film_order
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_film_order
-- ----------------------------
ALTER TABLE [dbo].[api_film_order] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_film_region
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_film_region
-- ----------------------------
ALTER TABLE [dbo].[api_film_region] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table api_film_region
-- ----------------------------
ALTER TABLE [dbo].[api_film_region] ADD UNIQUE ([city_id] ASC, [region_id] ASC)
GO

-- ----------------------------
-- Indexes structure for table api_film_seat
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_film_seat
-- ----------------------------
ALTER TABLE [dbo].[api_film_seat] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_film_show
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_film_show
-- ----------------------------
ALTER TABLE [dbo].[api_film_show] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_passenger
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_passenger
-- ----------------------------
ALTER TABLE [dbo].[api_passenger] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_taxi_city
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_taxi_city
-- ----------------------------
ALTER TABLE [dbo].[api_taxi_city] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_taxi_city_biz
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_taxi_city_biz
-- ----------------------------
ALTER TABLE [dbo].[api_taxi_city_biz] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_taxi_order
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_taxi_order
-- ----------------------------
ALTER TABLE [dbo].[api_taxi_order] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_train_order
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_train_order
-- ----------------------------
ALTER TABLE [dbo].[api_train_order] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_train_order_child
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_train_order_child
-- ----------------------------
ALTER TABLE [dbo].[api_train_order_child] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table api_train_order_insur
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table api_train_order_insur
-- ----------------------------
ALTER TABLE [dbo].[api_train_order_insur] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_qrtz_fired_triggers
-- ----------------------------
ALTER TABLE [dbo].[t_qrtz_fired_triggers] ADD PRIMARY KEY ([sched_name], [entry_id])
GO

-- ----------------------------
-- Indexes structure for table t_qrtz_locks
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_qrtz_locks
-- ----------------------------
ALTER TABLE [dbo].[t_qrtz_locks] ADD PRIMARY KEY ([sched_name], [lock_name])
GO

-- ----------------------------
-- Indexes structure for table t_qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_qrtz_scheduler_state
-- ----------------------------
ALTER TABLE [dbo].[t_qrtz_scheduler_state] ADD PRIMARY KEY ([sched_name], [instance_name])
GO

-- ----------------------------
-- Indexes structure for table t_qrtz_triggers
-- ----------------------------
CREATE INDEX [sched_name] ON [dbo].[t_qrtz_triggers]
([sched_name] ASC, [job_name] ASC, [job_group] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON)
GO

-- ----------------------------
-- Primary Key structure for table t_qrtz_triggers
-- ----------------------------
ALTER TABLE [dbo].[t_qrtz_triggers] ADD PRIMARY KEY ([sched_name], [trigger_name], [trigger_group])
GO

-- ----------------------------
-- Indexes structure for table t_sys_dict
-- ----------------------------
CREATE UNIQUE INDEX [type] ON [dbo].[t_sys_dict]
([type] ASC, [k] ASC) 
WITH (IGNORE_DUP_KEY = ON, STATISTICS_NORECOMPUTE = ON)
GO

-- ----------------------------
-- Primary Key structure for table t_sys_dict
-- ----------------------------
ALTER TABLE [dbo].[t_sys_dict] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_sys_file_info
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_sys_file_info
-- ----------------------------
ALTER TABLE [dbo].[t_sys_file_info] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_sys_job
-- ----------------------------
CREATE UNIQUE INDEX [jobname] ON [dbo].[t_sys_job]
([jobname] ASC) 
WITH (IGNORE_DUP_KEY = ON, STATISTICS_NORECOMPUTE = ON)
GO

-- ----------------------------
-- Primary Key structure for table t_sys_job
-- ----------------------------
ALTER TABLE [dbo].[t_sys_job] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_sys_login_info
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_sys_login_info
-- ----------------------------
ALTER TABLE [dbo].[t_sys_login_info] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_sys_logs
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_sys_logs
-- ----------------------------
ALTER TABLE [dbo].[t_sys_logs] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_sys_notice
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_sys_notice
-- ----------------------------
ALTER TABLE [dbo].[t_sys_notice] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_sys_notice_read
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_sys_notice_read
-- ----------------------------
ALTER TABLE [dbo].[t_sys_notice_read] ADD PRIMARY KEY ([noticeid], [userid])
GO

-- ----------------------------
-- Indexes structure for table t_sys_permission
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_sys_permission
-- ----------------------------
ALTER TABLE [dbo].[t_sys_permission] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_sys_region_info
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_sys_region_info
-- ----------------------------
ALTER TABLE [dbo].[t_sys_region_info] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_sys_role
-- ----------------------------
CREATE UNIQUE INDEX [name] ON [dbo].[t_sys_role]
([name] ASC) 
WITH (IGNORE_DUP_KEY = ON, STATISTICS_NORECOMPUTE = ON)
GO

-- ----------------------------
-- Primary Key structure for table t_sys_role
-- ----------------------------
ALTER TABLE [dbo].[t_sys_role] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_sys_role_permission
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_sys_role_permission
-- ----------------------------
ALTER TABLE [dbo].[t_sys_role_permission] ADD PRIMARY KEY ([roleid], [permissionid])
GO

-- ----------------------------
-- Indexes structure for table t_sys_role_user
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_sys_role_user
-- ----------------------------
ALTER TABLE [dbo].[t_sys_role_user] ADD PRIMARY KEY ([userid], [roleid])
GO

-- ----------------------------
-- Indexes structure for table t_sys_user
-- ----------------------------
CREATE UNIQUE INDEX [username] ON [dbo].[t_sys_user]
([username] ASC) 
WITH (IGNORE_DUP_KEY = ON, STATISTICS_NORECOMPUTE = ON)
GO

-- ----------------------------
-- Primary Key structure for table t_sys_user
-- ----------------------------
ALTER TABLE [dbo].[t_sys_user] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_sys_user_customer
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_sys_user_customer
-- ----------------------------
ALTER TABLE [dbo].[t_sys_user_customer] ADD PRIMARY KEY ([id])
GO
--插入福优网用户
INSERT INTO api_customer ( [name], [customer_no], [app_key], [app_secret], [remark], [created_by], [created_time], [last_updated_by], [last_updated_time], [is_pay_member]) VALUES ( '福优网', '88888888', '88888888', 'd20adc3949ba59uzi56e057f20f684f', '福优网', NULL, NULL, NULL, NULL, '1');
GO
--流量包数据
SET IDENTITY_INSERT api_phone_traffic_package ON;
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('1', NULL, '1', '3.00', '2.70', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '10M', '3', '2', '1', '1', ' ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('2', NULL, '2', '4.00', '3.60', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '20M', '4', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('3', NULL, '3', '5.00', '4.50', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '30M', '5', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('4', NULL, '4', '7.00', '6.30', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '50M', '7', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('5', NULL, '5', '10.00', '9.00', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '70M', '10', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('6', NULL, '6', '10.00', '9.00', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '100M', '10', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('7', NULL, '7', '20.00', '18.00', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '150M', '20', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('8', NULL, '8', '20.00', '18.00', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '200M', '20', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('9', NULL, '9', '20.00', '18.00', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '300M', '20', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('10', NULL, '10', '30.00', '27.00', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '500M', '30', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('11', NULL, '11', '50.00', '45.00', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '1G', '50', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('12', NULL, '12', '70.00', '63.00', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '2G', '70', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('13', NULL, '13', '100.00', '90.00', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '3G', '100', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('14', NULL, '14', '130.00', '117.00', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '4G', '130', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('15', NULL, '15', '180.00', '162.00', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '6G', '180', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('16', NULL, '16', '280.00', '252.00', '3.00', '移动', '欧飞', NULL, NULL, NULL, NULL, '11G', '280', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('17', NULL, '17', '3.00', '2.80', '3.00', '联通', '欧飞', NULL, NULL, NULL, NULL, '20M', '3', '2', '1', '1', '  ', '5');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('18', NULL, '18', '4.00', '3.80', '3.00', '联通', '欧飞', NULL, NULL, NULL, NULL, '30M', '4', '2', '1', '1', '  ', '5');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('19', NULL, '19', '6.00', '5.70', '3.00', '联通', '欧飞', NULL, NULL, NULL, NULL, '50M', '6', '2', '1', '1', '  ', '5');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('20', NULL, '20', '10.00', '9.50', '3.00', '联通', '欧飞', NULL, NULL, NULL, NULL, '100M', '10', '2', '1', '1', '  ', '5');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('21', NULL, '21', '15.00', '14.25', '3.00', '联通', '欧飞', NULL, NULL, NULL, NULL, '200M', '15', '2', '1', '1', '  ', '5');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('22', NULL, '22', '20.00', '19.00', '3.00', '联通', '欧飞', NULL, NULL, NULL, NULL, '300M', '20', '2', '1', '1', '  ', '5');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('23', NULL, '23', '30.00', '28.50', '3.00', '联通', '欧飞', NULL, NULL, NULL, NULL, '500M', '30', '2', '1', '1', '  ', '5');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('24', NULL, '24', '50.65', '47.50', '3.00', '联通', '欧飞', NULL, NULL, NULL, NULL, '1G', '50', '2', '1', '1', '  ', '5');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('25', NULL, '25', '1.00', '.80', '3.00', '电信', '欧飞', NULL, NULL, NULL, NULL, '5M', '1', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('26', NULL, '26', '2.00', '1.60', '3.00', '电信', '欧飞', NULL, NULL, NULL, NULL, '10M', '2', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('27', NULL, '27', '5.00', '4.00', '3.00', '电信', '欧飞', NULL, NULL, NULL, NULL, '30M', '5', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('28', NULL, '28', '7.00', '5.60', '3.00', '电信', '欧飞', NULL, NULL, NULL, NULL, '50M', '7', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('29', NULL, '29', '10.00', '8.00', '3.00', '电信', '欧飞', NULL, NULL, NULL, NULL, '100M', '10', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('30', NULL, '30', '15.00', '12.00', '3.00', '电信', '欧飞', NULL, NULL, NULL, NULL, '200M', '15', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('31', NULL, '31', '30.00', '24.00', '3.00', '电信', '欧飞', NULL, NULL, NULL, NULL, '500M', '30', '2', '1', '1', '  ', '0');
INSERT INTO [api_phone_traffic_package] ([id], [package_name], [package_id], [sale_price], [cost_price], [market_price], [telecom_operators], [supplier], [create_by], [create_time], [update_by], [update_time], [flow_value], [per_value], [range], [effect_start_time], [effect_time], [net_type], [max_recharge]) VALUES ('32', NULL, '32', '50.00', '40.00', '3.00', '电信', '欧飞', NULL, NULL, NULL, NULL, '1G', '50', '2', '1', '1', '  ', '0');
SET IDENTITY_INSERT api_phone_traffic_package OFF;

--话费套餐
SET IDENTITY_INSERT api_common_facle_value ON;

INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('1', '1', '1', '1', '移动', '2', '1', '1', NULL, '话费充值', '欧菲', NULL, '1', NULL);
INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('2', '2', '2', '2', '移动', '2', '1', '1', NULL, '话费充值', '欧菲', NULL, '1', NULL);
INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('3', '5', '5', '5', '移动', '2', '1', '1', NULL, '话费充值', '欧菲', NULL, '1', NULL);
INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('4', '10', '10', '10', '移动', '2', '1', '1', NULL, '话费充值', '欧菲', NULL, '1', NULL);
INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('5', '20', '20', '20', '移动', '2', '1', '1', NULL, '话费充值', '欧菲', NULL, '1', NULL);
INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('6', '30', '30', '30', '移动', '2', '1', '1', NULL, '话费充值', '欧菲', NULL, '1', NULL);
INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('7', '50', '50', '50', '移动', '2', '1', '1', NULL, '话费充值', '欧菲', NULL, '1', NULL);
INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('8', '100', '100', '100', '移动', '2', '1', '1', NULL, '话费充值', '欧菲', NULL, '1', NULL);
INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('9', '200', '200', '200', '移动', '2', '1', '1', NULL, '话费充值', '欧菲', NULL, '1', NULL);
INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('10', '300', '300', '300', '移动', '2', '1', '1', NULL, '话费充值', '欧菲', NULL, '1', NULL);
INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('11', '500', '500', '500', '移动', '2', '1', '1', NULL, '话费充值', '欧菲', NULL, '1', NULL);
INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('12', '100', '100', '100', '中石化', '2', '1', '1', NULL, '加油卡充值', '欧菲', NULL, '2', '64157004');
INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('13', '200', '200', '200', '中石化', '2', '1', '1', NULL, '加油卡充值', '欧菲', NULL, '2', '64157003');
INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('14', '500', '500', '500', '中石化', '2', '1', '1', NULL, '加油卡充值', '欧菲', NULL, '2', '64157002');
INSERT INTO [api_common_facle_value] ([id], [originals_price], [foreign_price], [supplier_price], [telecom_operators], [range], [effect_start_time], [effect_time], [net_type], [package_name], [recharge_source], [remark], [package_id], [package_number]) VALUES ('15', '1000', '1000', '1000', '中石化', '2', '1', '1', NULL, '加油卡充值', '欧菲', NULL, '2', '64157001');
SET IDENTITY_INSERT api_common_facle_value OFF;

GO

--函数
create FUNCTION [dbo].[f_GetDistance]
( 
@GPSLng VARCHAR,
@GPSLat VARCHAR,
@Lng  DECIMAL(12,6),
@Lat DECIMAL(12,6)
)
RETURNS DECIMAL(12,4)
AS
BEGIN
	 if @GPSLat=''
     begin 
       set @GPSLat=0
end 
if @GPSLng=''
     begin 
       set @GPSLng=0
end 
   DECLARE @result DECIMAL(12,4)
   SELECT @result = 6378137.0*ACOS(SIN(cast(@GPSLat as DECIMAL(12,6))/180*PI())*SIN(@Lat/180*PI())+COS(cast(@GPSLat as decimal(12,6))/180*PI())*COS(@Lat/180*PI())*COS(cast(@GPSLng as decimal(12,6))-@Lng)/180*PI())
   RETURN @result
END

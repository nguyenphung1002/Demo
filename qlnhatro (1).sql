create database QL_NhaTro
go
use QL_NhaTro
go
create table Phong
(
	id int primary key  IDENTITY(1,1),
	tenphong nvarchar(20) not null,
	loaiphong nvarchar(20) not null,
	trangthai nvarchar(20) default N'Hoạt động',
	giasan int,
)
go
create table KhachHang
(
	id int primary key  IDENTITY(1,1),
	phong int,
	ten nvarchar(20),
	ho nvarchar(20),
	tendem nvarchar(20),
	CMND varchar(20) unique not null,
	nsinh date,
	gioitinh bit,
	dienthoai varchar(20) not null,
	quequan nvarchar(20),
	anh image,
	trangthai bit DEFAULT 1,
	FOREIGN KEY (phong) REFERENCES Phong(id),
)

go

create table ThuePhong
(
	id int primary key  IDENTITY(1,1),
	khachhang int,
	phong int,
	ngaythue date,
	ngaytraphong date,
	tiendatcoc int,
	giathue int,
	trangthai nvarchar(20) default N'Còn hạn',
	FOREIGN KEY (khachhang) REFERENCES KhachHang(id),
	FOREIGN KEY (phong) REFERENCES Phong(id),
)

go

create table HoaDon
(
	id int primary key  IDENTITY(1,1),
	id_thuephong int,
	ngaylaphoadon datetime,
	tienwifi int,
	chisonuocmoi int,
	chisodienmoi float,
	chisonuoccu int,
	chisodiencu float,
	dongiadien int,
	dongianuoc int,
	tienrac int,
	chiphikhac int,
	mota nvarchar(20),
	tongtien float,
	sotiendathanhtoan float default 0,
	tienphong int,
	FOREIGN KEY (id_thuephong) REFERENCES ThuePhong(id),
)


create database ERD;
use ERD;
create table phieuxuat(
soPx int auto_increment primary key,
NgayXuat date
);
create table chitietphieuxuat(
DGxuat int ,
SLxuat int ,
soPx int,
MaVTU int,
foreign key (soPx) references phieuxuat (soPx), 
foreign key (MaVTU) references VatTu (MaVTU)
);
create table VatTu(
MaVTU int primary key auto_increment,
TenVTU  varchar(50)
);
create table chitietphieunhap(
DGnhap int,
SLnhap int,
MaVTU int,
SoPN int,
foreign key (MaVTU) references VatTu (MaVTU), 
foreign key (SoPN) references PhieuNhap (SoPN) 
);
create table PhieuNhap(
SoPN int auto_increment primary key ,
NgayNhap date
);
create table chitietdondathang(
id int auto_increment primary key,
MaVTU int,
SoDH int ,
foreign key (MaVTU) references VatTu (MaVTU), 
foreign key (SoDH) references DonDH (SoDH)
);
create table DonDH(
SoDH int primary key auto_increment,
NgayDH date
);
create table cungcap(
id int primary key auto_increment,
SoDH int,
MaNCC int ,
foreign key (SoDH) references DonDH (SoDH),
foreign key (MaNCC) references NhaCC (MaNCC)
);
create table NhaCC (
MaNCC int primary key auto_increment,
TenNCC varchar(50),
DiaChi varchar(50),
SDT varchar(11)
);
CREATE TABLE DienThoai (
    id int PRIMARY KEY AUTO_INCREMENT,
    sdt varchar(11) UNIQUE
);
alter table NhaCC add column dienthoaiId int , 
add foreign key (dienthoaiID) references dienthoai(id);

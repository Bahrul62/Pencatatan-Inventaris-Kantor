create table admin(
userid varchar (50) not null primary key,
password char(8) not null,
)
create table barang (
kd_barang char (4)not null primary key,
nm_barang varchar not null,
jml_barang int not null,
keterangan text,
)
create table ruang (
kd_ruang char(4) not null primary key,
nm_ruang varchar not null,
)
create table detail_inventaris(
kd_barang char (4)not null,
kd_ruang char(4) not null
CONSTRAINT fk_barang FOREIGN KEY (kd_barang) REFERENCES
barang(kd_barang),
CONSTRAINT fk_ruang FOREIGN KEY (kd_ruang) REFERENCES
ruang(kd_ruang)
)
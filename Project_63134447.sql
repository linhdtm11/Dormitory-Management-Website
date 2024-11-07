CREATE DATABASE  Project_63134447
GO
USE  Project_63134447
GO

CREATE TABLE Phong (
  MaPhong VARCHAR(10) PRIMARY KEY,
  TenPhong NVARCHAR(100) NOT NULL,
  SoGiuong INT NOT NULL,
  LoaiPhong NVARCHAR(50)NOT NULL,
  GiaPhong DECIMAL(10,2)
)
GO

CREATE TABLE SinhVien (
  MaSV VARCHAR(10) PRIMARY KEY,
  HoTen NVARCHAR(50) NOT NULL,
  GioiTinh NVARCHAR(10) NOT NULL,
  AnhSV VARCHAR(20)NOT NULL,
  NgaySinh DATE NOT NULL,
  QueQuan NVARCHAR(50)NOT NULL,
  Lop VARCHAR(50)NOT NULL,
  SDT VARCHAR(20)NOT NULL,
  Email VARCHAR(50)NOT NULL,
  NgayBatDau DATE NOT NULL,
  MaPhong VARCHAR(10)NOT NULL,
  FOREIGN KEY (MaPhong) REFERENCES Phong(Maphong)
);
CREATE TABLE PhieuDatPhong (
  MaPDP VARCHAR(10) PRIMARY KEY,
  NgayDat DATE NOT NULL,
  NgayBatDau DATE NOT NULL,
  NgayKetThuc DATE NOT NULL,
  TongTien DECIMAL(10,2) NOT NULL,
  MaPhong VARCHAR(10),
  MaSV VARCHAR(10) ,
  FOREIGN KEY (MaPhong) REFERENCES Phong(MaPhong),
  FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV)
);
CREATE TABLE ThanhToan (
  MaTT VARCHAR(10) PRIMARY KEY,
  NgayTT DATE NOT NULL,
  SoTien DECIMAL(10,2) NOT NULL,
  MaPDP VARCHAR(10),
  FOREIGN KEY (MaPDP) REFERENCES PhieuDatPhong(MaPDP)
);
CREATE TABLE DichVu (
  MaDV VARCHAR(10) PRIMARY KEY,
  TenDV NVARCHAR(50) NOT NULL,
  GiaDV DECIMAL(10,2) NOT NULL
);
CREATE TABLE DichVu_PH (
  MaDV_PH VARCHAR(10) PRIMARY KEY,
  SoLuong INT NOT NULL,
  MaDV VARCHAR(10),
  MaPhong VARCHAR(10),
  FOREIGN KEY (MaDV) REFERENCES DichVu(MaDV),
  FOREIGN KEY (MaPhong) REFERENCES Phong(MaPhong)
);
CREATE TABLE QuanTri(
Email VARCHAR(50) PRIMARY KEY,
Admin bit,
HoTen NVARCHAR(50),
MatKhau VARCHAR(50)
);

INSERT INTO Phong (MaPhong, TenPhong, SoGiuong,LoaiPhong, GiaPhong)
VALUES 
    ('P0101', N'Phòng 101', 8, N'Phòng tập thể', 800000),
    ('P0102', N'Phòng 102', 8, N'Phòng tập thể', 800000),
    ('P0103', N'Phòng 103', 8, N'Phòng tập thể', 800000),
	('P0104', N'Phòng 104', 8, N'Phòng tập thể', 800000),
	('P0105', N'Phòng 105', 8, N'Phòng tập thể', 800000),
	('P0201', N'Phòng 201', 6, N'Phòng tập thể', 600000),
	('P0202', N'Phòng 202', 6, N'Phòng tập thể', 600000),
	('P0203', N'Phòng 203', 6, N'Phòng tập thể', 600000),
	('P0204', N'Phòng 204', 6, N'Phòng tập thể', 600000),
	('P0205', N'Phòng 205', 6, N'Phòng tập thể', 600000),
	('P0301', N'Phòng 301', 2, N'Phòng đôi', 300000),
	('P0302', N'Phòng 302', 2, N'Phòng đôi', 300000),
	('P0303', N'Phòng 303', 2, N'Phòng đôi', 300000),
	('P0304', N'Phòng 304', 2, N'Phòng đôi', 300000),
	('P0305', N'Phòng 305', 2, N'Phòng đôi', 300000),
	('P0401', N'Phòng 401', 6, N'Phòng tập thể', 600000),
	('P0402', N'Phòng 402', 6, N'Phòng tập thể', 600000),
	('P0403', N'Phòng 403', 6, N'Phòng tập thể', 600000),
	('P0404', N'Phòng 404', 6, N'Phòng tập thể', 600000),
	('P0405', N'Phòng 405', 6, N'Phòng tập thể', 600000)
	


INSERT INTO SinhVien(MaSV, HoTen, GioiTinh,AnhSV, NgaySinh, QueQuan, Lop, SDT, Email, NgayBatDau, MaPhong)
VALUES 
('63130966', N'Hồ Thảo Nhi', N'Nữ', 'employee.png', '2003-01-01', N'Hà Nội', '63.CNTT-1', '0987654321', 'nhi.ht.63cntt@ntu.edu.vn', '2021-08-01', 'P0101'),
('61132288', N'Lê Thị Hoa', N'Nữ', 'employee.png', '2001-05-12', N'Đà Nẵng', '61.QTKS-6', '0363630754', 'hoa.lt.61qtks@ntu.edu.vn', '2021-08-01', 'P0201'),
('62131658', N'Nguyễn Thị Hà', N'Nữ', 'employee.png', '2002-07-22', N'Phú Yên', '62.QTKS-2', '0363774857', 'ha.nt.62qtks@ntu.edu.vn', '2021-09-01', 'P0201'),
('62131117', N'Trần Thị Lệ', N'Nữ', 'employee.png', '2002-03-18', N'Phú Yên', '62.TTQL-2', '0983852527', 'le.tt.62ttql@ntu.edu.vn', '2021-09-01', 'P0202'),
('62131336', N'Phạm Thị Thanh Hằng', N'Nữ', 'employee.png', '2002-07-30', N'Đà Nẵng', '62.TTQL-2', '0981100478', 'hang.ptt.62ttql@ntu.edu.vn', '2021-08-01', 'P0202'),
('63132255', N'Nguyễn Thị Mê Ly', N'Nữ', 'employee.png', '2003-08-28', N'Hà Nam', '63.TTQL-1', '0397524085', 'ly.ntm.63ttql@ntu.edu.vn', '2021-10-01', 'P0203'),
('63131598', N'Trần Thị Phi', N'Nữ', 'employee.png', '2003-10-07', N'Đà Nẵng', '63.TTQL-1', '0388547770', 'phi.tt.63ttql@ntu.edu.vn', '2021-08-01', 'P0203'),
('62133287', N'Nguyễn Minh Nhi', N'Nữ', 'employee.png', '2002-09-09', N'Đà Nẵng', '62.CNTP-1', '0388555222', 'nhi.nm.62cntp@ntu.edu.vn', '2021-10-01', 'P0201'),
('61139513', N'Lê Thị Thu', N'Nữ', 'employee.png', '2001-04-05', N'Khánh Hòa', '61.CNTP-1', '0987820013', 'thu.lt.61cntp@ntu.edu.vn', '2021-08-01', 'P0203'),
('62138756', N'Hà Thị Thu Minh', N'Nữ', 'employee.png', '2002-06-15', N'Khánh Hòa', '62.CNTP-2', '0989999885', 'minh.htt.62cntp@ntu.edu.vn', '2021-11-01', 'P0303'),
('62131537', N'Nguyễn Thị Tường Vi', N'Nữ', 'employee.png', '2002-09-25', N'Bình Thuận', '62.KT-1', '0905037755', 'vi.ntt.62kt@ntu.edu.vn', '2021-08-01', 'P0303'),
('63135032', N'Phạm Thị Mai', N'Nữ', 'employee.png', '2003-03-20', N'Hà Nam', '63.KT-1', '0987600320', 'mai.pt.63kt@ntu.edu.vn', '2021-08-01', 'P0401'),
('61130643', N'Nguyễn Thị Liên', N'Nữ', 'employee.png', '2001-05-22', N'Đà Nẵng', '61.QTKS-5', '0363030754', 'lien.nt.61qtks@ntu.edu.vn', '2021-08-01', 'P0401'),
('62133088', N'Nguyễn Thị Mai Hoa', N'Nữ', 'employee.png', '2002-07-20', N'Phú Yên', '62.QTKS-2', '0360774057', 'hoa.ntm.62qtks@ntu.edu.vn', '2021-09-01', 'P0401'),
('62130057', N'Trần Thị Mỹ', N'Nữ', 'employee.png', '2002-03-17', N'Phú Yên', '62.TTQL-2', '0983002007', 'my.tt.62ttql@ntu.edu.vn', '2021-09-01', 'P0401')


INSERT INTO PhieuDatPhong(MaPDP, NgayDat, NgayBatDau, NgayKetThuc, TongTien, MaPhong, MaSV)
VALUES 
    ('PD0001', '2021-07-25', '2021-08-01', '2022-08-01', 1200000, 'P0101', '63130966'),
	('PD0002', '2021-07-27', '2021-08-01', '2022-08-01', 1200000, 'P0201', '61132288'),
    ('PD0003', '2021-08-20', '2021-09-01', '2022-09-01', 1200000, 'P0201', '62131658'),
    ('PD0004', '2021-08-25', '2021-09-01', '2022-09-01', 1200000, 'P0202', '62131117'),
	('PD0005', '2021-08-25', '2020-09-01', '2022-09-01', 1200000, 'P0202', '62131336'),
	('PD0006', '2021-08-20', '2020-09-01', '2022-09-01', 1200000, 'P0203', '63132255'),
    ('PD0007', '2021-08-23', '2021-09-01', '2022-09-01', 1200000, 'P0203', '63131598'),
    ('PD0008', '2021-09-25', '2021-10-01', '2022-10-01', 1200000, 'P0201', '62133287'),
    ('PD0009', '2021-09-27', '2021-10-01', '2022-10-01', 1200000, 'P0203', '61139513'),
    ('PD0010', '2021-09-21', '2021-10-01', '2022-10-01', 1800000, 'P0303', '62138756'),
	('PD0011', '2021-07-20', '2021-08-01', '2022-08-01', 1800000, 'P0303', '62131537'),
    ('PD0012', '2021-08-25', '2021-09-01', '2022-09-01', 1200000, 'P0401', '63135032'),
    ('PD0013', '2021-09-25', '2021-10-01', '2022-10-01', 1200000, 'P0401', '61130643'),
    ('PD0014', '2021-06-23', '2021-07-01', '2022-07-01', 1200000, 'P0401', '62133088'),
	('PD0015', '2021-08-20', '2021-09-01', '2022-09-01', 1200000, 'P0401', '62130057')
	


INSERT INTO ThanhToan(MaTT, NgayTT, SoTien, MaPDP)
VALUES 
    ('TT0001', '2021-08-01', 1200000, 'PD0001'),
    ('TT0002', '2021-08-01', 1200000, 'PD0002'),
	('TT0003', '2021-09-01', 1200000, 'PD0003'),
    ('TT0004', '2021-09-01', 1200000, 'PD0004'),
    ('TT0005', '2021-09-01', 1200000, 'PD0005'),
	('TT0006', '2021-09-01', 1200000, 'PD0006'),
    ('TT0007', '2021-09-01', 1200000, 'PD0007'),
    ('TT0008', '2021-10-01', 1200000, 'PD0008'),
	('TT0009', '2021-10-01', 1200000, 'PD0009'),
    ('TT0010', '2021-10-01', 1800000, 'PD0010'),
    ('TT0011', '2021-08-01', 1800000, 'PD0011'),
	('TT0012', '2021-09-01', 1200000, 'PD0012'),
    ('TT0013', '2021-10-01', 1200000, 'PD0013'),
    ('TT0014', '2021-07-01', 1200000, 'PD0014'),
	('TT0015', '2021-09-01', 1200000, 'PD0015')


INSERT INTO DichVu(MaDV, TenDV, GiaDV)
VALUES 
    ('DV01', N'Wifi', 60000),
    ('DV02', N'Giặt ủi', 40000),
	('DV03', N'Rác', 20000),
	('DV04', N'Gửi xe', 50000)
INSERT INTO DichVu_PH(MaDV_PH, SoLuong,MaDV, MaPhong) 
VALUES 
	('DV01-P0101', 1, 'DV01', 'P0101'),
	('DV02-P0101', 1, 'DV02', 'P0101'),
	('DV01-P0201', 3, 'DV01', 'P0201'),
	('DV02-P0201', 3, 'DV02', 'P0201'),
	('DV03-P0201', 3, 'DV03', 'P0201'),
	('DV01-P0203', 3, 'DV01', 'P0203'),
	('DV04-P0203', 3, 'DV04', 'P0203'),
	('DV01-P0303', 2, 'DV01', 'P0303'),
	('DV02-P0303', 2, 'DV02', 'P0303'),
	('DV01-P0401', 4, 'DV01', 'P0401'),
	('DV02-P0401', 4, 'DV02', 'P0401'),
	('DV03-P0401', 4, 'DV03', 'P0401'),
	('DV04-P0401', 4, 'DV04', 'P0401')

INSERT INTO QuanTri
VALUES ('linh.dtm.63ttql@ntu.edu.vn',1,N'Đỗ Thị Mỹ Linh','12345678')
 GO


CREATE PROCEDURE SinhVien_TimKiem
    @MaSV varchar(10)=NULL,
	@HoTen nvarchar(100)=NULL,
	@GioiTinh nvarchar(10)= NULL,
	@QueQuan nvarchar(100)=NULL,
	@Lop varchar(50)=NULL,
	@MaPB varchar(10)=NULL
AS
BEGIN
DECLARE @SqlStr NVARCHAR(4000),
		@ParamList nvarchar(2000)
SELECT @SqlStr = '
       SELECT * 
       FROM sinh_vien
       WHERE  (1=1)
       '
IF @MaSV IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND ( MaSV LIKE ''%'+@MaSV+'%'')
              '
IF @HoTen IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (HoTen LIKE ''%'+@HoTen+'%'')
              '
IF @GioiTinh IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
             AND ( GioiTinh LIKE ''%'+@GioiTinh+'%'')
             '
IF @QueQuan IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (QueQuan LIKE ''%'+@QueQuan+'%'')
              '
IF @Lop IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (Lop LIKE ''%'+@Lop+'%'')
              '
IF @MaPB IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (MaPhong LIKE ''%'+@MaPB+'%'')
              '
	EXEC SP_EXECUTESQL @SqlStr
END
GO


CREATE PROCEDURE CalculateServiceCost
AS
BEGIN
    
    CREATE TABLE #TempServiceCost
    (
        DichVu_PH_id VARCHAR(10),
        SoLuong DECIMAL(18, 2),
        GiaDV DECIMAL(18, 2),
        TongTien DECIMAL(18, 2),
        TenPhong NVARCHAR(50),
        TenDV NVARCHAR(50)
    )

    -- Tính toán tổng tiền dịch vụ và lưu vào bảng tạm
    INSERT INTO #TempServiceCost (DichVu_PH_id, SoLuong, GiaDV,  TongTien, TenPhong,TenDV)
    SELECT
        DP.MaDV_PH,
        DP.SoLuong,
        DV.GiaDV,
        DP.SoLuong * DV.GiaDV AS TongTien,
        P.TenPhong,
        DV.TenDV
    FROM
        DichVu_PH DP
        INNER JOIN DichVu DV ON DP.MaDV = DV.MaDV
        INNER JOIN Phong P ON DP.MaPhong = P.MaPhong

    -- Trả về kết quả
    SELECT * FROM #TempServiceCost

    -- Xóa bảng tạm
    DROP TABLE #TempServiceCost
END
GO

CREATE PROCEDURE Phong_TimKiem
    @MaPhong varchar(8)=NULL,
	@TenPhong nvarchar(30)=NULL,
	@GiaMin varchar(30)=NULL,
	@GiaMax varchar(30)=NULL
AS
BEGIN
DECLARE @SqlStr NVARCHAR(4000),
		@ParamList nvarchar(2000)
SELECT @SqlStr = '
       SELECT * 
       FROM Phong
       WHERE  (1=1)
       '
IF @MaPhong IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (MaPhong LIKE ''%'+@MaPhong+'%'')
              '
IF @TenPhong IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (TenPhong LIKE ''%'+@TenPhong+'%'')
              '
IF @GiaMin IS NOT NULL and @GiaMax IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
             AND (GiaPhong Between Convert(int,'''+@GiaMin+''') AND Convert(int, '''+@GiaMax+'''))
             '
	EXEC SP_EXECUTESQL @SqlStr
END

﻿-- Nhớ tạo DB r USE nó

-- LẤY HẾT DỮ LIỆU CỦA BẢNG GV ĐƯA VÀO BẢNG MỚI LÀ TABLEA
SELECT * INTO TABLEA
FROM dbo.GIAOVIEN

-- TẠO RA 1 BẢNG TABLEB MỚI. CÓ 1 CỘT DỮ LIỆU LÀ HOTEN TƯƠNG ỨNG NHƯ BẢNG GV
-- DỮ LIỆU CỦA BẢNG TABLEB LẤY TỪ GV RA
SELECT HOTEN INTO TABLEB
FROM dbo.GIAOVIEN

-- NHƯ TRÊN NHƯNG VỚI ĐIỀU KIỆN LUONG > 2000
SELECT HOTEN INTO TABLEC
FROM dbo.GIAOVIEN
WHERE LUONG > 2000

-- TẠO RA 1 BẢNG MỚI TỪ NHIỀU BẢNG
SELECT MAGV, HOTEN, TENBM INTO GVBACKUP
FROM dbo.GIAOVIEN, dbo.BOMON
WHERE BOMON.MABM = GIAOVIEN.MABM

-- TẠO RA 1 BẢNG GVBK Y TRÊN NHƯNG K CÓ DỮ LIỆU
SELECT * INTO GVBK
FROM dbo.GIAOVIEN
WHERE 6 > 9 -- ĐIỀU KIỆN SAI ĐỂ K CÓ DỮ LIỆU
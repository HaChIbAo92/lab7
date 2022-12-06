create view NVPB_viewss
as
select HONV, TENNV, TENPHG, DIADIEM
from NHANVIEN, PHONGBAN, DIADIEM_PHG
WITH CHECK OPTION;

select * from NVPB_viewss


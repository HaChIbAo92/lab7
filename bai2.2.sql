create view NV_view2
as
select TENNV, LUONG, DATEDIFF(year,NGSINH,GETDATE()) as N'Tuổi'
from NHANVIEN
WITH CHECK OPTION;

select * from NV_view2
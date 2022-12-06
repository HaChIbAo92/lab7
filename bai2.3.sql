create view NV_view3
as
	select a.TENPHG, b.HONV + ' ' + b.TENLOT + ' ' + b.TENNV as 'Tên trưởng phòng'
	from PHONGBAN a inner join NHANVIEN b on a.TRPHG = b.MANV
	where a.MAPHG in (select PHG from NHANVIEN group by phg having count(manv) = (select top 1 COUNT(manv) as NVCount from NHANVIEN group by phg order by NVCount ))

	select * from NV_view3
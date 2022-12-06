create function f_LuongTB(@TenPhg nvarchar(30))
	returns int
as
begin
	return(
		select AVG(b.luong) from PHONGBAN a inner join NHANVIEN b on a.MAPHG = b.PHG where TENPHG like '%' + @TenPhg + '%'
);
end

select HONV, TENLOT, TENNV, LUONG from NHANVIEN a inner join PHONGBAN b on a.PHG = b.MAPHG
where luong > [dbo].[f_LuongTB](N'Quản Lý') and TENPHG like N'Quản Lý'
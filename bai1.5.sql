create function FN_ThongTin
	(@MaPhg int)
	returns @list table (TenPhong nvarchar (15), TenTruongPhong nvarchar (30), SoLuongDean int)
	as
	begin
		insert into @list
			select a.TENPHG, b.HONV + ' '+ b.TENLOT + ' '+ b.TENNV,
				(select count(c.MADA) from DEAN c where c.PHONG = a.MAPHG)
				from PHONGBAN a inner join NHANVIEN b on a.MAPHG = b.PHG;
		return;
	end;

	select *from  [dbo].[FN_Thongtin](1);
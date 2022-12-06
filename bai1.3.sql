create function f_thongkephai(@Phai nvarchar(3))
	returns int
as
begin
	return(select count(manv) from NHANVIEN where PHAI = @Phai);
end

select [dbo].[f_thongkephai]('Nam') as slnv;
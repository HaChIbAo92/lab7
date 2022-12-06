create function f_age(@MaNv nvarchar(9))
	returns int
as
begin
	return(
		select DATEDIFF(year, NGSINH, GETDATE()) + 1 from NHANVIEN where MANV = @MaNv
);
end

select [dbo].[f_age]('017') as age;

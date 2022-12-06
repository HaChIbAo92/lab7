create function f_dean(@MaNv nvarchar(9))
	returns int
as
begin
	return(
		select count(mada) from PHANCONG where MA_NVIEN = @MaNv
);
end

select [dbo].[f_dean]('001') as 'sldathamgia';
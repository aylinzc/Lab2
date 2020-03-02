Create table Video(
idVideo int primary key,
titulo varchar(100),
repro int,
url varchar(100)
)

Create procedure sp_video_insertar
    @idVideo int,
	@titulo varchar(100),
	@repro int,
	@url varchar(100)
as
begin
     Insert into Video
	 Values(@idVideo, @titulo, @repro, @url)
end

Exec sp_video_insertar 1, 'Video', 1, 'x'

select * from video
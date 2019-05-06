--1)
--Select * from Genre;
--Insert INTO Genre (Label) values ('Folk');

--2)
--Select * from Artist;
--Insert INTO Artist (ArtistName, YearEstablished) values ('Beck', 1988);

--3)
--Select * from Album;
--Insert INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) values ('Banjo Story', '??/??/1988', 1862, 'independent release', 29, 16);

--4)
--Select * from Song;
--Insert INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) values ('Going Nowhere Fast', 213, '??/??/1988', 16, 29, 23), ('Detonate', 277 , '??/??/1988', 16, 29, 23);

--5)
--SELECT ar.ArtistName, a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id LEFT JOIN Artist ar ON a.ArtistId = ar.Id WHERE a.Id = 23;
--SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id WHERE a.Id = 23;

--6)
--SELECT a.Title, COUNT (DISTINCT s.Title) FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id GROUP BY a.Title;

--7)
--SELECT a.ArtistName AS 'Artist Name', COUNT (DISTINCT s.Title) AS '# of Songs' FROM Song s LEFT JOIN Artist a ON s.ArtistId = a.Id GROUP BY a.ArtistName;

--8)
--SELECT g.Label AS 'Genre', COUNT (DISTINCT s.Title) AS '# of Songs' FROM Song s LEFT JOIN Genre g ON s.GenreId = g.Id GROUP BY g.Label;


--9)
--SELECT Title, AlbumLength FROM Album WHERE AlbumLength = (Select MAX(AlbumLength) FROM Album);

--10)
--SELECT Title, SongLength FROM Song Where SongLength = (Select Max(SongLength) FROM Song);


--11)
--SELECT a.Title AS 'Album', s.Title AS 'Song', s.SongLength AS 'Length' FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id Where SongLength = (Select Max(SongLength) FROM Song)

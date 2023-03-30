-- Listar las pistas (tabla Track) con precio mayor o igual a 1�
select *
from Track
where UnitPrice >= 1

-- Listar las pistas de m�s de 4 minutos de duraci�n
select *
from Track
where Milliseconds > 240000

-- Listar las pistas que tengan entre 2 y 3 minutos de duraci�n
select *
from Track
where Milliseconds between 120000 AND 180000

-- Listar las pistas que uno de sus compositores (columna Composer) sea Mercury
select *
from Track
where Composer like 'Mercury'

-- Calcular la media de duraci�n de las pistas (Track) de la plataforma
select AVG(Milliseconds)
from Track

-- Calcular la media de duraci�n de las pistas (Track) de la plataforma
select *
from Customer
where Country in ('USA','Canada','Brazil')

-- Listar todas las pistas del artista 'Queen' (Artist.Name = 'Queen')
select t.Name
from Track t
inner join Artist a on a.Name = t.Composer
where a.Name = 'Queen'

-- Listar las pistas del artista 'Queen' en las que haya participado como compositor David Bowie
select *
from Track t
where t.Composer like '%Queen%David Bowie%'

-- Listar las pistas de la playlist 'Heavy Metal Classic'
select * 
from Track t
inner join PlaylistTrack pt on t.TrackId = pt.TrackId
inner join Playlist p on pt.PlaylistId= p.PlaylistId
where p.Name like 'Heavy Metal Classic'

-- Listar las playlist junto con el n�mero de pistas que contienen
select p.PlaylistId, p.Name, count(p.PlaylistId) as Number_Track
from Playlist p
inner join PlaylistTrack pt on p.PlaylistId = pt.PlaylistId
group by p.PlaylistId, p.Name

-- Listar las playlist (sin repetir ninguna) que tienen alguna canci�n de AC/DC
select distinct p.*
from Playlist p
inner join PlaylistTrack pt on pt.PlaylistId = p.PlaylistId
inner join Track t on t.TrackId = pt.TrackId
where t.Composer like 'AC/DC'

-- Listar las playlist que tienen alguna canci�n del artista Queen, junto con la cantidad que tienen
select p.PlaylistId, p.Name, count(t.Name) as Number_Track
from Playlist p
inner join PlaylistTrack pt on p.PlaylistId = pt.PlaylistId
inner join Track t on t.TrackId = pt.TrackId
where t.Composer like 'Queen'


select p.PlaylistId, p.Name, count(t.Name) as Number_Track
from Playlist p
inner join PlaylistTrack pt on p.PlaylistId = pt.PlaylistId
inner join Track t on t.TrackId = pt.TrackId
where t.Composer like 'Queen'
group by p.PlaylistId, p.Name


-- Listar las pistas que no est�n en ninguna playlist

-- Listar los artistas que no tienen album

/*Listar los artistas con el n�mero de albums que tienen
Para saber si est� bien, asegurate que algunos de los artistas de la query anterior (artistas sin album) aparecen en este listado con 0 albums*/


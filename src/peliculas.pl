% Plataforma
% Serie o Pelicula
% Genero
% Director
% Año de estreno
% 


% Pelicula-Netflix-------------------------------------------------------------------

recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMIN,ESTRENORMAX,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
pelicula,SERVICIO = netflix,duracionpeliculas(DURACION,DMIN,DMAX),peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
SERVICIO,NOMBREIMG),DURACIONR >= DMIN,DURACIONR =< DMAX,atom_number(ESTRENORMIN, ESTRENORMINR),
atom_number(ESTRENORMAX, ESTRENORMAXR),ANIOESTRENOR >= ESTRENORMINR,ANIOESTRENOR =< ESTRENORMAXR
,estudiocinematograficopelicula(ESTUDIO,_,ESTUDIOPELICULAS,_,_),member(PELI,ESTUDIOPELICULAS),
generopeliculasnetflix(GENERO,LISTAPEL),member(PELI,LISTAPEL),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.


recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMIN,ESTRENORMAX,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
pelicula,SERVICIO = netflix,peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
SERVICIO,NOMBREIMG),
estudiocinematograficopelicula(ESTUDIO,_,ESTUDIOPELICULAS,_,_),member(PELI,ESTUDIOPELICULAS),
generopeliculasnetflix(GENERO,LISTAPEL),member(PELI,LISTAPEL),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.

% Serie-Netflix-------------------------------------------------------------------

recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMIN,ESTRENORMAX,NOMBRESERIER,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
serie,SERVICIO = netflix,duracionpeliculas(DURACION,DMIN,DMAX),seriestitulos(SERI,NOMBRESERIER,DURACIONR,TEMPORADAS,CLASIFICACIONR,ANIOESTRENOR,SERVICIO,
NOMBREIMG),DURACIONR >= DMIN,DURACIONR =< DMAX,atom_number(ESTRENORMIN, ESTRENORMINR),
atom_number(ESTRENORMAX, ESTRENORMAXR),ANIOESTRENOR >= ESTRENORMINR,ANIOESTRENOR =< ESTRENORMAXR
,estudiocinematograficoserie(ESTUDIO,_,ESTUDIOPELICULAS,_,_),member(SERI,ESTUDIOPELICULAS),
generoseriesnetflix(GENERO,LISTASERIES),member(SERI,LISTASERIES),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.


recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMIN,ESTRENORMAX,NOMBRESERIER,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
serie,SERVICIO = netflix,seriestitulos(SERI,NOMBRESERIER,DURACIONR,TEMPORADAS,CLASIFICACIONR,ANIOESTRENOR,SERVICIO,
NOMBREIMG),
generoseriesnetflix(GENERO,LISTASERIES),member(SERI,LISTASERIES),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.

% Pelicula-Hbo-------------------------------------------------------------------

recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMIN,ESTRENORMAX,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
pelicula,SERVICIO = hbo,duracionpeliculas(DURACION,DMIN,DMAX),peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
SERVICIO,NOMBREIMG),DURACIONR >= DMIN,DURACIONR =< DMAX,atom_number(ESTRENORMIN, ESTRENORMINR),
atom_number(ESTRENORMAX, ESTRENORMAXR),ANIOESTRENOR >= ESTRENORMINR,ANIOESTRENOR =< ESTRENORMAXR
,estudiocinematograficopelicula(ESTUDIO,_,ESTUDIOPELICULAS,_,_),member(PELI,ESTUDIOPELICULAS),
generopeliculashbo(GENERO,LISTAPEL),member(PELI,LISTAPEL),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.


recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMIN,ESTRENORMAX,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
pelicula,SERVICIO = hbo,peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
SERVICIO,NOMBREIMG),
estudiocinematograficopelicula(ESTUDIO,_,ESTUDIOPELICULAS,_,_),member(PELI,ESTUDIOPELICULAS),
generopeliculashbo(GENERO,LISTAPEL),member(PELI,LISTAPEL),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.

% Serie-hbo-------------------------------------------------------------------

recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMIN,ESTRENORMAX,NOMBRESERIER,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
serie,SERVICIO = hbo,duracionpeliculas(DURACION,DMIN,DMAX),seriestitulos(SERI,NOMBRESERIER,DURACIONR,TEMPORADAS,CLASIFICACIONR,ANIOESTRENOR,SERVICIO,
NOMBREIMG),DURACIONR >= DMIN,DURACIONR =< DMAX,atom_number(ESTRENORMIN, ESTRENORMINR),
atom_number(ESTRENORMAX, ESTRENORMAXR),ANIOESTRENOR >= ESTRENORMINR,ANIOESTRENOR =< ESTRENORMAXR
,estudiocinematograficoserie(ESTUDIO,_,ESTUDIOPELICULAS,_,_),member(SERI,ESTUDIOPELICULAS),
generoserieshbo(GENERO,LISTASERIES),member(SERI,LISTASERIES),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.


recpeliculaoserie(TIPO,SERVICIO,GENERO,ESTUDIO,DURACION,ESTRENORMIN,ESTRENORMAX,NOMBRESERIER,DURACIONR,CLASIFICACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG):-TIPO =
serie,SERVICIO = hbo,seriestitulos(SERI,NOMBRESERIER,DURACIONR,TEMPORADAS,CLASIFICACIONR,ANIOESTRENOR,SERVICIO,
NOMBREIMG),
generoserieshbo(GENERO,LISTASERIES),member(SERI,LISTASERIES),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.

% -------------------------------------------------------

% Regla para consultar si hay peliculas o series para ese servicio

existenpeliculasservicio(S):-peliculastitulos(_,_,_,_,_,S,_),!.
existenseriesservicio(S):-seriestitulos(_,_,_,_,_,_,S,_),!.

% ------------------------------------------------------

% Regla para obtener los generos disponibles con base en si es pelicula o serie y el servicio

genseriopel(SERVICIO,TIPO,GENERO):-SERVICIO = netflix,TIPO = pelicula,generopeliculasnetflix(GENERO,_).
genseriopel(SERVICIO,TIPO,GENERO):-SERVICIO = netflix,TIPO = serie,generoseriesnetflix(GENERO,_).

genseriopel(SERVICIO,TIPO,GENERO):-SERVICIO = hbo,TIPO = serie,generoserieshbo(GENERO,_).
genseriopel(SERVICIO,TIPO,GENERO):-SERVICIO = hbo,TIPO = pelicula,generopeliculashbo(GENERO,_).

genseriopel(SERVICIO,TIPO,GENERO):-SERVICIO = amazon,TIPO = serie,generoseriesamazon(GENERO,_).
genseriopel(SERVICIO,TIPO,GENERO):-SERVICIO = amazon,TIPO = pelicula,generopeliculasamazon(GENERO,_).


% -------------------------------------------------------

% Regla para estudios de peliculas o series

consulestudiosp(TIPO,GENERO,SERVICIO,OESTUDIO,ESTUDIO):-TIPO =
pelicula,estudiocinematograficopelicula(OESTUDIO,ESTUDIO,_,GENEROS,SERVICIOS),member(GENERO,GENEROS),member(SERVICIO,SERVICIOS).

consulestudiosp(TIPO,GENERO,SERVICIO,OESTUDIO,ESTUDIO):-TIPO =
serie,estudiocinematograficoserie(OESTUDIO,ESTUDIO,_,GENEROS,SERVICIOS),member(GENERO,GENEROS),member(SERVICIO,SERVICIOS).

% -------------------------------------------------------
% Normal (1 hr - 2 hr), Media (2 hr - 3 hr), Larga (> 3 hr)

duracionpeliculas(normal,60,120).
duracionpeliculas(media,121,180).
duracionpeliculas(larga,181,240).

% -------------------------------------------------------
% Normal (45 m - 1hr), Media (1 hr - 1 hr 30m), Larga (1 hr 30m - 2 hr)

duracionseries(normal,45,60).
duracionseries(media,61,90).
duracionseries(larga,91,120).


% -------------------------------------------------------

peliculastitulos(conjuro,"El conjuro - saga",90,r,2013,netflix,"conjurosaga.jpg").
peliculastitulos(amigosint,"Amigos intocables",112,k12,2012,netflix,"amigosint.jpg").
peliculastitulos(gladiador,"Gladiador",195,b15,2000,netflix,"gladiador.jpg").
peliculastitulos(enemigoace,"Enemigo al acecho",131,r,2001,netflix,"enemigoacecho.jpg").
peliculastitulos(elpianista,"El pianista",150,c,2001,netflix,"elpianista.jpg").
peliculastitulos(eldiscursorey,"El discurso del rey",120,b,2011,netflix,"eldiscursorey.jpg").
peliculastitulos(venoncarge,"Venom: Carnage liberado",97,b,2021,hbo,"venoncar.jpg").


% -------------------------------------------------------

seriestitulos(anatomiasegungray,"Anatomia segun Grey",44,18,b15,2005,netflix,"anatomiagrey.jpg").
seriestitulos(chernobyl,"Chernobyl",72,1,b15,2019,hbo,"chernobyl.jpg").

% ------------------------------------------------------

% Va ligada a genseriopel

generopeliculasnetflix(terror,[conjuro]).
generopeliculasnetflix(drama,[amigosint,enemigoace,elpianista,eldiscursorey]).
generopeliculasnetflix(comedia,[amigosint]).
generopeliculasnetflix(aventura,[gladiador]).
generopeliculasnetflix(accion,[gladiador,venoncarge]).
generopeliculasnetflix(belico,[enemigoace,elpianista]).

generoseriesnetflix(drama,[anatomiasegungray]).

generoseriesamazon().

generopeliculasamazon().

generoserieshbo(tragedia,[chernobyl]).

generopeliculashbo(accion,[venoncarge]).

% -------------------------------------------------------

% Estudios cinemátográficos

estudiocinematograficopelicula(studiobabelsberg,"Studio Babelsberg",[elpianista],[drama,belico],[netflix]).
estudiocinematograficopelicula(seesawfilms,"See Saw Films",[eldiscursorey],[drama],[netflix]).
estudiocinematograficopelicula(newlinecinema,"New Line Cinema",[conjuro],[terror],[netflix]).
estudiocinematograficopelicula(gaumontfilmcompany,"Gaumont Film Company",[amigosint],[drama,comedia,gladiador],[netflix]).
estudiocinematograficopelicula(universalpictures,"Universal Pictures",[gladiador],[accion,aventura],[netflix]).
estudiocinematograficopelicula(paramountpictures,"Paramount Pictures",[enemigoace],[belico],[netflix]).
estudiocinematograficopelicula(columbiapictures,"Columbia Pictures",[venoncarge],[accion],[hbo]).




estudiocinematograficoserie(sisterpictures,"Sister Pictures",[chernobyl],[tragedia],[hbo]).
estudiocinematograficoserie(abcsignature,"ABC Signature",[anatomiasegungray],[drama],[netflix]).



	

% -------------------------------------------------------

actoresprinci(["Patrick Wilson","Vera Farmiga"],conjuro).
actoresprinci(["Omar Sy","Francois Cluzet"],amigosint).
actoresprinci(["Russell Crowe","Joaquin Pohoenix"],gladiador).
actoresprinci(["Jude Law","Erwin Konig"],enemigoace).
actoresprinci(["Adrien Brody","Ed Stoppard","Emilia Fox"],elpianista).
actoresprinci(["Colin Firth","Guy Pearce","Geoffrey Rush"],eldiscursorey).
actoresprinci(["Jared Harris","Emily Watson","Stellan Skarsgard"],chernobyl).
actoresprinci(["Ellen Pompeo","Sandra Oh","Katherine Heigl"],anatomiasegungray).
actoresprinci(["Tom Hardy","Michelle Williams"],venoncarge).
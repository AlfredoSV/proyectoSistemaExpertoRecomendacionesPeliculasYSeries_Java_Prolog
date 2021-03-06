% Plataforma
% Serie o Pelicula
% Genero
% Director
% Año de estreno
% 

% Peliculas-------------------------------------------------------------------

recpeliculaoserie(TIPO,GENERO,ESTUDIO,CLASIFICACION,DURACION,NOMBREPELICULAR,DURACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG,SERVICIO):-TIPO =
pelicula,duracionpeliculas(DURACION,DMIN,DMAX),peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACION,ANIOESTRENOR,
SERVICIO,NOMBREIMG),DURACIONR >= DMIN,DURACIONR =< DMAX
,estudiocinematograficopelicula(ESTUDIO,_,ESTUDIOPELICULAS,_),member(PELI,ESTUDIOPELICULAS),
generopeliculas(GENERO,LISTAPEL),member(PELI,LISTAPEL),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.

recpeliculaoserie(TIPO,GENERO,_,CLASIFICACION,_,NOMBREPELICULAR,DURACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG,SERVICIO):-TIPO =
pelicula,peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACION,ANIOESTRENOR,
SERVICIO,NOMBREIMG),
generopeliculas(GENERO,LISTAPEL),member(PELI,LISTAPEL),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.

recpeliculaoserie(TIPO,GENERO,ESTUDIO,_,_,NOMBREPELICULAR,DURACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG,SERVICIO):-TIPO =
pelicula,peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,_,ANIOESTRENOR,
SERVICIO,NOMBREIMG)
,estudiocinematograficopelicula(ESTUDIO,_,ESTUDIOPELICULAS,_),member(PELI,ESTUDIOPELICULAS),
generopeliculas(GENERO,LISTAPEL),member(PELI,LISTAPEL),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.

recpeliculaoserie(TIPO,_,_,CLASIFICACION,_,NOMBREPELICULAR,DURACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG,SERVICIO):-TIPO =
pelicula,peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,CLASIFICACION,ANIOESTRENOR,
SERVICIO,NOMBREIMG),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.

recpeliculaoserie(TIPO,_,_,_,_,NOMBREPELICULAR,DURACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG,SERVICIO):-TIPO =
pelicula,peliculastitulos(PELI,NOMBREPELICULAR,DURACIONR,_,ANIOESTRENOR,
SERVICIO,NOMBREIMG),
actoresprinci(ACTORESPRINCIPALESR,PELI),!.


% Serie-------------------------------------------------------------------


recpeliculaoserie(TIPO,GENERO,ESTUDIO,CLASIFICACION,DURACION,NOMBRESERIER,DURACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG,SERVICIO):-TIPO =
serie,duracionseries(DURACION,DMIN,DMAX),seriestitulos(SERI,NOMBRESERIER,DURACIONR,_,CLASIFICACION,ANIOESTRENOR,SERVICIO,
NOMBREIMG),DURACIONR >= DMIN,DURACIONR =< DMAX
,estudiocinematograficoserie(ESTUDIO,_,ESTUDIOPELICULAS,_),member(SERI,ESTUDIOPELICULAS),
generoseries(GENERO,LISTASERIES),member(SERI,LISTASERIES),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.

recpeliculaoserie(TIPO,GENERO,ESTUDIO,_,_,NOMBRESERIER,DURACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG,SERVICIO):-TIPO =
serie,seriestitulos(SERI,NOMBRESERIER,DURACIONR,_,_,ANIOESTRENOR,SERVICIO,
NOMBREIMG)
,estudiocinematograficoserie(ESTUDIO,_,ESTUDIOPELICULAS,_),member(SERI,ESTUDIOPELICULAS),
generoseries(GENERO,LISTASERIES),member(SERI,LISTASERIES),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.

recpeliculaoserie(TIPO,GENERO,_,CLASIFICACION,_,NOMBRESERIER,DURACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG,SERVICIO):-TIPO =
serie,seriestitulos(SERI,NOMBRESERIER,DURACIONR,_,CLASIFICACION,ANIOESTRENOR,SERVICIO,
NOMBREIMG),
generoseries(GENERO,LISTASERIES),member(SERI,LISTASERIES),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.

recpeliculaoserie(TIPO,_,_,CLASIFICACION,_,NOMBRESERIER,DURACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG,SERVICIO):-TIPO =
serie,seriestitulos(SERI,NOMBRESERIER,DURACIONR,_,CLASIFICACION,ANIOESTRENOR,SERVICIO,
NOMBREIMG),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.

recpeliculaoserie(TIPO,_,_,_,_,NOMBRESERIER,DURACIONR,ANIOESTRENOR,
ACTORESPRINCIPALESR,NOMBREIMG,SERVICIO):-TIPO =
serie,seriestitulos(SERI,NOMBRESERIER,DURACIONR,_,_,ANIOESTRENOR,SERVICIO,
NOMBREIMG),
actoresprinci(ACTORESPRINCIPALESR,SERI),!.

% -------------------------------------------------------

% Regla para consultar si hay peliculas o series para ese servicio

existenpeliculasservicio(S):-peliculastitulos(_,_,_,_,_,S,_),!.
existenseriesservicio(S):-seriestitulos(_,_,_,_,_,_,S,_),!.

% ------------------------------------------------------

% Regla para obtener los generos disponibles con base en si es pelicula o serie y el servicio

genseriopel(TIPO,GENERO):-TIPO = pelicula,generopeliculas(GENERO,_).
genseriopel(TIPO,GENERO):-TIPO = serie,generoseries(GENERO,_).


% -------------------------------------------------------

% Regla para estudios de peliculas o series

consulestudiosp(TIPO,GENERO,OESTUDIO,ESTUDIO):-TIPO =
pelicula,estudiocinematograficopelicula(OESTUDIO,ESTUDIO,_,GENEROS),member(GENERO,GENEROS).

consulestudiosp(TIPO,GENERO,OESTUDIO,ESTUDIO):-TIPO =
serie,estudiocinematograficoserie(OESTUDIO,ESTUDIO,_,GENEROS),member(GENERO,GENEROS).

% -------------------------------------------------------
% Normal (1 hr - 2 hr), Media (2 hr - 3 hr), Larga (> 3 hr)

duracionpeliculas(normal,60,120).
duracionpeliculas(media,121,180).
duracionpeliculas(larga,181,240).

% -------------------------------------------------------
% Normal (45 m - 1hr), Media (1 hr - 1 hr 30m), Larga (1 hr 30m - 2 hr)

duracionseries(normal,30,40).
duracionseries(media,41,60).
duracionseries(larga,61,75).


% -------------------------------------------------------

peliculastitulos(conjuro,"El conjuro - saga",90,r,2013,netflix,"conjurosaga.jpg").
peliculastitulos(amigosint,"Amigos intocables",112,k12,2012,netflix,"amigosint.jpg").
peliculastitulos(gladiador,"Gladiador",195,b15,2000,netflix,"gladiador.jpg").
peliculastitulos(enemigoace,"Enemigo al acecho",131,r,2001,netflix,"enemigoacecho.jpg").
peliculastitulos(elpianista,"El pianista",150,c,2001,netflix,"elpianista.jpg").
peliculastitulos(eldiscursorey,"El discurso del rey",120,b,2011,netflix,"eldiscursorey.jpg").

peliculastitulos(misionrescate,"Mision de rescate",117,r,2020,netflix,"misionrescate.jpg").
peliculastitulos(sherlock,"Sherlock Holmes",128,pg13,2009,netflix,"sherlock.jpg").
peliculastitulos(elcodigodavinci,"El codigo Da Vinci",168,pg13,2006,netflix,"elcodigodavinci.jpg").
peliculastitulos(guerramundialz,"Guerra Mundial Z",116,pg13,2013,netflix,"guerramundialz.jpg").

peliculastitulos(nadie,"Nadie",92,b15,2021,amazon,"nadie.jpg").
peliculastitulos(venomcarnage,"Venon: Carnage liberado",97,b,2021,amazon,"venomcarnage.jpg").
peliculastitulos(moonfall,"Moonfall",120,b,2022,amazon,"moonfall.jpg").


peliculastitulos(hombreenllamas,"Hombre en llamas",146,r,2004,netflix,"hombreenllamas.jpg").
peliculastitulos(noe,"Noe",137,pg13,2014,netflix,"noe.jpg").
peliculastitulos(perfectoasesino,"El perfecto asesino",109,r,2000,netflix,"perfectoasesino.jpg").


peliculastitulos(candyman,"Candyman",91,pg13,2021,amazon,"candyman.jpg").
peliculastitulos(laabuela,"La abuela",100,pg13,2021,amazon,"laabuela.jpg").
peliculastitulos(spencer,"Spencer",111,b,2021,amazon,"spencer.jpg").
peliculastitulos(oscuraverdad,"Oscura verdad",92,pg13,2021,amazon,"oscuraverdad.jpg").
peliculastitulos(guason,"Guason",122,b15,2019,amazon,"guason.jpg").


peliculastitulos(estacionzombie,"Estacion Zombie",117,tvma,2016,netflix,"estacionzombie.jpg").
peliculastitulos(islasiniestra,"La isla siniestra",138,r,2010,netflix,"islasiniestra.jpg").
peliculastitulos(ilusionista,"El ilusionista",108,pg13,2006,netflix,"ilusionista.jpg").
peliculastitulos(hannibal,"Hannibal",131,r,2001,netflix,"hannibal.jpg").


peliculastitulos(blackfriday,"Black Friday",161,tvma,2004,netflix,"blackfriday.jpg").
peliculastitulos(bastardossingloria,"Bastardos sin gloria",152,r,2009,netflix,"bastardossingloria.jpg").
peliculastitulos(amoresperros,"Amores Perros",154,r,2001,netflix,"amoresperros.jpg").
peliculastitulos(ganamericano,"Ganster americano",156,r,2007,netflix,"ganamericano.jpg").
peliculastitulos(secretoenlamontania,"Secreto en la montaña",134,r,2005,netflix,"secretoenlamontania.jpg").


% -------------------------------------------------------

seriestitulos(anatomiasegungray,"Anatomia segun Grey",44,18,b15,2005,netflix,"anatomiagrey.jpg").
seriestitulos(lupin,"Lupin",42,2,tv14,2021,netflix,"lupin.jpg").
seriestitulos(gotham,"Gotham",50,5,tmma,2019,netflix,"gotham.jpg").
seriestitulos(blacklist,"Black List",65,7,tv14,2020,netflix,"blacklist.jpg").
seriestitulos(you,"You",50,3,tvma,2021,netflix,"you.jpg").
seriestitulos(gooddoctor,"The Good Doctor",50,5,tvma,2021,amazon,"gooddoctor.jpg").
seriestitulos(loscien,"Los 100",45,7,tvma,2020,netflix,"loscien.jpg").
seriestitulos(orangeisthenewblack,"Orange is the new black",60,7,tvma,2019,netflix,"orangeisthenewblack.jpg").
seriestitulos(puntociego,"Punto ciego",50,5,tv14,2020,netflix,"puntociego.jpg").

seriestitulos(hanna,"Hanna",67,3,tvma,2019,amazon,"hanna.jpg").
seriestitulos(themaninthehighcastle,"The Man in the High Castle",65,4,tvma,2015,amazon,"themaninthehighcastle.jpg").
seriestitulos(americanhorror,"American Horror Story",70,10,tvma,2015,amazon,"americanhorror.jpg").

seriestitulos(ratched,"Ratched",50,3,tvma,2020,netflix,"ratched.jpg").
seriestitulos(dark,"Dark",65,3,tvma,2020,netflix,"dark.jpg").
seriestitulos(scream,"Scream",35,3,tvma,2016,netflix,"scream.jpg").


% ------------------------------------------------------



% Va ligada a genseriopel

generopeliculas(terror,[conjuro,venomcarnage,candyman,laabuela,oscuraverdad,estacionzombie]).
generopeliculas(drama,[amigosint,enemigoace,elpianista,eldiscursorey,hombreenllamas,guason,spencer,ilusionista,blackfriday,bastardossingloria,amoresperros,ganamericano,secretoenlamontania]).
generopeliculas(comedia,[amigosint,venomcarnage]).
generopeliculas(aventura,[gladiador,sherlock,guerramundialz,noe,perfectoasesino,moonfall,estacionzombie,bastardossingloria]).
generopeliculas(accion,[gladiador,misionrescate,guerramundialz,hombreenllamas,noe,perfectoasesino,venomcarnage,nadie,estacionzombie,bastardossingloria,ganamericano]).
generopeliculas(belico,[enemigoace,elpianista]).
generopeliculas(misterio,[elcodigodavinci,islasiniestra,ilusionista,hannibal]).
generopeliculas(crimen,[guason,hannibal,blackfriday]).





generoseries(comedia,[lupin,orangeisthenewblack]).
generoseries(drama,[gotham,blacklist,anatomiasegungray,you,loscien,orangeisthenewblack,puntociego,gooddoctor,hanna,ratched]).
generoseries(accion,[gotham,blacklist,lupin,loscien,hanna]).
generoseries(criminal,[you]).
generoseries(misterio,[puntociego,dark]).
generoseries(ficcion,[themaninthehighcastle]).
generoseries(horror,[americanhorror]).
generoseries(terror,[scream,ratched]).




% -------------------------------------------------------

% Estudios cinemátográficos

estudiocinematograficopelicula(studiobabelsberg,"Studio Babelsberg",[elpianista,enemigoace],[drama,belico]).
estudiocinematograficopelicula(gaumontfilmcompany,"Gaumont Film Company",[amigosint,eldiscursorey],[drama,comedia]).
estudiocinematograficopelicula(universalpictures,"Universal Pictures",[gladiador,hannibal,secretoenlamontania,bastardossinglori],[accion,aventura,crimen,misterio,drama]).
estudiocinematograficopelicula(imagineentertainment,"Imagine Entertainment",[elcodigodavinci,hombreenllamas,misionrescate,ganamericano],[misterio,accion,drama]).
estudiocinematograficopelicula(skydanceproductions,"Skydance Productions",[guerramundialz],[aventura,accion]).
estudiocinematograficopelicula(marvelentertainment,"Marvel Entertainment",[venomcarnage,nadie],[accion,terror,comedia]).
estudiocinematograficopelicula(centropolisentertainment,"Centropolis Entertainment",[moonfall,sherlock],[aventura]).
estudiocinematograficopelicula(paramountpictures,"Paramount Pictures",[noe,perfectoasesino,islasiniestra,blackfriday],[accion,aventura,misterio,crimen,drama]).
estudiocinematograficopelicula(komplizenfilm,"Komplizen Film",[spencer,oscuraverdad,candyman,laabuela],[drama,terror]).
estudiocinematograficopelicula(dcfilms,"DC Films",[guason],[drama,crimen]).
estudiocinematograficopelicula(nextentertainmentworld,"Next Entertainment World",[estacionzombie,conjuro],[terror,accion,aventura]).
estudiocinematograficopelicula(yarifilmgroup,"Yari Film Group",[ilusionista],[misterio,drama]).
estudiocinematograficopelicula(zetafilms,"Zeta Films",[amoresperros],[drama]).





estudiocinematograficoserie(lionsgatetelevision,"Lionsgate Television",[orangeisthenewblack],[drama,comedia]).
estudiocinematograficoserie(warnerbros,"Warner Bros",[puntociego,loscien,dark],[drama,misterio,accion]).
estudiocinematograficoserie(abcsignature,"ABC Signature",[anatomiasegungray],[drama]).
estudiocinematograficoserie(dcentertainment,"DC Entertainment",[gotham,blacklist],[drama,accion]).
estudiocinematograficoserie(gaumonttelevision,"Gaumont Television",[lupin,you],[comedia,accion,drama,criminal]).
estudiocinematograficoserie(abdsignature,"ABC Signature",[gooddoctor],[drama]).
estudiocinematograficoserie(nbcuniversal,"NBCUniversal",[hanna],[drama,accion]).
estudiocinematograficoserie(amazonstudios,"Amazon Studios",[themaninthehighcastle,americanhorror,scream],[ficcion,horror,terror]).
estudiocinematograficoserie(televisionstudios,"Television Studios",[ratched],[terror,drama]).

% -------------------------------------------------------

actoresprinci(["Patrick Wilson","Vera Farmiga"],conjuro).
actoresprinci(["Omar Sy","Francois Cluzet"],amigosint).
actoresprinci(["Russell Crowe","Joaquin Pohoenix"],gladiador).
actoresprinci(["Jude Law","Erwin Konig"],enemigoace).
actoresprinci(["Adrien Brody","Ed Stoppard","Emilia Fox"],elpianista).
actoresprinci(["Colin Firth","Guy Pearce","Geoffrey Rush"],eldiscursorey).
actoresprinci(["Ellen Pompeo","Sandra Oh","Katherine Heigl"],anatomiasegungray).
actoresprinci(["Bob Odenkirk","Connie Nielsen"],nadie).
actoresprinci(["Tom Hardy","Woody Harrelson"],venomcarnage).
actoresprinci(["Halle Berry","Patrick Wilson"],moonfall).
actoresprinci(["Chris Hemsworth","Randeep Hooda"],misionrescate).
actoresprinci(["Robert Downey Jr","Jude Law"],sherlock).
actoresprinci(["Brad Pitt","Mirelle Enos"],guerramundialz).
actoresprinci(["Tom Hanks","Audrey Tautou"],elcodigodavinci).
actoresprinci(["Ben McKenzi","Donal Logue"],gotham).
actoresprinci(["Omar Sy","Ludvine Sagnier"],lupin).
actoresprinci(["James Spader","Megan Boone"],blacklist).
actoresprinci(["Penn Badgley","Victoria Pedretti"],you).
actoresprinci(["Freddie Highmore","Richard Schiff"],gooddoctor).
actoresprinci(["Denzel Washington","Dakota Fanning"],hombreenllamas).
actoresprinci(["Russell Crowe","Jennifer Connelly","Emma Watson"],noe).
actoresprinci(["Jean Reno","Natalie Portman"],perfectoasesino).
actoresprinci(["Eliza Taylor","Paige Turco"],loscien).
actoresprinci(["Taylor Schilling","Kate Mulgrew"],orangeisthenewblack).
actoresprinci(["Sullivan Stapleton","Jaimie Alexander"],puntociego).
actoresprinci(["Yahya Mateen","Teyonah Parris"],candyman).
actoresprinci(["Kristen Stewart","Jack Farthing"],spencer).
actoresprinci(["Llana Glazer","Sophia Bush"],oscuraverdad).
actoresprinci(["Joaquin Phoenix","Robert De Niro"],guason).
actoresprinci(["Almudena Amor","Vera Valdez"],laabuela).
actoresprinci(["Esme Creed-Miles","Mireille Enos","Joel Kinnaman"],hanna).
actoresprinci(["Alexa Davalos","Rupert Evans","Luke Kleintank"],themaninthehighcastle).
actoresprinci(["Variado por temprada"],americanhorror).
actoresprinci(["Gong Yoo","Jung Yu-mi"],estacionzombie).
actoresprinci(["Leonardo DiCaprio","Mark Ruffalo"],islasiniestra).
actoresprinci(["Edward Norton","Paul Giamatti"],ilusionista).
actoresprinci(["Anthony Hopkis","Julianne Moore"],hannibal).
actoresprinci(["Pavan Malhotra","Kay Kay Menon"],blackfriday).
actoresprinci(["Brad Pitt","Melanie Laurent"],bastardossingloria).
actoresprinci(["Emilio Echeverria","Gael Garcia"],amoresperros).
actoresprinci(["Denzel Washington","Russell Crowe"],ganamericano).
actoresprinci(["Heath Ledger","Jake Gyllenhaal"],secretoenlamontania).
actoresprinci(["Sarah Paulson","Finn Wittrock"],ratched).
actoresprinci(["Louis Hofmann","Oliver Masucci"],dark).
actoresprinci(["RJ Cyler","Jessica Sula"],scream).





% Nuevas ---------------------------------------------------------------------------------





























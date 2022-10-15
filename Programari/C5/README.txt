LSRestaurant




A la primera execució cal per comentar correr en una bbdd de mysql el fitxer trobat a la carpeta "BaseDeDades" anomenat "bbddcreator.sql", crearà les taules i la informació necessaria.



Simplement cal, al mysqlWorkbench anar al apartat Data Import o correr el script de forma normal, seleccionar el fitxer bbddcreator.sql, i guardar-lo en un schema, prefereiblement anomenat LSRestaurant (sino caldrà simplement canviar el nom de la bbdd al fitxer config)


Iniciar Servidor



1)Entrar a la carpeta del projecte anomenada "Data", i obrir el fitxer "config.json".



2)Al fitxer "config.json" és important omplir el nom de la bbdd on s'ha executat el fitxer "bbddcreator.sql"(que per defecte sera LSRestaurant), i la respectiva contrasenya. El reste esta omplert per a que corri en localhost, i els ports dels clients ja están posat per que coincideixin.



3)Un cop fet això, ja podem anar al Main i cridar-lo per a que fagi la execució.





Iniciar Clients Entrada i Reserva



1)A les corresponents carpetes "data", fitxer "config.json" podem canviar el port i ip de la bbdd, tot hi que ja hauria de funcionar sense cambiar-ho.





Servidor



TAULES
1)Quan s'executa el servidor, ens obre una finestra que entra per defecte al editor de taules. A l'esquerra podem seleccionar la taula de la qual volem veure les reserves que te, i al tocar actualitzar apareix a la llista de la dreta.


2)En cas de voler eliminar una taula, cal seleccionar-la i tocar eliminar, tot hi que només funcionarà si no hi ha cap reserva en ella.


3)Podem afegir taula simplement posant el nombre de començals abaix a la dreta.



CARTA
1)Aquí apareixen tots els plats que tenim  a la bbdd anteriorment creada. Podem mourens per les diferents pagines amb anterior seguent, afegir un plat introiduint el nom, preu i unitats que tenim.


2)En cas de seleccionar un plat, podem actualitzar el nombre de unitats disponibles (introiduim el nombre que tenim de plats, no es suma als que ja tenim), i també ens permet borrar un plat de la carta, en cas de que no estigui demanat per alguna comanda.



COMANDES
1)Ens apareix una taula de les comandes sense servir. Si seleccionem una i toquem "mirar comandes" Ens apareix una funestra amb dos llistes, una de plats servits i de no servits. Si seleccionem un plat no servit, i toquem servir enviara la comanda actualitzada amb el plat servit al client.



TOP5

1)Dos botons per anar cambiant entre el top semanal i total







Entrada



1)Demanar: Ens porta a la seguent pantalla on simplement hem de posar el usuari i nombre de comensals que volem, i, si hi ha taules disponibles, ens assignarà el torn de menjar més proper a la hora que estem demanant. 
	Si tot ha anat correctament, una finestra ens mostrarà la constrasenya amb la que haurem d'iniciar sessió al client Reserva.


2)Reservar: El funcionament és el mateix que el de Demanar, però aqui podem escolir el dia i la hora apart del usuari i comensals.






Reserva



1)Veiem la carta al entrar, només dels plats disponibles. Ens podem moure per les pagines amb anterior/seguent. Si seleccionem un plat s'ens obre un selector de nombre de plats. Un cop hem demant els plats, per enviar-los al servidor, o editar algun, toquem editor comanda, que s'ens obrirà en un dialog. 
	En cas d'estar com volem toquem enviar, i ens mostrarà si ha hagut algun error en algun plat o si ha anat tot correcte.


2)Al estat comanda podem veure si un plat ha estat servit o no, la vista s'actualitza al moment.


3)Pagar i sortir ens mostra el preu a pagar i ens indica si tenim plats sense servir o no, en el missatge de sortida. Si toquem si, sortim del programa





.
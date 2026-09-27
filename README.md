# Remisería ChasquiCoop

La cooperativa ChasquiCoop es una empresa de transporte de personas que cuenta con varias sucursales y una flota de vehículos que pueden dar servicio a una o más sucursales. 
Para realizar los viajes se reciben reservas indicando una cantidad de personas, una distancia a recorrer y el tiempo máximo de viaje en horas. Además se consideran necesidades especiales que tienen que ver con la sensibilidad cromática, las neurodivergencias y las discapacidades motrices. Para algunas personas con TDAH (Trastorno por Déficit de Atención e Hiperactividad) los colores como el rojo o el verde flúor les ocasionan estrés.

## 1. Los vehículos

De cada vehículo se necesita saber:
- su capacidad (expresada en cantidad de personas que puede transportar al mismo tiempo), 
- su velocidad máxima
- su color 
- si su motor es ruidoso
- si puede transportar sillas de ruedas. 
- su autonomía (Es la distancia que puede recorrer sin cargar combustible)

Entre los vehículos de las sucursales hay varios **torinos**, varios **económicos** y una **combi adaptable** 

* **Torino**: son vehículos con una capacidad de 4 personas. No tiene capacidad de llevar sillas de ruedas y su motor es ruidoso. El color se determina para cada unidad. Como son vehículos viejos, tanto la velocidad máxima como la autonomía se indican para cada unidad.

* **Económicos**: son vehículos que funcionan a gas y pueden tener adaptaciones que influyen en su rendimiento. Las adaptaciones que puede tener un vehículo económico son:
- transportador para silla de ruedas
- caño de escape silencioso
- tanque extra de gas 

La capacidad base de estos vehículos es 5. Cantidad a la que hay que descontar los espacios que exigen sus adaptaciones. Tanto el transportador de
silla de rueda como el tanque extra de gas ocupan una plaza. El caño de escape silencioso no ocupa espacio extra. Por lo que un auto económico puede llevar a 5, 4 o 3 pasajeros, según sea su configuración.

La velocidad máxima del vehículo sin ninguna adaptación es de 120 km/h. 
Si tiene el caño de escape silencioso la velocidad máxima es de 115 km/h. 
Si tiene un tanque extra la velocidad máxima es de 80 km/h. 
Si lleva transportador de sillas de ruedas la velocidad máxima es de 90 km/h. 

Por lo tanto, la velocidad máxima de un vehículo económico es el número menor que exige alguna de sus adaptaciones: Un vehículo que posee las 3 adaptaciones irá a 80 km/h, uno que tiene solo el escape iría a 115 km/h. Mientra que si no tiene escape iría a 120 km/h   

Un vehículo base de estos no puede llevar una silla de ruedas. Solo puede llevarlo si contiene alguna adaptación que lo permita. La única es el *transportador de sillas de rueda*. Ni el tanque extra ni el caño de escape silencioso influye.

Con respecto al ruido del motor, es similar: Sin ninguna adpatación es ruidoso. Si posee alguna adaptación que permita reducir el ruido del motor, entonces será silencioso. Tanto el caño de escape silencoso como el tanque de gas extra funcionan como silenciadores del motor. El transportador de sillas de rueda no influye para disminuir el ruido.

El color del vehículo económico es siempre **beige**.

Un vehículo económico sin ninguna adapactión tiene 200 km de autonomía. El caño de espape silenciado le quita 10 km de autonomía. El tanque adicional de gas aporta 200 km de autonómía extra. El transportador de silla de rueda le quita 20 km de autonomía.

* **La combi adaptable**: un vehículo de color **celeste** reconfigurable, porque se le puede cambiar el interior y el motor. 

La capacidad de transporte depende del interior:
  - El interior _espacioso_ Permite llevar 7 personas. No tiene capacidad de llevar sillas de ruedas.
  - El interior _accessible_ Permite llevar 5 personas. Tiene capacidad de llevar sillas de ruedas.

La velocidad, autonomía y ruido dependen del motor:
  - el _deportivo_: Tiene una autonomía de 400 km, velocidad máxima de 230 km/h, y es ruidoso
  - el _urbano_: Tiene una autonomía de 1000km, velocidad máxima de 130 km/h, y no es ruidoso

La combi adaptable es un vehículo único para toda la empresa.

### Casos de prueba

Considerar los siguientes vehículos. Se utilizan nombres de fantasía porque de esta forma las sucursales pueden comunicarse mas eficientemente con ellos por radio.

* reyDeCopas: un torino de color rojo, de autonomia 300 km y velocidad máxima 120.
* academia: un torino de color celeste, con 250 km de autonomía y velocidad máxima de 110.
* cuervo: un económico con tanque extra y transportador de silla de rueda.
* xeneize: un económico con caño de escape silencioso.
* millonario: un económico sin ninguna adaptación.
* combi: en este momento está equipada con interior accesible y el motor urbano.

#### Torino: rey de copas
  Probar que para reyDecopas:
    - El color es rojo
    - la autonomía es 300
    - la velocidad máxima es 120
    - la capacidad es 4
    - No puede llevar sillas de ruedas
    - Es ruidoso

#### Torino: academia
  Probar que para academia:
    - El color es celeste
    - la autonomía es 250
    - la velocidad máxima es 110
    - la capacidad es 4
    - No puede llevar sillas de ruedas
    - Es ruidoso
#### Económico: cuervo
  Probar que para cuervo:
    - El color es beige
    - la autonomía es 380
    - la velocidad máxima es 80
    - la capacidad es 3
    - Puede llevar sillas de ruedas
    - No es ruidoso
#### Económico: xeneise
  Probar que para xeneise:
    - El color es beige
    - la autonomía es 190
    - la velocidad máxima es 115
    - la capacidad es 5
    - No puede llevar sillas de ruedas
    - No es ruidoso
#### Económico: millonario
  Probar que para millonario:
    - El color es beige
    - la autonomía es 200
    - la velocidad máxima es 120
    - la capacidad es 5
    - No puede llevar sillas de ruedas
    - Es ruidoso
  
#### combi: motor urbano e interior accesible
  Probar que para la combi con motor urbano e interior accesible:
    - El color es celeste
    - la autonomía es 1000
    - la velocidad máxima es 130
    - la capacidad es 5
    - Puede llevar sillas de ruedas
    - No es ruidoso

#### combi: motor deportivo e interior espacioso
  Probar que para la combi con motor urbano e interior accesible:
    - El color es celeste
    - la autonomía es 400
    - la velocidad máxima es 230
    - la capacidad es 7
    - No Puede llevar sillas de ruedas
    - Es ruidoso

## 2. Viajes y reservas

Una reserva es una solicitud de un viaje.
 Se realiza indicando la cantidad de personas a llevar, la distancia a recorrer, el tiempo máximo de viaje en horas. 
 Además dado que esta cooperativa considera la sensibilidad cromática y las neurodivergencias, en la solicitud se pueden indicar:
 - colores que estan contraindicados para alguna de las personas que viajan
 - la necesidad de un auto que no sea ruidoso
 - necesidad de transportar silla de ruedas.

### Requerimiento:
Saber si una reserva puede ser cumplida por un vehículo. Para lo cual tiene que cumplirse todas estas condiciones:
- El vehículo debe tener una capacidad igual o superior a la indicada en la reserva
- El vehículo debe tener una autonomía igual o superior a la indicada en la reserva
- La velocidad máxima del vehículo supere a la velocidad promedio que necesita el viaje (calculada como distancia a recorrer / tiempo máximo) en al menos 10 km/h. Por ejemplo, un viaje de 300 km en 3 hs tiene como velocidad promedio 100 km/h, sumados a los 10 km/h de margen de error, exige que el vehículo tenga como velocidad máxima 110 km/h o más.
- El vehiculo debe ser respetuoso para las necesidades de los pasajeros del viaje:
  - si se indicaron colores contraindicados, el vehículo no sea de ese color
  - si se necesita llevar sillas de ruedas, el vehículo tenga esa capacidad
  - si se necesita que no sea ruidoso, entonces el veículo no lo debe ser.

### Casos de prueba

Para estos casos de prueba se reutilizan los vehículos ya definidos en la sección anterior (reyDeCopas, academia, cuervo, xeneize, millonario y combi), sin agregar vehículos nuevos.

#### Reserva exigente cumplida sin inconvenientes
Dada una reserva de 5 personas, 480 km de distancia y 4 horas de viaje, que necesita un vehículo silencioso, que pueda transportar sillas de ruedas, y que no sea de color rojo ni verde flúor.

  Probar que esta reserva **puede** ser cumplida por la combi (configurada con interior accesible y motor urbano).

#### Reserva que falla por capacidad insuficiente
Una reserva de 5 personas, 200 km de distancia y 2 horas de viaje.

  Probar que esta reserva **no puede** ser cumplida por reyDeCopas (capacidad insuficiente).

#### Reserva que falla por autonomía insuficiente
Una reserva de 5 personas, 195 km de distancia y 2 horas de viaje.

  Probar que esta reserva **no puede** ser cumplida por xeneize (autonomía insuficiente).

#### Reserva que falla por velocidad insuficiente
Una reserva de 5 personas, 200 km de distancia y 1 hora de viaje.

  Probar que esta reserva **no puede** ser cumplida por millonario (la velocidad máxima del vehículo no alcanza para el margen exigido).

#### Reserva que falla por color contraindicado
Una reserva de 4 personas, 150 km de distancia, 1.5 horas de viaje, con el color rojo indicado como contraindicado.

  Probar que esta reserva **no puede** ser cumplida por reyDeCopas (el vehículo es de un color contraindicado).

#### Reserva que falla por necesitar transportar silla de ruedas
Una reserva de 5 personas, 150 km de distancia, 1.5 horas de viaje, que necesita transportar silla de ruedas.

  Probar que esta reserva **no puede** ser cumplida por millonario (el vehículo no puede llevar sillas de ruedas).

#### Reserva que falla por necesitar un vehículo silencioso
Una reserva de 5 personas, 150 km de distancia, 1.5 horas de viaje, que necesita un vehículo silencioso.

  Probar que esta reserva **no puede** ser cumplida por millonario (el vehículo es ruidoso).


====================

Por otro lado, los viajes son reservas resueltas por un vehículo determinado. Y para que un vehículo pueda asignarse a un viaje se deben cumplir las siguientes condiciones:  

a. Que la velocidad máxima supere a la velocidad promedio que necesita el viaje (calculada como distancia a recorrer / tiempo máximo) en al menos 10 km/h; 
b. Que la capacidad del auto sea suficiente para la cantidad de personas de la reserva; 
c. Que el auto no sea de un color contraindicado. 



### Requerimientos

* Modelar los objetos y clases necesarios para las reservas y viajes.

* Poder determinar si un vehículo está habilitado para satisfacer una reserva. 

* Agregarle a las sucursales la capacidad de responder qué autos pueden hacer un viaje.

* Modelar el registro histórico de los servicios realizados por cada sucursal, a través del mensaje `registrarViaje(reserva,auto)`

* Agregar en la sucursal la capacidad de responder:

  - cuántos viajes hizo un vehículo para esa sucursal.
  - cuántos viajes se hicieron que superen una determinada distancia.
  - cuántos lugares quedaron libres en total (considerando todos sus viajes). Por ejemplo: si la sucursal hizo un viaje de 2 personas usando un auto de capacidad 5, ese viaje tuvo 3 lugares libres.

## Retribución de los viajes

Cada sucursal acuerda con las personas conductoras un valor por kilómetro y una retribución mínima por viaje. Por ejemplo, si el equipo de una sucursal acuerda 3 $/km y $30 de mínimo por viaje, entonces un viaje de 7 km se paga $30 (porque 3 x 7 = 21 no llega a 30), y un viaje de 25 km lo paga 75 pesos (3 x 25 = 75 supera el mínimo de 30).

### Requerimientos

Agregar en los objetos que corresponda el comportamiento que permita determinar cuánto pagarle a un vehículo, de acuerdo a los viajes que hizo para una determinada sucursal. 

## Las Sucursales
Cada `sucursal` de Chasquicoop tiene las siguientes responsabilidades:
 
  - administrar su flota (agregan y quitando vehículos), 
  - Saber los colores disponibles de su flota
  - obtener el color del vehículo cuya velocidad máxima sea la superior de toda la flota (si hay varios vehículos en esta situación, no importa cual se considere.)
  - Indicar si es recomendable, es decir que tiene al menos 3 vehículos y todos pueden ir al menos a 100 km/h.
  - Obtener la cantidad total de personas que puede transportar la sucursal, considerando solamente los autos de su flota cuya velocidad máxima sea mayor o igual a la velocidad indicada.
  


### Casos de prueba
Se cuenta con dos sucursales: Villa Elisa y Varela.

* La flota de Villa Elisa está integrada por: Iron, Hulk, Batimovil, Humo, Galletita. El peso total de la flota de Villa Elisa es 6300 kg, el color de su auto más rápido es beige y es una sucursal recomendable. El la cantidad de autos accesibles son 2 (Humito y Galletita).

* La flota de Varela está compuesta por: Iron, Humo, Humito, Humito2, Traffic. El peso total de la flota de Varela es 10400 kg,  el color de su auto más rápido es rojo y NO es una sucursal recomendable (porque la traffic puede ir a 80 cómo máximo).

Programar casos de prueba para lo anterior y agregar otros que permitan probar toda la funcionalidad


=======
La cooperativa ChasquiCoop tiene varias sucursales y una flota de vehículos que pueden dar servicio a una o mas sucursales. 

## Flota y Sucursales

De cada vehículo se necesita saber su capacidad (expresada en cantidad de personas que puede transportar al mismo tiempo), su velocidad máxima, su color y su peso.

* **Chevrolet Corsa**: son vehículos con capacidad  de 4 personas, la velocidad máxima  de 150 km/h y pesan 1300 kg

* **Económicos**: son vehículos que funcionan a gas y pueden tener instalado un tanque adicional. La capacidad, peso y velocidad máxima de estos vehículos depende de si cuenta con este tanque adicional. Puede llevar 4 si no tiene el tanque adicional, o 3 personas en caso contrario. Su velocidad máxima es 120 km/h sin tanque, y 110 km/h en otro caso. Su peso es 1200 kg, y se le suman 150 kg si tiene tanque adicional.


* **Una Traffic**: es un vehículo de color blanco reconfigurable, porque se le puede cambiar el interior y el motor. Su capacidad depende de la capacidad de su interior, su velocidad máxima de su motor, y su peso es 4000 kg más el peso de su interior y su motor. Se cuenta con dos interiores, un interior _cómodo_ (capacidad 5, peso 700 kg) y un interior _popular_ (capacidad 12, peso 1000 kg). Se cuenta también con dos motores, el modelo _pulenta_ (velocidad máxima 130 km/h, peso 800 kg) y el modelo _batatón_ (velocidad máxima 80 km/h, peso 500 kg).

* **Nuevas incorporaciones**: son vehículos diferentes a los anteriores, de los cuales se debe indicar capacidad, velocidad máxima, peso y color.


Cada `sucursal` debe responder los siguientes mensajes:

* `agregarAFlota(vehiculo)` 
* `quitarDeFlota(vehiculo)`.
* `pesoTotalFlota()`: suma del peso de cada vehículo en la flota.
* `esRecomendable()`: indica si la sucursal tiene al menos 3 vehículos y todos los vehículos de su flota pueden ir al menos a 100 km/h.
* `capacidadTotalYendoA(velocidad)`: obtiene la cantidad total de personas que puede transportar la sucursal, considerando solamente los autos de su flota cuya velocidad máxima sea mayor o igual a la velocidad indicada.
* `colorDelAutoMasRapido()`: obtiene el color del vehículo cuya velocidad máxima sea la superior de toda la flota. Si hay varios vehículos en esta situación, no importa cual se considere.

### Requerimientos

Se pide desarrollar las clases y los objetos bien definidos (WKO) que hagan falta para modelar la flota y las sucursales según lo que se describió.

### Casos de prueba

Considerar los siguientes vehículos. Se utilizan nombres de fantasía porque de esta forma las sucursales pueden comunicarse mas eficientemente con ellos por radio.

* Iron: un vehículo corsa de color rojo
* Hulk: un vehículo corsa de color verde
* Batimovil: un corsa de color negro
* Humo: un económico de color gris con tanque adicional.
* Humito: un económico de color gris SIN tanque adicional.
* Humito2: otro económico de color gris SIN tanque adicional.
* Traffic: en este momento está equipada con interior cómodo y el motor _batatón_
* Galletita: una nueva incorporación con capacidad 5, velocidad máxima 160 km/h, peso 1200 kg y color beige.

Se cuenta con dos sucursales: Villa Elisa y Varela.

* La flota de Villa Elisa está integrada por: Iron, Hulk, Batimovil, Humo, Galletita. El peso total de la flota de Villa Elisa es 6300 kg, el color de su auto más rápido es beige y es una sucursal recomendable

* La flota de Varela está compuesta por: Iron, Humo, Humito, Humito2, Traffic. El peso total de la flota de Varela es 10400 kg,  el color de su auto más rápido es rojo y NO es una sucursal recomendable (porque la traffic puede ir a 80 cómo máximo).

Programar casos de prueba para lo anterior y agregar otros que permitan probar toda la funcionalidad

## Viajes y reservas

Las reservas son solicitudes de viajes que deben indicar la cantidad personas, la distancia recorrer, el tiempo máximo de viaje en horas. Además dado que esta cooperativa considera la sensibilidad cromática y las neurodivergencias, en la solicitud se pueden indicar los colores que estan contraindicados para alguna de las personas que viajan.

Por otro lado, los viajes son reservas resueltas por un vehículo determinado. Y para que un vehículo pueda asignarse a un viaje se deben cumplir las siguientes condiciones:  

a. Que la velocidad máxima supere a la velocidad promedio que necesita el viaje (calculada como distancia a recorrer / tiempo máximo) en al menos 10 km/h; 
b. Que la capacidad del auto sea suficiente para la cantidad de personas de la reserva; 
c. Que el auto no sea de un color contraindicado. 



### Requerimientos

* Modelar los objetos y clases necesarios para las reservas y viajes.

* Poder determinar si un vehículo está habilitado para satisfacer una reserva. 

* Agregarle a las sucursales la capacidad de responder qué autos pueden hacer un viaje.

* Modelar el registro histórico de los servicios realizados por cada sucursal, a través del mensaje `registrarViaje(reserva,auto)`

* Agregar en la sucursal la capacidad de responder:

  - cuántos viajes hizo un vehículo para esa sucursal.
  - cuántos viajes se hicieron que superen una determinada distancia.
  - cuántos lugares quedaron libres en total (considerando todos sus viajes). Por ejemplo: si la sucursal hizo un viaje de 2 personas usando un auto de capacidad 5, ese viaje tuvo 3 lugares libres.

## Retribución de los viajes

Cada sucursal acuerda con las personas conductoras un valor por kilómetro y una retribución mínima por viaje. Por ejemplo, si el equipo de una sucursal acuerda 3 $/km y $30 de mínimo por viaje, entonces un viaje de 7 km se paga $30 (porque 3 x 7 = 21 no llega a 30), y un viaje de 25 km lo paga 75 pesos (3 x 25 = 75 supera el mínimo de 30).

### Requerimientos

Agregar en los objetos que corresponda el comportamiento que permita determinar cuánto pagarle a un vehículo, de acuerdo a los viajes que hizo para una determinada sucursal. 




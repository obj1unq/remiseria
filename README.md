# Remisería ChasquiCoop

La cooperativa ChasquiCoop es una empresa de transporte de personas que cuenta con varias sucursales y una flota de vehículos que pueden dar servicio a una o mas sucursales. 
Para realizar los viajes se reciben reservas indicando una cantidad personas, una distancia a recorrer, y el tiempo máximo de viaje en horas. Además se consideran necesidades especiales que tienen que ver con la sensibilidad cromática, las neurodivergencias y las discapacidades motrices. Para algunas personas con TDAH los colores como el naranja o el verde fluor les ocasionan stress.

## Los vehículos

De cada vehículo se necesita saber su capacidad (expresada en cantidad de personas que puede transportar al mismo tiempo), su velocidad máxima, su color y su peso. Además, cada vehículo debe poder responder si es accesible (tiene caja automática) y si es respetuoso (su color es amigable con las neurodivergencias y su motor es silencioso). 

Los posibles vehículos que se deben modelar son:

* **Torino**: son vehículos con capacidad de 4 personas, la velocidad máxima de 150 km/h y pesan 1300 kg. No tiene caja automática y su motor es ruidoso. 

* **Económicos**: son vehículos que funcionan a gas y pueden tener instalado un tanque adicional. La capacidad, peso y velocidad máxima de estos vehículos depende de si cuenta con este tanque adicional. Puede llevar 4 si no tiene el tanque adicional, o 3 personas en caso contrario. Su velocidad máxima es 120 km/h sin tanque, y 110 km/h en otro caso. Su peso es 1200 kg, y se le suman 150 kg si tiene tanque adicional. Si no tienen tanque adicional su motor es silencioso, y podrían tener caja automática (eso depende de cada uno).


* **Una Traffic**: es un vehículo de color blanco reconfigurable, porque se le puede cambiar el interior y el motor. Su capacidad depende de la capacidad de su interior, su velocidad máxima de su motor, y su peso es 4000 kg más el peso de su interior y su motor. Se cuenta con dos interiores, un interior _cómodo_ (capacidad 5, peso 700 kg) y un interior _popular_ (capacidad 12, peso 1000 kg). Se cuenta también con dos motores, el modelo _pulenta_ (velocidad máxima 130 km/h, peso 800 kg, silencioso y con caja automatica) y el modelo _batatón_ (velocidad máxima 80 km/h, peso 500 kg, muy ruidoso).

* **Nuevas incorporaciones**: son vehículos diferentes a los anteriores, de los cuales se debe indicar capacidad, velocidad máxima, peso, color, tipo de caja y tipo de motor.



### Casos de prueba

Considerar los siguientes vehículos. Se utilizan nombres de fantasía porque de esta forma las sucursales pueden comunicarse mas eficientemente con ellos por radio.

* Iron: un torino de color rojo.
* Hulk: un torino de color verde fluo.
* Batimovil: un torino de color negro.
* Humo: un económico de color gris con tanque adicional.
* Humito: un económico de color gris SIN tanque adicional y caja automática.
* Humito2: otro económico de color gris SIN tanque adicional.
* Traffic: en este momento está equipada con interior cómodo y el motor _batatón_.
* Galletita: una nueva incorporación con capacidad 5, velocidad máxima 160 km/h, peso 1200 kg, color beige, motor silencioso y caja automática

Programar casos de prueba para lo anterior y agregar otros que permitan probar toda la funcionalidad


## Las Sucursales
Cada `sucursal` de Chasquicoop tiene las siguientes responsabilidades:
 
  - administrar su flota (agregan y quitando vehículos), 
  - ser capaz de calcular la sumatoria del peso de los vehículos, <-- o cambiaría por cantidad de vehículos accesibles o respetuosos
  - obtener el color del vehículo cuya velocidad máxima sea la superior de toda la flota (si hay varios vehículos en esta situación, no importa cual se considere.)
  - Indicar si es recomendable, es decir que tiene al menos 3 vehículos y todos pueden ir al menos a 100 km/h.
  - Obtener la cantidad total de personas que puede transportar la sucursal, considerando solamente los autos de su flota cuya velocidad máxima sea mayor o igual a la velocidad indicada.
  


### Casos de prueba
Se cuenta con dos sucursales: Villa Elisa y Varela.

* La flota de Villa Elisa está integrada por: Iron, Hulk, Batimovil, Humo, Galletita. El peso total de la flota de Villa Elisa es 6300 kg, el color de su auto más rápido es beige y es una sucursal recomendable. El la cantidad de autos accesibles son 2 (Humito y Galletita).

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




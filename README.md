# Remisería ChasquiCoop

La cooperativa ChasquiCoop tiene varias sucursales y una flota de vehículos que pueden dar servicio a una o mas sucursales. De cada vehículo se necesita saber su capacidad (expresada en cantidad de personas que puede transportar al mismo tiempo), su velocidad máxima, su color y su peso.

## Flota


* **Chevrolet Corsa**: es un vehículo con capacidad  de 4 personas, la velocidad máxima  de 150 km/h y pesan 1300 kg

* **Económicos**: son vehículos que funcionan a gas y pueden tener instalado un tanque adicional. La capacidad, peso y velocidad máxima de estos vehículos depende de si cuenta con este tanque adicional. Puede llevar 4 si no tiene el tanque adicional, o 3 personas en caso contrario. Su velocidad máxima es 120 km/h sin tanque, y 110 km/h en otro caso. Su peso es 1200 kg, y se le suman 150 kg si tiene tanque adicional.

Los hay de dos tipos: de color `gris`y otro verde.


* **Una Traffic**: es un vehículo de color blanco reconfigurable, porque se le puede cambiar el interior y el motor. Su capacidad depende de la capacidad de su interior, su velocidad máxima de su motor, y su peso es 4000 kg más el peso de su interior y su motor. Se cuenta con dos interiores, un interior _cómodo_ (capacidad 5, peso 700 kg) y un interior _popular_ (capacidad 12, peso 1000 kg). Se cuenta también con dos motores, el modelo _pulenta_ (velocidad máxima 130 km/h, peso 800 kg) y el modelo _batatón_ (velocidad máxima 80 km/h, peso 500 kg).

* **Nuevas incorporaciones**: son vehículos diferentes a los anteriores, de los cuales se debe indicar capacidad, velocidad máxima, peso y color.

## Sucursales 

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

* Iron: un corsa de color rojo
* Hulk: un corsa de color verde
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

Las reservas son solicitudes de viajes que 

Para reservar un servicio de remise se debe verificar primero un conjunto de condiciones, entre las cuyales est
De cada viaje nos interesa: los kilómetros, el tiempo máximo de viaje en horas, la cantidad de personas, y también un conjunto de colores incompatibles, o sea, que los personas rechazan hacer el viaje en autos de esos colores.

- Agregar la capacidad de preguntar si un auto puede hacer un viaje, enviándole un mensaje al viaje, claro, con el auto como parámetro. Para que un auto pueda hacer un viaje se tienen que dar tres condiciones: que la velocidad máxima sea al menos 10
km/h mayor a la velocidad promedio que necesita el viaje (que es kilómetros dividido tiempo máximo); que la capacidad del auto dé para la cantidad de personas del viaje; y que el auto no sea de un color incompatible para el viaje.
Usando esto, agregarle a las remiserías un método para que puedan responder qué autos pueden hacer un viaje.

- Agregar el registro de los viajes hechos por cada remisería. Para esto, agregarle a la clase que define el comportamiento de las remiserías, el método `registrarViaje(viaje,auto)`, que agregue el viaje a una colección de viajes hechos, y le asigne el auto al viaje. Agregarle al viaje un atributo que sea el auto que lo hizo.
Nota: no conviene que sea el auto quien se acuerde de los viajes que hizo, porque si un auto trabaja con dos remiserías, se complica distinguir qué viajes hizo con cada una.

A partir de esto, agregar lo que haga falta para poder preguntarle a una remisería:

  - cuántos viajes hizo un auto (para esa remisería, claro).
  - cuántos viajes hizo la remisería de más de una cantidad de kilómetros.
  - cuántos lugares libres en total hubo en los viajes que hizo la remisería. 
    P.ej. si la remisería hizo un viaje de 2 personas usando un auto de capacidad 5, ese viaje tuvo 3 lugares libres.
  - cuánto pagarle a un auto, de acuerdo a los viajes que hizo para esa remisería.
    Cada remisería establece un valor por kilómetro, y un mínimo para cada viaje.
    Por ejemplo, si una remisería establece 3 pesos por km y 30 de mínimo por viaje, entonces un viaje de 7 km lo paga 30  pesos (porque 3 x 7 = 21 no llega a 30), y un viaje de 25 km lo paga 75 pesos (3 x 25 = 75 supera el mínimo de 30).

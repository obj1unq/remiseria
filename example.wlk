
object rojo{}
object beige{}
object celeste{}

object verdeFluor{}

class Torino {
  const color
  const autonomia
  const velocidadMaxima

  method color() {return color}
  method velocidadMaxima() { return velocidadMaxima}
  method capacidad() {return 4}
  method puedeLlevarSillaDeRuedas() {return false}
  method ruidoso() {return true}
  method autonomia() {return autonomia}  

}

object cañoSilencioso {
  method velocidadMaxima() {return 115}
  method puedeLlevarSillaDeRuedas(){ return false}
  method espacio() { return 0}
  method silencioso() {return true}
  method modificadorAutonomia() { return -10}
}
object tanqueExtra {
  method velocidadMaxima() {return 80}
  method puedeLlevarSillaDeRuedas(){ return false}
  method espacio() { return 1}
  method silencioso() {return true}
  method modificadorAutonomia() { return 200}

}
object transportadorSilla {
  method velocidadMaxima() {return 90}
  method puedeLlevarSillaDeRuedas(){ return true}
  method espacio() { return 1}
  method silencioso() {return false}
  method modificadorAutonomia() { return -20}
}


class Economico {
    const adaptaciones
    method color() { return beige}
    //tambien se puede usar el minIfEmpty
    method velocidadMaxima() { return if (adaptaciones.isEmpty()) 120 else adaptaciones.map({adapt => adapt.velocidadMaxima()}).min() }
    method puedeLlevarSillaDeRuedas() { return adaptaciones.any({adapt => adapt.puedeLlevarSillaDeRuedas()})}
    method capacidad() {return 5 - adaptaciones.sum({adapt => adapt.espacio()})}
    method ruidoso() { return not adaptaciones.any({adapt => adapt.silencioso()})}
    method autonomia() { return 200 + adaptaciones.sum({adapt => adapt.modificadorAutonomia()})}
  
}

object espacioso{
  method capacidad() {return 7}
  method puedeLlevarSillaDeRuedas() { return false}
}
object accessible{
  method capacidad() {return 5}
  method puedeLlevarSillaDeRuedas() { return true}
}

object deportivo{
  method velocidadMaxima() {return 230}
  method ruidoso() {return true}
  method autonomia() {return 400}
}
object urbano {
  method velocidadMaxima() {return 130}
  method ruidoso() {return false}
  method autonomia() {return 1000}

}

object combi {
  var property interior = accessible
  var property motor = urbano

    method color() { return celeste}
    //tambien se puede usar el minIfEmpty
    method velocidadMaxima() { return motor.velocidadMaxima() }
    method puedeLlevarSillaDeRuedas() { return interior.puedeLlevarSillaDeRuedas()}
    method capacidad() {return interior.capacidad()}
    method ruidoso() { return motor.ruidoso()}
    method autonomia() { return motor.autonomia()}

}

class Reserva {

  const capacidad
  const tiempo
  const property distancia
  //Estas cosas se pueden reificar, pero hago la solución esperada 
  const debeSerSilencioso = false
  const coloresContraindicados = #{}
  const debeLlevarSillaDeRuedas = false

  method cumple(vehiculo) {
    return self.cumpleCapacidad(vehiculo) and self.cumpleAutonomia(vehiculo) and self.cumpleTiempo(vehiculo) and self.esRespetuoso(vehiculo)
  }

  method cumpleCapacidad(vehiculo) {
    return vehiculo.capacidad() >= capacidad
  }
  method cumpleAutonomia(vehiculo) {
    return vehiculo.autonomia() >= distancia
  }
  method cumpleTiempo(vehiculo) {
    return vehiculo.velocidadMaxima() >= distancia/tiempo + 10
  }

  method esRespetuoso(vehiculo) {
    return self.cumpleRuido(vehiculo) and self.cumpleColor(vehiculo) and self.cumpleSilla(vehiculo)
  } 

  method cumpleRuido(vehiculo) {
    return not debeSerSilencioso or not vehiculo.ruidoso()
  }

  method cumpleColor(vehiculo) {
    return not coloresContraindicados.contains(vehiculo.color())
  }
  method cumpleSilla(vehiculo) {
    return not debeLlevarSillaDeRuedas or vehiculo.puedeLlevarSillaDeRuedas()
  }


}
class Viaje {
  const property reserva
  const property vehiculo

  method distancia() {
    return reserva.distancia()
  }
}
class Sucursal {
  const flota = #{}
  const property viajes = #{}

  method agregarVehiculo(vehiculo) {
    flota.add(vehiculo)
  }
  method quitarVehiculo(vehiculo) {
    flota.remove(vehiculo)
  }
  method vehiculos(reserva) {
    return flota.filter({vehiculo => reserva.cumple(vehiculo)})
  }
  method registrarViaje(reserva, vehiculo) {
    self.validarViaje(reserva, vehiculo)
    viajes.add(new Viaje(reserva = reserva, vehiculo = vehiculo))
  }
  method validarViaje(reserva, vehiculo) {
    self.validarFlota(vehiculo)
    self.validarReserva(reserva,vehiculo)
  }
  method validarFlota(vehiculo) {
    if (not flota.contains(vehiculo)) {
      self.error("El vehiculo " + vehiculo + " no es parte de la flota" )
    }
  }
  method validarReserva(reserva,vehiculo) {
    if (not reserva.cumple(vehiculo)) {
      self.error("El vehiculo " + vehiculo + " no cumple la reserva" )
    }
  }
  method viajes(vehiculo) {
    return viajes.filter({viaje => viaje.vehiculo() == vehiculo})
  }

  method reservas(vehiculo) {
    return self.viajes(vehiculo).map({viaje => viaje.reserva()}).asSet()
  }

  method distancia(vehiculo) {
    return self.viajes(vehiculo).sum({viaje => viaje.distancia()})
  }

}

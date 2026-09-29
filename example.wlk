

/*object pepita {
  var energy = 100

  method energy() = energy

  method fly(minutes) {
    energy = energy - minutes * 3
  }
}
*/

class NaveBase{
  var velocidad = 100
  var direccion = 0

  method velocidad() = velocidad 
  method direccion() = direccion
  
  method irHaciaElSol(){
    direccion = 10
  }
  method escaparDelSol(){
    direccion = -10
  }
  method ponerseParaleloAlSol(){
    direccion = 0
  }
  method acelerar(cuanto) {
    velocidad= (velocidad+cuanto).min(100000)

  }
  method desacelerar(cuanto) {
    velocidad = (velocidad - cuanto).max(0)
  }

  method acercarseUnPocoAlSol() {
    direccion = (direccion +1).min(10)
  }

  method alejarseUnPocoDelSol() {
    direccion = (direccion -1).max(-10)
  }
  method prepararViaje() //Declarado como abstracto
}

class NaveBaliza inherits NaveBase{
  var baliza = "verde"
  method cambiarColorDeBaliza(colorNuevo) {
    baliza = colorNuevo
  }
  method colorBaliza() = "Mi baliza es de color "+baliza

  override method prepararViaje() {
    self.cambiarColorDeBaliza("verde")
    //se pone paralelo al sol tambien
  }
}
class NavePasajeros inherits NaveBase{
  var pasajeros = 0
  var racionesComida = 0
  var racionesBebida = 0
  override method prepararViaje() {
      self.cargarRacionesDeBebida(6*pasajeros)
      self.cargarRacionesDeComida(4*pasajeros)
      self.acercarseUnPocoAlSol()
  }
  method cargarRacionesDeComida(cantidad) {
      racionesComida += cantidad
  }
  method descargarRacionesDeComida(cantidad) {
      racionesComida -= cantidad.max(0)
  }
  
  method cargarRacionesDeBebida(cantidad) {
      racionesBebida += cantidad
  }
  method descargarRacionesDeBebida(cantidad) {
      racionesBebida -= cantidad.max(0)
  }
}

class NaveDeCombate{
  var estaInvisible = true
  method estaInvisible() = estaInvisible 
  method ponerseVisible() {
    estaInvisible = false
  }
  method ponerseInvisible(){
    estaInvisible = true
  }
  var misilesdesplegados = false
  method misilesdesplegados() = misilesdesplegados 

  method desplegarMisiles() {
      misilesdesplegados = true
  }
  method replegarMisiles() {
      misilesdesplegados = false
  }
  const mensajeEmitidos = []
  //seguir lo de mensajes
}

// COMO LA EXPEDICION 33 !!!!!!!!
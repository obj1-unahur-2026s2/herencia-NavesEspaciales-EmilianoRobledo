

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

}

object naveBaliza{ //inherits NaveBase{
  var baliza = "verde"
  method cambiarColorDeBaliza(colorNuevo) {
    baliza = colorNuevo
  }
  method colorBaliza() = "Mi baliza es de color "+baliza
}
class NavePasajeros inherits NaveBase{

}
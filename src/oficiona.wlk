import remiseria.*

object oficina {
  var primerChofer = gabriela
  var segundoChofer = mariela
  method asignarRemiseras(unaRemisera, otroRemisera){
    primerChofer = unaRemisera
    segundoChofer = otroRemisera
  }
  method remiseraPrimeraOpcion(){
    return primerChofer
  }
  method remiseraSegundaOpcion(){
    return segundoChofer
  }
  method cambiarPrimeraRemiseraPor(unaRemisera){
    primerChofer=unaRemisera
  }
    method cambiarSegundaRemiseraPor(unaRemisera){
    segundoChofer=unaRemisera
  }
  method intercambiarChoferes(){
    var remisera = primerChofer
    primerChofer = segundoChofer
    segundoChofer = remisera
  }
  method remiseraElegidaParaViaje(cliente, kms){
    var precioPrimerChofer = primerChofer.precioViaje(cliente, kms)
    var precioSegundoChofer = segundoChofer.precioViaje(cliente, kms)
    if (precioSegundoChofer < precioPrimerChofer and precioSegundoChofer+30 < precioPrimerChofer){
      return segundoChofer
    } else {return primerChofer}
  }
}
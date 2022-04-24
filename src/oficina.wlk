import remiseria.*

object oficina {
  var primerRemisera 
  var segundaRemisera
  method asignarRemiseras(unaRemisera, otraRemisera){
    primerRemisera = unaRemisera
    segundaRemisera = otraRemisera
  }
  method remiseraPrimerOpcion(){
    return primerRemisera
  }
  method remiseraSegundaOpcion(){
    return segundaRemisera
  }
  method cambiarPrimeraRemiseraPor(unaRemisera){
    primerRemisera=unaRemisera
  }
    method cambiarSegundaRemiseraPor(unaRemisera){
    segundaRemisera=unaRemisera
  }
  method intercambiarChoferes(){
    self.asignarRemiseras(segundaRemisera,primerRemisera)
  }
  method remiseraElegidaParaViaje(cliente, kms){
    const precioPrimerRemisera = self.remiseraPrimerOpcion().precioViaje(cliente, kms)
    const precioSegundoRemisera = self.remiseraSegundaOpcion().precioViaje(cliente, kms)
    if (precioSegundoRemisera < precioPrimerRemisera and precioSegundoRemisera+30 < precioPrimerRemisera){
      return self.remiseraSegundaOpcion()
    } else {return self.remiseraPrimerOpcion()}
  }
}
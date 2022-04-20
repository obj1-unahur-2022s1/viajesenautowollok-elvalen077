import clientas.*
object roxana {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms
	}
}

object gabriela {
	method precioViaje(cliente, kms) { 
		return ((cliente.precioPactadoPorKm() * kms) * 20)/100 + (cliente.precioPactadoPorKm() * kms)
	}
}

object mariela {
	method precioViaje(cliente, kms) {
		return 50.max(cliente.precioPactadoPorKm() * kms)
	}
}


object juana {
	method precioViaje(cliente, kms) { 
		if (kms <= 8){
    		return 100
	  	} else {
    		return 200
  		}		
  	}
}

object lucia {
  var remplezaA
  method estaReemplazandoA(unaPersona){
    remplezaA = unaPersona
  }
  method precioViaje(cliente, kms){
    return remplezaA.precioViaje(cliente, kms)
  }
}
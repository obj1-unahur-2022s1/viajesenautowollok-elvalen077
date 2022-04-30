/*¨
 * Remiseras OK - Revisa los comentarios que te dejo en algunos métodos
 */
import clientas.*
object roxana {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms
	}
}

object gabriela {
	/* Forma Resumida y multiplicar por 1.20 para el calculo */
	method precioViaje(cliente, kms) = cliente.precioPactadoPorKm() * kms * 1.2
}

object mariela {
	method precioViaje(cliente, kms) {
		/*Bien utilizando el max() */
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
/*¨
 * Clientes OK - Revisa los comentarios que te dejo en algunos métodos
 */

import remiseria.*
object ludmila {
  /* Te dejo la forma resumida de hacer el return directamente */ 
  method precioPactadoPorKm()=18
}  

object anaMaria {
	var estabilidadEconomica = true
	/* Te dejo la forma resumida de hacer el return directamente */ 
  	method precioPactadoPorKm() =if (self.estaEstable()){30}else{25}
    
   method estaEstable(){
    	return estabilidadEconomica
  }
  method cambiarEstabilidadEconomica(){
  	/* Bien cambiando de true a false y viceversa */
  	estabilidadEconomica = !estabilidadEconomica
  }
}

object teresa {
	var precioPactado = 22
	method precioPactadoPorKm(){
    	return 22
  	}
  	method precioPorKm(unPrecioNuevo){
  		precioPactado = unPrecioNuevo
  	}
    method precioPorKm(){
  		return precioPactado
  	}
}

object melina {
  var estaTrabajandoPara 
  	method estaTrabajandoPara(unaPersona){
    	estaTrabajandoPara = unaPersona
  }
  method precioPactadoPorKm(){
    return (estaTrabajandoPara.precioPactadoPorKm()) -3
  }
}
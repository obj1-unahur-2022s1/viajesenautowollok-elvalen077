import remiseria.*
object ludmila {
  method precioPactadoPorKm(){
   return 18
  }
}

object anaMaria {
	var estabilidadEconomica = true
   method precioPactadoPorKm(){
    if (self.estaEstable()){
    	return 30
    }else{
    	return 25
    }
   	}
   method estaEstable(){
    	return estabilidadEconomica
  }
  method cambiarEstabilidadEconomica(){
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
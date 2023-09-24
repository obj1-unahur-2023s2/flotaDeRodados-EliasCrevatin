import rodados.* 

class Dependencias {
	var property cantidadDeEmpleados = 0
	const rodados = []
	
	method agregarAFlota(rodado){
		rodados.add(rodado)
	}
	
	method quitarDeFlota(rodado){
		rodados.remove(rodado)
	}
	
	method pesoTotalFlota(){
		rodados.sum({rodado => rodado.peso()})
	}
	
	method todosSuperan_Velocidad(velocidad){
		return rodados.all({rodado => rodado.velocidad() >= velocidad})
	}
	method estaBienEquipada(){
		return rodados.size() >= 3 && self.todosSuperan_Velocidad(100)
	}
	
	
	
	
	method rodadosDeUnColor(unColor) {
		return rodados.filter({rodado => rodado.color() == unColor})
	}
	
	method capacidadTotalDeUnColor(unColor) {
		return self.rodadosDeUnColor(unColor).sum({r=>r.capacidad()})
	}
	
	method colorDeRodadoMasRapido(){
		return self.rodadoMasRapido().color()
	}
	
	method rodadoMasRapido(){
		if(rodados.isEmpty())			
			self.error("no se puede calcular el maximo")
			return rodados.max({r => r.velocidad()})
	}
	
	method capacidadDeLaFlota(){
		return rodados.sum({r => r.capacidad()})
	}
	
	method capacidadFaltante(){
		return 0.max(cantidadEmpleados - self.capacidadDeLaFlota())
	}
	
	method esGrande(){
		return cantidadEmpleados >= 40 and rodados.size() >= 5
	}






			


}

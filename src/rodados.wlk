class Corsa {
	var property color
	method capacidad() = 4
	method velocidad() = 150
	method peso() = 1300
}

class Kwid{
	var property conTanqueAdicional = false
	method capacidad() = if(conTanqueAdicional){4}else{3}
	method velocidad() = if(conTanqueAdicional){110}else{120}
	method peso() = if(conTanqueAdicional){1350}else{1200}
	method color() = 'azul'
}

object traffic{
	var property interior
	var property motor
	method capacidad() = interior.capacidad()
	method velocidad() = motor.velocidad()
	method peso() = 4000 + motor.peso() + interior.peso()
	method color() = 'blanco'
	method configurar(unInterior, unMotor){
		interior = unInterior
		motor = unMotor
	} 
}

object motorBataton{
	method peso() = 500
	method velocidad() = 80
}

object motorPulenta{
	method peso() = 800
	method velocidad() = 130
}

object interiorComodo{
	method capacidad() = 5
	method peso() = 700
}

object interiorPulenta{
	method capacidad() = 12
	method peso() = 1000
}

class AutosEspeciales{
	var property color
	var property capacidad
	var property velocidad 
	var property peso
}
object paquete {
	var destino = puenteDeBrooklyn
	var pago = false

	method modificarDestino(_destino) {
		destino =  _destino
	}
	method precio() {
		return destino.precio()
	}
	method estaPago() {
		pago = true
	}
	method puedeSerEntregado(_mensajero) {
		return pago && destino.puedePasar(_mensajero)
	}
}

object puenteDeBrooklyn {

	method precio() {
		return 150
	}
	method puedePasar(_mensajero) {
		return _mensajero.peso() < 1001
	}
}

object laMatrix {

	method precio() {
		return 500
	}
	method puedePasar(_mensajero) {
		return _mensajero.puedeRealizarLlamada()
	}
}

object jeanGray {
	const peso = 65

	method puedeRealizarLlamada() {
		return true
	}
	method peso() {
		return peso
	}
}

object neo {
	const peso  = 0
	var tieneCredito = true

	method peso() {
		return peso
	}
	method puedeRealizarLlamada() {
		return tieneCredito
	}
	method noTieneCredito() {
		tieneCredito = false 
	}
}

object saraConnor {
	var peso = 70
	var transporte = camion

	method puedeRealizarLlamada() {
		return false 
	}
	method peso() {
		return peso + transporte.peso()
	}
    method cambiarPeso(_peso) {
		peso = _peso
	}
	method cambiarTransporte(_transporte) {
		transporte = _transporte
	}
}

object camion {
	var peso = 500
	var cantAcoplados = 0

	method agregarAcoplado(_acoplado) {
		cantAcoplados = cantAcoplados + _acoplado
	}
	method peso() {
		return peso + cantAcoplados * 500
	}
}

object moto {
	const peso = 100

	method peso() {
		return peso
	}
}

/*Cuales son los polimorfismos?
peso()
puedeRealizarLlamada()
puedePasar(_mensajero)


definir Tipo de los objetos polimórficos : Mensajero y destino.

mensajes de los tipos de los obejtos polimorficos : 
Tipo Destino: precio(), puedePasar(mensajero)((
Tipo Mensajero: peso(), puedeRealizarLlamada()

quienes usan los mensajes polimórficos:
peso() = puenteDeBrooklyn
puedeRealizarLlamada() = laMatrix
puedePasar() = paquete 
precio() = paquete

Dibujar un diagrama estático en que se vea la relación entre los objetos y los tipos polimórficos



Mencionar un mensaje que sea una orden y otro que sea una consulta

En tu solución, el mensajero es un atributo del paquete o no? Por qué? Pensar como sería la manera alternativa.

Revisá que no haya quedado precálculo en el peso de Sara
*/
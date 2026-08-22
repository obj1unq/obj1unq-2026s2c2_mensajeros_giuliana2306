object paquete {
	var pago = false

	method pagar() {
		pago = True
  	} 
	method estaPago() {
		return pago
	}
	method precio(_destino) {
		return if (_destino == puenteDeBrooklyn) {
			      150 
			   } else {
				500
			   }
	}
	method puedeEntregarse() {
		return pago 
	}
}

object puenteDeBrooklyn {
	
	method dejaPasar(_quierePasar) {
		return if (_quierePasar.peso() < 1001) {
			   True 
		       } else {
				False
			   }
	} 
}

object laMatrix {
	
	method dejaPasar(_personaMensajera) {
		_personaMensajera.puedeRealizarLlamada()
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
	const peso = 0
	var tieneCredito = true

	method vuela() {
		return true
	}
	method peso() {
		return peso
	}
	method tieneCelular() {
		return true
	}
	method puedeRealizarLlamada() {
		return tieneCredito
	}
}

object saraConnor {
	var peso = 0
	var vehiculo 

	method viajaEn(_vehiculo) {
		vehiculo = _vehiculo
	}
	method peso() {
		if (vehiculo == camion) {
			return peso + camion.peso() + camion.cantDeAcoplados() * 500
		} else {
			return peso + moto.peso()
		}
	}
	method puedeRealizarLlamada() {
		return false
	}
}

object moto {
	const peso = 100 
}
object camion {
	const peso = 500
	var acoplados = 0

	method cantDeAcoplados() {
		return acoplados
	}

}


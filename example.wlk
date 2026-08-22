object paquete {
	const matrix = "matrix"
    const puenteDeBrooklyn = "puente de brooklyn"
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
}



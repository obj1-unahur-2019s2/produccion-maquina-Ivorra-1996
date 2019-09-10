/* Ivorra JOSE x3 */
object registroProduccion {
	var produccionPorDia = [53,18,49,62,33,39]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}
	method registroDeProduccion(cantidad){
		produccionPorDia.any({pd => pd == cantidad})
	}
	method maximoValorDeProduccion(){
		return produccionPorDia.max()
	}
	method valoresDeProduccionPares(){
		return produccionPorDia.filter({numero => numero.even()})
	}
	method produccionEsAcotada(n1,n2){
		return produccionPorDia.all({numero => numero.between(n1,n2)})
	}
	method produccionesSuperioresA(cuanto){
		return produccionPorDia.filter({numero => numero > cuanto})
	}
	method produccionesSumando(n){
	return produccionPorDia.map({numero => numero + n})
	}
	method totalProducido(){
		return produccionPorDia.sum()
	}
	method ultimoValorDeProduccion(){
		return produccionPorDia.last()
	}
	method cantidadProduccionesMayorALaPrimera(){
		//cuantos elementos cumplen una condicion : count
		return produccionPorDia.count({numero => numero > produccionPorDia.first()})
	}
}
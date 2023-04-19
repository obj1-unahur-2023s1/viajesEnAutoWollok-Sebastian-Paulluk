import remiseras.*
import cadete.*
import clientes.*

object oficina {
	var primeraRemisera = ""
	var segundaRemisera = ""
	
	
	method asignarRemiseras(remisera1, remisera2) {
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	
	method cambiarPrimerRemiserarPor(remisera) {
		primeraRemisera = remisera
	}
	
	method cambiarSegundaRemiseraPor(remisera) {
		segundaRemisera = remisera
	}
	
	method intercambiarRemiseras(){
		var primerRemiseraOriginal = primeraRemisera
		
		primeraRemisera = segundaRemisera
		segundaRemisera = primerRemiseraOriginal
	}
	
	method remiseraElegidaParaViaje(cliente, kms) {
		if ((primeraRemisera.precioViaje(cliente, kms) - segundaRemisera.precioViaje(cliente, kms)) > 30) {
			return segundaRemisera
		} else {
			return primeraRemisera
		}
	}
}
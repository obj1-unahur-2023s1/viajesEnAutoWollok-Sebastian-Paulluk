import clientes.*
import cadete.*
import oficina.*

object roxana {
	method precioViaje(cliente, kilometros) = (kilometros * cliente.pagaPorKM())
}

object gabriela {
	method precioViaje(cliente, kilometros) = (kilometros * cliente.pagaPorKM()) * 1.2
}

object mariela  {
	method precioViaje(cliente, kilometros) = 50.max(kilometros * cliente.pagaPorKM())
}

object juana {
	method precioViaje(cliente, kilometros) {
		if (kilometros <= 8) { 
			return 100
		} else {
			return 200
		}
	}
}

object lucia {
	var property reemplazaA = ""
	
	method precioViaje(cliente, kilometros) = reemplazaA.precioViaje(cliente, kilometros)
}


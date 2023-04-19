object ludmila {
method pagaPorKM() = 18
}

object anaMaria {
	var property estaEconomicamenteEstable = true
	
	method pagaPorKM() {
		if (estaEconomicamenteEstable) { return 30 }
		else { return 25 }
	}
}

object teresa {
	var property pagaPorKM = 22
}


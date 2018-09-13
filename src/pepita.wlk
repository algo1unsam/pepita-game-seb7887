import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property posicion = game.at(3,3)
	
	// TODO falta lo de las imagenes según la energía
	method imagen() = "pepita.png"
	
	method come(comida) {
		energia = energia + comida.energia()
	}
	
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		} else {
			// TODO ojo porque si está en null también responde esto 
		  game.say(self, 'Ya estoy en ' + unaCiudad + '!')
		}	
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
	  if (energia > self.energiaParaVolar(posicion.distance(nuevaPosicion))) {
		  energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		  self.posicion(nuevaPosicion)
		} else {
		  game.say(self, 'Dame de comer primero!')
		}
	}
	
	method esEncontrada(alguien) {
	  alguien.alimentar(self)
	}	
}

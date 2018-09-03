object roque {
	var property posicion = game.at(1,1)
	var comidaActual = null
	
	method imagen() = "jugador.png"	
	
	method agarrar(nuevaComida) {	  
	  if (comidaActual != null) {
	    if (posicion == new Position(7,7))
	     game.addVisualIn(comidaActual, posicion.down(1))
	    else
	     game.addVisualIn(comidaActual, posicion.up(1))
	  }	  
	  
	  game.removeVisual(nuevaComida)
	  comidaActual = nuevaComida
	}
	
	method alimentar(animal) {
	  if (comidaActual != null) {
	    animal.come(comidaActual)
	    comidaActual.randomizeComida()
	    comidaActual = null
	  }
	}
	
}

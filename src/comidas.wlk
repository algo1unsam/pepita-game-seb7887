object manzana {

	const property imagen = "manzana.png"
	var property posicion = game.at(3, 3)

	method energia() = 80

	method esEncontrada(alguien) {
		alguien.agarrar(self)
	}

	method randomizeComida() {
		game.addVisualIn(self, game.at(0.randomUpTo(10), 0.randomUpTo(10)))
	}

}

object alpiste {

	const property imagen = "alpiste.png"
	var property posicion = game.at(1, 8)

	method energia() = 5

	method esEncontrada(alguien) {
		alguien.agarrar(self)
	}

	method randomizeComida() {
		game.addVisualIn(self, game.at(0.randomUpTo(10), 0.randomUpTo(10)))
	}

}


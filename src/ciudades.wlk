object villaGesell {
	method imagen() = "ciudad.png"
	method nombre() = "Villa Gesell"
	method posicion() = game.at(8,3)
	//TODO falta el mensaje de que ya está acá, en esta y en la otra
	method esEncontrada(alguien) {}
}

object buenosAires {
	method imagen() = "ciudad.png"
	method nombre() = "Buenos Aires"
	method posicion() = game.at(1,1)
	method esEncontrada(alguien) {}
}

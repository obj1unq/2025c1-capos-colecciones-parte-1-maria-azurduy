object rolando {

    const artefactos = #{} // conjunto vacio. set
    const historial = [] // se desea saber el orden en que fue encontrado
    var capacidad = 2
    const morada = castillo
    var property poderBase = 100 //entiende setter and getter 

    method incrementarCapacidad(cantidad){
        capacidad += cantidad
    }

    method artefactos() {
        return artefactos
    }

    method posesiones() {
        return artefactos + morada.baul() 
    }

    method encontrar(artefacto) {
        if (self.tieneCapacidad()) {
            artefactos.add(artefacto)
        }
        historial.add(artefacto)
    }

    method historial() {
        return historial
    }

    method tieneCapacidad() {
        return artefactos.size() < capacidad
    }

    method llegarAMorada() {
        morada.depositar(artefactos)
        artefactos.clear()
    }

    method poder(){
        return poderBase

    }

}

object collar {
    method poder()

}
object espada {
    method poder()


}

object libro {
    method poder()

}

object armadura {
    method poder

}


object castillo {
    const baul = #{} // si no me importa el orden, uso un set 

    method depositar(artefactos){
        baul.addAll(artefactos)
    }

    method baul(){ // getter xra el test
        return baul
    }
  
}

//test es para probar los casos borde, los casos donde puede romper
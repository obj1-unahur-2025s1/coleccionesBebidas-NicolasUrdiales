object tito {
  var ultimaBebida = whisky
  var rendimientoBebida = 0
  method peso() = 70
  method inerciaInicial() = 490
  method consumir(cantidad, bebida){
    ultimaBebida = bebida
    rendimientoBebida = bebida.rendimiento(cantidad)
  }
  method velocidad() = (rendimientoBebida * self.inerciaInicial()) / self.peso()



}


object whisky{
    method rendimiento(cantidad) = 0.9 ** cantidad 
}
object terere{
    method rendimiento(cantidad) = (0.1 * cantidad).max(1)
}
object cianuro{
    method rendimiento(cantidad) = 0
}



object licuadoDeFrutas{
    const nutrientesFrutas = [3,4,8,9,6,10]
    method agregarFruta(nutriente) {nutrientesFrutas.add(nutriente)}
    method sumaNutrientes() = nutrientesFrutas.sum()
    method rendimiento(cantidad) = self.sumaNutrientes() * (cantidad.div(1000))
}

object aguaSaborizada{
    var property bebidaMezclada = whisky
    method rendimiento(cantidad) = 1 + (bebidaMezclada.rendimiento(cantidad) / 4)
}





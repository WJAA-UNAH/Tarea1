import 'package:lista/lista.dart' as lista;



List<T> elementosUnicos<T>(List<T> lista) {
  return lista.toSet().toList();
}

void main (){
  print('Programa lista Williams Avila 20222030516');




  var listaOriginal = [1, 2, 2, 3, 4, 4, 5];
  var resultado = elementosUnicos(listaOriginal);
  print('Elementos únicos: $resultado');






}
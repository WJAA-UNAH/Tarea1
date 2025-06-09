import 'package:libros/libros.dart' as libros;



class Libro {
  String titulo;
  String autor;
  int anioPublicacion;

  Libro(this.titulo, this.autor, this.anioPublicacion);

  @override
  String toString() {
    return '$titulo por $autor (Publicado en $anioPublicacion)';
  }
}


class Biblioteca {
  List<Libro> libros = [];


  void agregarLibro(Libro libro) {
    libros.add(libro);
  }


  bool eliminarLibro(String titulo) {
    int index = libros.indexWhere((libro) => libro.titulo == titulo);
    if (index != -1) {
      libros.removeAt(index);
      return true;
    }
    return false;
  }

  List<Libro> buscarPorAutor(String autor) {
    return libros.where((libro) => libro.autor.toLowerCase() == autor.toLowerCase()).toList();
  }


  List<Libro> listarLibrosOrdenados() {
    List<Libro> librosOrdenados = List.from(libros);
    librosOrdenados.sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    return librosOrdenados;
  }
}


void main() {
  Biblioteca biblioteca = Biblioteca();

  biblioteca.agregarLibro(Libro('Prision Verde', 'Ramon Amaya Amador', 1950));
  biblioteca.agregarLibro(Libro('El amor en los tiempos del cólera', 'Gabriel García Márquez', 1985));
  biblioteca.agregarLibro(Libro('Rayuela', 'Julio Cortázar', 1963));

  print('Libros de Ramon Amaya Amador');
  for (var libro in biblioteca.buscarPorAutor('Ramon Amaya Amador')) {
    print(libro);
  }

  print('Libros ordenados por año');
  for (var libro in biblioteca.listarLibrosOrdenados()) {
    print(libro);
  }

  biblioteca.eliminarLibro('Rayuela');

  print('Lista después de eliminar "Rayuela"');
  for (var libro in biblioteca.listarLibrosOrdenados()) {
    print(libro);
  }
}
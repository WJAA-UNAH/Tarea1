import 'package:empleado/empleado.dart' as empleado;



class Empleado {
  String nombre;
  String puesto;
  double salario;

  Empleado({required this.nombre, required this.puesto, required this.salario});
}

double calcularSalarioTotal(List<Empleado> empleados) {
  return empleados.fold(0, (suma, e) => suma + e.salario);
}

double calcularSalarioPromedio(List<Empleado> empleados) {
  if (empleados.isEmpty) return 0;
  return calcularSalarioTotal(empleados) / empleados.length;
}
void main (){
List<Empleado> empleados = [
    Empleado(nombre: 'Raul', puesto: 'Programador', salario: 30000.0),
    Empleado(nombre: 'Alexandra', puesto: 'Gerente', salario: 35000.0),
  ];

   print('Salario total: \$${calcularSalarioTotal(empleados)}');
  print('Salario promedio: \$${calcularSalarioPromedio(empleados)}');






}
import 'package:cuentabancaria/cuentabancaria.dart' as cuentabancaria;



class CuentaBancaria {
  String titular;
  double saldo;

  CuentaBancaria(this.titular, [this.saldo = 0]);

  
  void depositar(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
      print('Depósito exitoso. Nuevo saldo: \$${saldo.toStringAsFixed(2)}');
    } else {
      print('La cantidad a depositar debe ser positiva.');
    }
  }

  void retirar(double cantidad) {
    if (cantidad > 0) {
      if (cantidad <= saldo) {
        saldo -= cantidad;
        print('Retiro exitoso. Nuevo saldo: \$${saldo.toStringAsFixed(2)}');
      } else {
        print('Fondos insuficientes. Saldo disponible: \$${saldo.toStringAsFixed(2)}');
      }
    } else {
      print('La cantidad a retirar debe ser positiva.');
    }
  }


  double consultarSaldo() {
    return saldo;
  }

  @override
  String toString() {
    return 'Cuenta de $titular - Saldo: \$${saldo.toStringAsFixed(2)}';
  }
}

void main() {
  CuentaBancaria cuenta = CuentaBancaria('Giorno Giovanna', 3000);

  print(cuenta); 

  cuenta.depositar(2000);     
  cuenta.retirar(300);       
  cuenta.retirar(2000);      
  print('\nSaldo actual: \$${cuenta.consultarSaldo().toStringAsFixed(2)}');
}
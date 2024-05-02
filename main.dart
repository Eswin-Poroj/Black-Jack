import 'dart:io';

import 'clases/jugadorUsuario.dart';
import 'clases/jugadorCrupier.dart';

void main() {
  List<Map<String, dynamic>> repartirCartasUsuario =
      RepartirCartasUsuario().repartirCartasUsuario();

  List<Map<String, dynamic>> masoCrupier =
      RepartirCartasCrupier().repartirCartasCrupier();

  String? opcion;
  num calcularPuntaje;
  num calcularPuntaje2;

  do {
    stdout.writeln('1. Nuevo juego');
    stdout.writeln('2. Salir');
    stdout.writeln('Elija una opción: ');
    opcion = stdin.readLineSync();
    switch (opcion) {
      case '1':
        calcularPuntaje =
            BlackjackUsuario.calcularPuntaje(repartirCartasUsuario);
        calcularPuntaje2 = Blackjack.calcularPuntaje(masoCrupier);
        calificador(calcularPuntaje, calcularPuntaje2);
        print('$calcularPuntaje + $calcularPuntaje2');
        break;
      case '2':
        print('Gracias por jugar');
        break;
      default:
        print('Opción no válida');
    }
  } while (opcion != '2');
}

dynamic calificador(num puntajeUsuario, num puntajeCrupier) {
  if (puntajeUsuario > puntajeCrupier) {
    print('Haz ganado con $puntajeUsuario puntos');
  } else if (puntajeUsuario < puntajeCrupier) {
    print('Haz perdido con $puntajeUsuario puntos');
  } else {
    print('Empate con $puntajeUsuario puntos');
  }
}

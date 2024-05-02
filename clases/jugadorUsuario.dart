import 'dart:math';
import 'dart:io';
import 'mazo-de-cartas.dart';

abstract class Usuario {}

class RepartirCartasUsuario extends Usuario {
  dynamic repartirCartasUsuario() {
    List<Map<String, dynamic>> mano = [];
    Random random = Random();
    for (var _ in MazodeCartasBlackJack.cartas) {
      MazodeCartasBlackJack.cartas.shuffle();
      for (var i = 0; i < 2; i++) {
        int numCarta = random.nextInt(MazodeCartasBlackJack.cartas.length);
        mano.add(MazodeCartasBlackJack.cartas[numCarta]);
      }
      return mano;
    }
  }
}

class BlackjackUsuario extends Usuario {
  static dynamic calcularPuntaje(List<Map<String, dynamic>> mano) {
    num puntaje = 0;
    num puntaje2 = 0;
    bool tieneAs = false;
    for (var cartas in mano) {
      cartas.forEach((key, value) {
        if (key == 'valor') {
          if (value is List &&
              value.contains(1) &&
              value.contains(11) &&
              !tieneAs) {
            puntaje;
            puntaje2 = sumaPuntajeAs(puntaje);
            puntaje = puntaje2;

            tieneAs = true;
          } else {
            puntaje += value;
          }
        }
      });
    }
    if (puntaje > 21) {
      print('Tienes $puntaje puntos.');
    } else if (puntaje == 21) {
      print('BlackJack \n Haz ganado con 21 puntos');
    } else if (puntaje < 21 && puntaje > 16) {
      print('Tienes $puntaje puntos, quieres pedir otra carta?');
    } else if (puntaje < 16) {
      print('Tienes $puntaje puntos, pede otra carta');
    }
    return puntaje;
  }

  static dynamic sumaPuntajeAs(num puntaje) {
    stdout.writeln('Tienes un As, puedes elegir entre: \n 1. 1 \n 2. 11');
    stdout.writeln(
        'Tienes un As y tienes $puntaje puntos, Cuanto quieres que valga el As');
    String valorAs = stdin.readLineSync()!;
    if (valorAs == '1') {
      puntaje += 1;
    } else if (valorAs == '2') {
      puntaje += 11;
    } else {
      print('Opción no válida');
    }
    return puntaje;
  }
}

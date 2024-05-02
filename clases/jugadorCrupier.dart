import 'dart:math';
import 'mazo-de-cartas.dart';

abstract class Crupier {}

class RepartirCartasCrupier extends Crupier {
  dynamic repartirCartasCrupier() {
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

class Blackjack extends Crupier {
  static dynamic calcularPuntaje(List<Map<String, dynamic>> mano) {
    num puntaje = 0;
    bool tieneAs = false;
    for (var cartas in mano) {
      cartas.forEach((key, value) {
        if (key == 'valor') {
          if (value is List &&
              value.contains(1) &&
              value.contains(11) &&
              !tieneAs) {
            puntaje;

            if (puntaje > 16 && puntaje < 21) {
              puntaje -= 10;
            } else if (puntaje < 16) {
              puntaje += 10;
            }
            tieneAs = true;
          } else {
            puntaje += value;
          }
        }
      });
    }
    return puntaje;
  }
}

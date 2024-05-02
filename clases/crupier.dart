import 'dart:math';
import 'mazo-de-cartas.dart';

abstract class Cruppier {
  repartirCartas();
}

class RepartirCartas extends Cruppier {
  @override
  repartirCartas() {
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

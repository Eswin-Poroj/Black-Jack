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
    dynamic nuevoPuntaje = averiguarSiPedimosCarta(puntaje, mano);
    return nuevoPuntaje;
  }

  static dynamic averiguarSiPedimosCarta(
      num puntaje, List<Map<String, dynamic>> mano) {
    dynamic totalPuntos;
    if (puntaje < 16) {
      List<Map<String, dynamic>> manoNueva = pedirCarta(mano, puntaje);
      totalPuntos = sumarCartasTotales(manoNueva);
    }
    return totalPuntos;
  }

  static dynamic pedirCarta(List<Map<String, dynamic>> mano, num puntaje) {
    if (mano.length >= 3) {
      return {mano, puntaje};
    }

    if (puntaje < 17) {
      List<Map<String, dynamic>> nuevaCarta = pedirCarta2(List.from(mano));
      mano.clear();
      mano.addAll(nuevaCarta);

      dynamic totalPuntos = sumarCartasTotales(mano);
      puntaje = totalPuntos;
    } else if (puntaje > 16 && puntaje < 21) {
      print('El Crupier se ha plantado con $puntaje puntos');
      return mano;
    } else {
      print('Opción no válida');
    }

    return mano;
  }

  static dynamic pedirCarta2(List<Map<String, dynamic>> mano) {
    Random random = Random();
    MazodeCartasBlackJack.cartas.shuffle();
    int numCarta = random.nextInt(MazodeCartasBlackJack.cartas.length);
    mano.add(MazodeCartasBlackJack.cartas[numCarta]);
    return mano;
  }

  static dynamic sumarCartasTotales(List<Map<String, dynamic>> mano) {
    dynamic puntaje = 0;
    for (var datos in mano) {
      datos.forEach((key, value) {
        if (key == 'valor') {
          puntaje += value;
        }
      });
    }
    return puntaje;
  }
}

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
    dynamic nuevoPuntaje = averiguarSiPedimosCarta(puntaje, mano);
    return nuevoPuntaje;
  }

  static dynamic averiguarSiPedimosCarta(
      num puntaje, List<Map<String, dynamic>> mano) {
    dynamic totalPuntos;
    if (puntaje > 21) {
      print('Tienes $puntaje puntos.');
    } else if (puntaje == 21) {
      print('BlackJack \n Haz ganado con 21 puntos');
    } else if (puntaje < 21 && puntaje > 16) {
      print('Tienes $puntaje puntos, quieres pedir otra carta?');
      List<Map<String, dynamic>> manoNueva = pedirCarta(mano, puntaje);
      print(manoNueva);
      totalPuntos = sumarCartasTotales(manoNueva);
    } else if (puntaje < 16) {
      List<Map<String, dynamic>> manoNueva = pedirCarta(mano, puntaje);
      print(manoNueva);
      totalPuntos = sumarCartasTotales(manoNueva);
    } else {
      print('Opción no válida');
    }
    return totalPuntos;
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

  static dynamic pedirCarta(List<Map<String, dynamic>> mano, num puntaje) {
    if (mano.length >= 3) {
      print('Ya tienes 3 cartas en tu mano');
      return mano;
    }

    print('Tienes $puntaje puntos, pide otra carta');
    stdout.writeln('Quieres pedir otra carta? \n 1. Si \n 2. No');
    String pedirCarta = stdin.readLineSync()!;

    if (pedirCarta == '1') {
      List<Map<String, dynamic>> nuevaCarta = pedirCarta2(List.from(mano));
      mano.clear();
      mano.addAll(nuevaCarta);

      print(mano);
    } else if (pedirCarta == '2') {
      print('Te has plantado con $puntaje puntos');
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
    print('Tienes $puntaje puntos');
    return puntaje;
  }

  /*static dynamic doblar(List<Map<String, dynamic>> mano) {
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

  
  static dynamic empate(List<Map<String, dynamic>> mano) {
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

  static dynamic ganar(List<Map<String, dynamic>> mano) {
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
  }*/
}

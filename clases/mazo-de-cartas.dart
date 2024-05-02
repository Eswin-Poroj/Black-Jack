abstract class MazodeCartas {}

class MazodeCartasBlackJack extends MazodeCartas {
  static List<Map<String, dynamic>> cartas = [
    {
      'corazonesAs': [1, 11]
    },
    {'corazones2': 2},
    {'corazones3': 3},
    {'corazones4': 4},
    {'corazones5': 5},
    {'corazones6': 6},
    {'corazones7': 7},
    {'corazones8': 8},
    {'corazones9': 9},
    {'corazones10': 10},
    {'corazonesJ': 10},
    {'corazonesQ': 10},
    {'corazonesK': 10},
    {
      'diamantesAs': [1, 11]
    },
    {'diamantes2': 2},
    {'diamantes3': 3},
    {'diamantes4': 4},
    {'diamantes5': 5},
    {'diamantes6': 6},
    {'diamantes7': 7},
    {'diamantes8': 8},
    {'diamantes9': 9},
    {'diamantes10': 10},
    {'diamantesJ': 10},
    {'diamantesQ': 10},
    {'diamantesK': 10},
    {
      'trebolesAs': [1, 11]
    },
    {'treboles2': 2},
    {'treboles3': 3},
    {'treboles4': 4},
    {'treboles5': 5},
    {'treboles6': 6},
    {'treboles7': 7},
    {'treboles8': 8},
    {'treboles9': 9},
    {'treboles10': 10},
    {'trebolesJ': 10},
    {'trebolesQ': 10},
    {'trebolesK': 10},
    {
      'EspadasAs': [1, 11]
    },
    {'Espadas2': 2},
    {'Espadas3': 3},
    {'Espadas4': 4},
    {'Espadas5': 5},
    {'Espadas6': 6},
    {'Espadas7': 7},
    {'Espadas8': 8},
    {'Espadas9': 9},
    {'Espadas10': 10},
    {'EspadasJ': 10},
    {'EspadasQ': 10},
    {'EspadasK': 10},
  ];

/*
  List<CartaEspanola> cartas = ['oros', 'copas', 'espadas', 'bastos'];
  MazodeCartasEspanolas() {
    for (var palo in ['oros', 'copas', 'espadas', 'bastos']) {
      for (var numero = 1; numero <= 12; numero++) {
        cartas.add(CartaEspanola(palo, numero));
      }
    }
  }

  void barajar() {
    cartas.shuffle();
  }

  CartaEspanola repartir() {
    return cartas.removeLast();
  }

  void mostrar() {
    for (var carta in cartas) {
      print(carta);
    }
  }

  void mostrarCantidad() {
    print(cartas.length);
  }

  void mostrarCarta(CartaEspanola carta) {
    print(carta);
  }

  void mostrarCartas(List<CartaEspanola> cartas) {
    for (var carta in cartas) {
      print(carta);
    }
  }

  void mostrarCartasDePalo(String palo) {
    for (var carta in cartas) {
      if (carta.palo == palo) {
        print(carta);
      }
    }
  }

  void mostrarCartasDeNumero(int numero) {
    for (var carta in cartas) {
      if (carta.numero == numero) {
        print(carta);
      }
    }
  }

  void mostrarCartasDePaloYNumero(String palo, int numero) {
    for (var carta in cartas) {
      if (carta.palo == palo && carta.numero == numero) {
        print(carta);
      }
    }
  }*/
}

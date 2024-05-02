class MazodeCartasBlackJack {
  static List<Map<String, dynamic>> cartas = [
    {
      'nombre': 'corazonesAs',
      'valor': [1, 11]
    },
    {'nombre': 'corazones2', 'valor': 2},
    {'nombre': 'corazones3', 'valor': 3},
    {'nombre': 'corazones4', 'valor': 4},
    {'nombre': 'corazones5', 'valor': 5},
    {'nombre': 'corazones6', 'valor': 6},
    {'nombre': 'corazones7', 'valor': 7},
    {'nombre': 'corazones8', 'valor': 8},
    {'nombre': 'corazones9', 'valor': 9},
    {'nombre': 'corazones10', 'valor': 10},
    {'nombre': 'corazonesJ', 'valor': 10},
    {'nombre': 'corazonesQ', 'valor': 10},
    {'nombre': 'corazonesK', 'valor': 10},
    {
      'nombre': 'diamantesAs',
      'valor': [1, 11]
    },
    {'nombre': 'diamantes2', 'valor': 2},
    {'nombre': 'diamantes3', 'valor': 3},
    {'nombre': 'diamantes4', 'valor': 4},
    {'nombre': 'diamantes5', 'valor': 5},
    {'nombre': 'diamantes6', 'valor': 6},
    {'nombre': 'diamantes7', 'valor': 7},
    {'nombre': 'diamantes8', 'valor': 8},
    {'nombre': 'diamantes9', 'valor': 9},
    {'nombre': 'diamantes10', 'valor': 10},
    {'nombre': 'diamantesJ', 'valor': 10},
    {'nombre': 'diamantesQ', 'valor': 10},
    {'nombre': 'diamantesK', 'valor': 10},
    {
      'nombre': 'trebolesAs',
      'valor': [1, 11]
    },
    {'nombre': 'treboles2', 'valor': 2},
    {'nombre': 'treboles3', 'valor': 3},
    {'nombre': 'treboles4', 'valor': 4},
    {'nombre': 'treboles5', 'valor': 5},
    {'nombre': 'treboles6', 'valor': 6},
    {'nombre': 'treboles7', 'valor': 7},
    {'nombre': 'treboles8', 'valor': 8},
    {'nombre': 'treboles9', 'valor': 9},
    {'nombre': 'treboles10', 'valor': 10},
    {'nombre': 'trebolesJ', 'valor': 10},
    {'nombre': 'trebolesQ', 'valor': 10},
    {'nombre': 'trebolesK', 'valor': 10},
    {
      'nombre': 'EspadasAs',
      'valor': [1, 11]
    },
    {'nombre': 'Espadas2', 'valor': 2},
    {'nombre': 'Espadas3', 'valor': 3},
    {'nombre': 'Espadas4', 'valor': 4},
    {'nombre': 'Espadas5', 'valor': 5},
    {'nombre': 'Espadas6', 'valor': 6},
    {'nombre': 'Espadas7', 'valor': 7},
    {'nombre': 'Espadas8', 'valor': 8},
    {'nombre': 'Espadas9', 'valor': 9},
    {'nombre': 'Espadas10', 'valor': 10},
    {'nombre': 'EspadasJ', 'valor': 10},
    {'nombre': 'EspadasQ', 'valor': 10},
    {'nombre': 'EspadasK', 'valor': 10},
  ];

  MazodeCartasBlackJack(List<Map<String, dynamic>> cartas);

/*
  List<Map<String, dynamic>> repartirCartas() {
    List<Map<String, dynamic>> mano = [];
    cartas.shuffle();
    Random random = Random();

    for (int i = 0; i < 2; i++) {
      int index = random.nextInt(cartas.length);
      mano.add(cartas[index]);
    }
    return mano;
  }

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

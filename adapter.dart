class Objetoa {
  int kilometros;
  Objetoa({required this.kilometros});
}

void main() {
  //Yo tengo una cancha de 1 kilometros y quiero venderla
  Objetoa CanchaDeFutboll = Objetoa(kilometros: 1);

  //Hay un hombre que quiere comprar mi terreno
  Hombre HombreDeNegocios = Hombre();

  //Hola soy el hombre de negocios, dime cuantos metros tiene tu campo de futbol
  CanchaDeFutboll.kilometros;

  // [CanchaDeFutboll.kilometros] PERO MI CLASE SOLO TIENE KILOMETROS
  Adaptador adaptarAloQuePiden = Adaptador();

  //vamos a adaptarlo entonces a lo que pide el hombre de negocios
  double respuesta = adaptarAloQuePiden.convertirametros(CanchaDeFutboll.kilometros);
  //Ahora si con mi respuesta puedo vender mi terreno esta es mi respuesta

  HombreDeNegocios.OfrecerXporElTerreno(respuesta);
  //Ok me parece bien entonces procedo a comprar tu terreno
  
  //Procede a pagar
  HombreDeNegocios.pagar();

  // Asi con el adaptador pude vender mi terreno sin tener idea de que es un metro en mi clase que solo conoce kilometros
}

class Hombre {
  double x = 0;
  OfrecerXporElTerreno(double metros) {
    x = metros * 10;
    print("Por tus $metros te pago: ${metros * 10} en total.");
  }

  pagar() {
    print("Ok toma tu pago>>>> $x");
  }
}

class Adaptador {
  double convertirametros(int value) {
    double metros = value * 1000;

    return metros;
  }
}

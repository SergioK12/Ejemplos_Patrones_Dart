class Amburguesa {
  String tipo;
  Amburguesa({required this.tipo});

  void EntregarAmburguesa() {
    print("Estoy entregando la amburguesa que fabriqué a base de $tipo");
  }
}

void main() {
  Amburguesa amburguesadePollo = Amburguesa(tipo: "pollo");
  amburguesadePollo.EntregarAmburguesa();

  Amburguesa amburguesaderes = Amburguesa(tipo: "res");
  amburguesaderes.EntregarAmburguesa();
}

//En resumen se trata de hacer la construccion de un objeto a base de los elementos que reciba
// es una implementacion aun mas basica del patron Abstract Factory

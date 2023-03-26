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

class Idiomapordefecto {
  static const idioma = "ESPAÑOL";

  //Idiomapordefecto();
}
//Se trata de una propiedad estárica que puede ser llamada desde cualquier funcion sin tener que
//crear otra instancia, en este ejemplo puede ser clase abstracta tambien

void main() {
  print("Soy main > "+ Idiomapordefecto.idioma);

  imprimiridioma();
}

void imprimiridioma() {
  print("Soy la funcion imprimir > "+Idiomapordefecto.idioma);
}

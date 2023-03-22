class Persona {
  late String nombre;
  late String apellido;

  Persona({required this.nombre, required this.apellido});

  Persona copyWith({String? nombrex, String? apellidox}) {
    return Persona(
        nombre: nombrex ?? this.nombre, apellido: apellidox ?? this.apellido);
  }
}

void main() {
  Persona p1 = Persona(nombre: "Juan", apellido: "Castillo");

  Persona copy = p1.copyWith(nombrex: "Sergio");
  print(copy.nombre);
}

abstract class AbstractFactory {
  Producto CrearUnProducto();
}

// La clase abstracta de un producto. OSEA CUALQUIER PRODUCTO PUEDE IMPLEMENTAR ESTA CLASE PARA
// INFORMAR QUE EL PRODUCTO HA SIDO CREADO
abstract class Producto {
  void Informar(){

  }
}

// La fábrica concreta que crea productos de tipo A.
class ConcreteFactoryA implements AbstractFactory {
  @override
  Producto CrearUnProducto() {
    return ProductoA();
  }
}

// La fábrica concreta que crea productos de tipo B.
class ConcreteFactoryB implements AbstractFactory {
  @override
  Producto CrearUnProducto() {
    return ProductoB();
  }
}

// La implementación concreta del producto de tipo A.
class ProductoA implements Producto {
  @override
  void Informar() {
    print("Producto A creado.");
  }
}

// La implementación concreta del producto de tipo B.
class ProductoB implements Producto {
  @override
  void Informar() {
    print("Producto B creado.");
  }
}

// El cliente que utiliza la fábrica abstracta.
class Client {
  AbstractFactory factory;

  Client(this.factory);

  void CrearProducto() {
    Producto product = factory.CrearUnProducto();
    product.Informar();
  }
}

void main() {
  Client clientA = Client(ConcreteFactoryA());
  clientA.CrearProducto(); 

  Client clientB = Client(ConcreteFactoryB());
  clientB.CrearProducto();
}

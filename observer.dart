abstract class Subject {
  List<Observer> _observers = [];

  void Aniadir_observador(Observer observer) {
    _observers.add(observer);
  }

  void Eliminar_obervador(Observer observer) {
    _observers.remove(observer);
  }

  void Notificar_a_los_clientes() {
    for (Observer observer in _observers) {
      observer.update(this);
    }
  }
}

class Store extends Subject {
  List<String> _products = [
    
  ];

  void addProduct(String product) {
    _products.add(product);
    Notificar_a_los_clientes();
  }

  List<String> get products => List.unmodifiable(_products);
}

abstract class Observer {
  void update(Subject subject);
}

class Client implements Observer {
  final String name;

  Client(this.name);

  @override
  void update(Subject subject) {
    if (subject is Store) {
      List<String> products = subject.products;
      String newProduct = products.last;
      print('$name: Nuevo producto agregado a la tienda - $newProduct');
    }
  }
}

void main() {
  // Crear la tienda
  Store store = Store();

  // Crear algunos clientes
  Client client1 = Client('Cliente 1');
  Client client2 = Client('Cliente 2');
  Client client3 = Client('Cliente 3');

  // Registrar los clientes en la tienda
  store.Aniadir_observador(client1);
  store.Aniadir_observador(client2);
  store.Aniadir_observador(client3);

  // Agregar algunos productos a la tienda
  store.addProduct('Camiseta');
  store.addProduct('Pantalón');
  store.addProduct('Zapatos');

  // Remover un cliente de la lista de observadores
  store.Eliminar_obervador(client2);

  // Agregar otro producto a la tienda
  store.addProduct('Gorra');
}

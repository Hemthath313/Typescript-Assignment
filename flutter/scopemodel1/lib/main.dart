import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MyApp());
}

class Item {
  final String name;
  final double price;

  Item({required this.name, required this.price});
}

class CartModel extends Model {
  List<Item> _items = [];

  List<Item> get items => _items;

  void addItem(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }

  double get totalPrice =>
      _items.fold(0, (total, item) => total + item.price);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CartModel>(
      model: CartModel(),
      child: MaterialApp(
        title: 'Scoped Model Demo',
        home: ShoppingCartPage(),
      ),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  final List<Item> _items = [
    Item(name: 'washine machine', price: 10.0),
    Item(name: 'Tv', price: 15.0),
    Item(name: 'Ac', price: 20.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ScopedModelDescendant<CartModel>(
            builder: (context, child, model) {
              return Text(
                'Total: \$${model.totalPrice}',
                style:const TextStyle(fontSize: 24.0),
              );
            },
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                final item = _items[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text('\$${item.price}'),
                  trailing: IconButton(
                    icon:const Icon(Icons.add_shopping_cart),
                    onPressed: () =>
                        ScopedModel.of<CartModel>(context).addItem(item),
                  )
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/Cart.dart';
import '../../models/catalog.dart';

class AddToCart extends StatelessWidget {
  final Items catalog;
  AddToCart({super.key, required this.catalog});

  final _cart=CartModel();
  final _catalog = CatalogModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart=_cart.items?.contains(catalog)??false;
    return ElevatedButton.icon(onPressed: (){
      if(!isInCart) {
        isInCart = isInCart.toggle();
        _cart.catalog = _catalog;
        _cart.add(catalog);
        // setState(() {
        //
        // });
      }else{
        isInCart = isInCart.toggle();
        _cart.catalog = _catalog;
        _cart.remove(catalog);
        // setState(() {
        //
        // });
      }
    },
      icon: isInCart?Icon(Icons.shopping_cart, color: Colors.white): Icon(Icons.shopping_cart_outlined, color: Colors.white),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Theme.of(context).colorScheme.primary),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
      label: isInCart?Icon(Icons.done): "Add".text.bold.make(),

    );
  }
}

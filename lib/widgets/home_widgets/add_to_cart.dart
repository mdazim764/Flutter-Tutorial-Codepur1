import 'package:flutter/material.dart';
import 'package:untitled2/core/store.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/Cart.dart';
import '../../models/catalog.dart';

class AddToCart extends StatelessWidget {
  final Items catalog;
  AddToCart({super.key, required this.catalog});


  @override
  Widget build(BuildContext context) {

    final CartModel _cart=(VxState.store as MyStore).cart;

    bool isInCart=_cart.items?.contains(catalog)??false;

    return VxConsumer(
        builder: (context,Object? _,VxStatus? __) {
    return ElevatedButton.icon(onPressed: (){
      if(!isInCart) {
        isInCart = isInCart.toggle();
        AddMutation(catalog);
      }else{
        isInCart = isInCart.toggle();
        RemoveMutation(catalog);
      }
    },
      icon: isInCart?Icon(Icons.shopping_cart, color: Colors.white): Icon(Icons.shopping_cart_outlined, color: Colors.white),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Theme.of(context).colorScheme.primary),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
      label: isInCart?Icon(Icons.done): "Add".text.bold.make(),

    );
        },
      mutations: {AddMutation,RemoveMutation},
    );
  }
}

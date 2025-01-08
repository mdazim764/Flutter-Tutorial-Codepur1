import 'package:flutter/material.dart';
import 'package:untitled2/models/Cart.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.bold.make(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),

    );
  }
}
class _CartTotal extends StatelessWidget {
  const _CartTotal({super.key});
  @override
  Widget build(BuildContext context) {
    final CartModel _cart=(VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}".text.xl4.color(context.theme.primaryColor).bold.make().p16(),
          30.widthBox,
          ElevatedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: "Buying Not Supported Yet!!".text.color(Vx.red400).xl.bold.make(),
                  backgroundColor: context.canvasColor,
                ),
            );
          },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Theme.of(context).colorScheme.primary)
            ),
              child: "Buy".text.color(Colors.white).bold.xl.make(), ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;

    return VxConsumer(
      builder: (context, Object? _, VxStatus? __) {
        return _cart.items!.isEmpty
            ? "Nothing To Show".text.xl4.makeCentered()
            : ListView.builder(
          itemCount: _cart.items?.length,
          itemBuilder: (context, index) =>
              ListTile(
                leading: Icon(Icons.done),
                trailing: IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      RemoveMutation(_cart.items![index]);
                    }
                ),
                title: _cart.items?[index].name.text.make(),
              ),
        );
      },
      mutations: {RemoveMutation},
    );
  }
}
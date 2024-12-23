import 'package:flutter/material.dart';

import '../models/catalog.dart';
class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.items});

  final Items items;
  @override
  Widget build(BuildContext context) {

    return Card(
      child: ListTile(
        onTap: (){
          print("${items.name} pressed");
        },
        leading: Image.network(items.image),
        title: Text(items.name),
        subtitle: Text(items.desc),
        trailing: Text("\$${items.price}",
        textScaler: TextScaler.linear(1.5),
        style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}

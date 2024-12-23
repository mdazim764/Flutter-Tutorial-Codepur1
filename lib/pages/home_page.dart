import 'package:flutter/material.dart';
import 'package:untitled2/models/catalog.dart';

import '../widgets/ItemWidget.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int age = 21;
  var name = 'azim';

  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final dummyList=List.generate(20,(index)=>CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(

        title: const Text(
          "Catalog App",
          style: TextStyle(fontSize: 25,),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
            itemBuilder: (context, index){
        return ItemWidget(
          items: dummyList[index],
        );
        }
        ),
      ),
      // Center(
      //   child: Text(
      //     "Welcome $name\nage: $age",
      //     style: const TextStyle(fontSize: 30),
      //   ),
      // ),
      drawer: MyDrawer(),
    );
  }
}

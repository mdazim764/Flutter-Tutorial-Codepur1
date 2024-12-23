import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/models/catalog.dart';

import '../widgets/ItemWidget.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final int age = 21;
  // var name = 'azim';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async{
    await Future.delayed(Duration(seconds: 2));
    var catalogJson= await rootBundle.loadString("assets/files/catalog.json");
    // print(catalogJson);
    var decodedData=jsonDecode(catalogJson);
    // print(decodedData);
    var productsData=decodedData["products"];
    // print(productsData);
    CatalogModel.items=List.from(productsData)
        .map<Items>((item)=>Items.fromMap(item)).toList();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(

        title: const Text(
          "Catalog App",
          style: TextStyle(fontSize: 25,),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:(CatalogModel.items!=null&&CatalogModel.items.isNotEmpty)
        ?ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                items: CatalogModel.items[index],
              );
            }
        ):Center(
          child: CircularProgressIndicator(),
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

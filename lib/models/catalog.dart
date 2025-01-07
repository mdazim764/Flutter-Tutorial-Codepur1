import 'package:untitled2/models/Cart.dart';

class CatalogModel {

  // converted to single tern for testing
  // static final catModel=CatalogModel._internal();
  // CatalogModel._internal();
  // factory CatalogModel()=>catModel;

  static List<Items> items=[];

  //Get Item by id
  Items getById(int id)=>items.firstWhere((element)=>element.id==id,orElse: null);

//Get Item by position
  Items getByPosition(int pos)=>items[pos];
}

class Items {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}

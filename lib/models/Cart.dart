import 'package:untitled2/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

class CartModel {

  // converted to single tern for testing
  // static final cartModel = CartModel._internal();
  // CartModel._internal();
  // factory CartModel()=> cartModel;

  //catalog field
  late CatalogModel _catalog;

  //collection of ids - store id of each item
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }


//get items in the cart
  List<Items>? get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num? get totalPrice =>
      items?.fold(0, (total, current) => total! + current.price);

  //add Item
  void add(Items item) {
    _itemIds.add(item.id);
  }

  //Remove Item
  void remove(Items item) {
    _itemIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  final Items item;

  AddMutation(this.item);

  @override
  perform() {
    // store?.cart._itemIds.add(item.id);
    store?.cart.add(item);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Items item;

  RemoveMutation(this.item);

  @override
  perform() {
    store?.cart.remove(item);
  }
}

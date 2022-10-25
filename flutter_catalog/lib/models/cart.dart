import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  // catalog field

  late CatalogModel _catalog;

// Collection of IDs ,store ids of each item

  final List<int> _itemIds = [];

// Get items Id in the cart

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //  Get Total Price

  num get totalPrice =>
      items.fold(0, (total, currnent) => total + currnent.price);

  //  Add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove Iteam
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

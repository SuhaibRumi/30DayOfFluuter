class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPone 12 Pro",
        dsec: "Apple iPone 12th generation",
        price: '999',
        color: "#33505a",
        image:
            "https://appleshop.com.pk/wp-content/uploads/2020/10/iphone-12-pro-max.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String dsec;
  final String price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.dsec,
      required this.price,
      required this.color,
      required this.image});
}

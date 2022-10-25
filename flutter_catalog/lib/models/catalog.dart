import 'dart:convert';

class CatalogModel {
  static List<Item>? items;

  //  Get item By ID
   Item getById(int id) => items!.firstWhere(
        (element) => element.id == id,);
      

  // Get by Position
   Item getByPosition(int pos) => items![pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String image;
  final num price;
  final String color;

  Item(
    this.id,
    this.name,
    this.desc,
    this.image,
    this.price,
    this.color,
  );

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    String? image,
    num? price,
    String? color,
  }) {
    return Item(
      id ?? this.id,
      name ?? this.name,
      desc ?? this.desc,
      image ?? this.image,
      price ?? this.price,
      color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'image': image,
      'price': price,
      'color': color,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['id']?.toInt() ?? 0,
      map['name'] ?? '',
      map['desc'] ?? '',
      map['image'] ?? '',
      map['price'] ?? 0,
      map['color'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, image: $image, price: $price, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.image == image &&
        other.price == price &&
        other.color == color;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        image.hashCode ^
        price.hashCode ^
        color.hashCode;
  }
}

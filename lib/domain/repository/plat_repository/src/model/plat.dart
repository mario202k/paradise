enum TypeOfFood {
  boissons,
  entrees,
  viandes,
  poissons,
  burgerMaison,
  couscousMaison,
  pizzaAuFeuDeBois,
  desserts,
}

class Plat {
  final String id;
  final String image; //asset ou url
  final bool hasChange;
  final bool isAvailable;
  final String title;
  final String comment;
  final double price;
  final TypeOfFood type;

  Plat({this.id, this.image, this.hasChange, this.isAvailable, this.title,
      this.comment, this.price, this.type});

  factory Plat.fromMap(Map<String, dynamic> map) {
    return Plat(
      id: map['id'] as String,
      image: map['image'] as String,
      hasChange: map['hasChange'] as bool,
      isAvailable: map['isAvailable'] as bool,
      title: map['title'] as String,
      comment: map['comment'] as String,
      price: map['price'] as double,
      type: map['type'] as TypeOfFood,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'image': this.image,
      'hasChange': this.hasChange,
      'isAvailable': this.isAvailable,
      'title': this.title,
      'comment': this.comment,
      'price': this.price,
      'type': this.type,
    } as Map<String, dynamic>;
  }
}

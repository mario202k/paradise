import 'package:paradise/domain/repository/plat_repository/src/model/plat.dart';

class Commande{
  final List<Plat> plats;
  final double price;
  final DateTime quand;
  final bool isTakeAway;

  Commande({this.plats, this.price, this.quand, this.isTakeAway});

  factory Commande.fromMap(Map<String, dynamic> map) {
    return new Commande(
      plats: map['plats'] as List<Plat>,
      price: map['price'] as double,
      quand: map['quand'] as DateTime,
      isTakeAway: map['isTakeAway'] as bool,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'plats': this.plats,
      'price': this.price,
      'quand': this.quand,
      'isTakeAway': this.isTakeAway,
    } as Map<String, dynamic>;
  }
}
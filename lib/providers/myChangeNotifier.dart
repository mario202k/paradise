import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paradise/domain/repository/plat_repository/src/model/plat.dart';
import 'package:paradise/generated/l10n.dart';

final myChangeNotifierProvider = ChangeNotifierProvider<MyChangeNotifier>((ref) {
  return MyChangeNotifier();
});

class MyChangeNotifier extends ChangeNotifier{

  int nbArticlePanier;
  List<String> types;
  String drapeaux;
  String onGoingCategorie;
  List<Map<String, dynamic>> plats;
  S delegate;
  Map<TypeOfFood,String> typeToString;


  initial(S s){
    print("coucou");
    if(nbArticlePanier != null){
      return;
    }
    print('initial');
    nbArticlePanier = 0;
    plats = [
      {
        'id': 1,
        'image': 'assets/images/salade_facon_paradise-340x340.jpg',
        'hasChanged': false,
        'isAvailable': true,
        'title': s.saladeFacon,
        'comment': s.rienQueDesBonnesChoses,
        'price': 9.90,
        'type': TypeOfFood.entrees,
      },
      {
        'id': 2,
        'image': 'assets/images/samoussa-viande-300x300.jpg',
        'hasChanged': false,
        'isAvailable': true,
        'title': s.samoussaViande,
        'comment': s.emblematiqueDeLa,
        'price': 9.90,
        'type': TypeOfFood.entrees,
      },
      {
        'id': 3,
        'image': 'assets/images/tartare-saumon-300x300.jpg',
        'hasChanged': false,
        'isAvailable': true,
        'title': s.tartareDeSaumon,
        'comment': s.uneEntreePleine,
        'price': 12.90,
        'type': TypeOfFood.entrees,
      },
      {
        'id': 4,
        'image': 'assets/images/toast-foie-gras-300x300.jpg',
        'hasChanged': false,
        'isAvailable': true,
        'title': s.saladeFacon,
        'comment': s.rienQueDesBonnesChoses,
        'price': 12.90,
        'type': TypeOfFood.entrees,
      }
    ];

    typeToString = {
      TypeOfFood.boissons:s.boissons,
      TypeOfFood.entrees:s.entree,
      TypeOfFood.viandes:s.viandes,
      TypeOfFood.poissons:s.poissons,
      TypeOfFood.burgerMaison:s.burgerMaison,
      TypeOfFood.couscousMaison:s.couscousMaison,
      TypeOfFood.pizzaAuFeuDeBois:s.pizzaAuFeuDeBois,
      TypeOfFood.desserts:s.desserts,
    };

    drapeaux = "assets/drapeauFr.png";

  }

  setNbArticlePanier(int value) {
    nbArticlePanier = value;
  }

  setOnGoingCategorie(String value) {
    onGoingCategorie = value;
    notifyListeners();
  }
}
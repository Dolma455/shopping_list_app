
import 'package:flutter/material.dart';
import 'package:shoppinglist_app/models/category.dart' ;

final categories = {
Categories.vegetables:
      Categorry('title', const Color.fromARGB(99, 165, 136, 204)),
  Categories.meat:
      Categorry('Fruits', const Color.fromARGB(98, 208, 237, 90)),
  Categories.spices:
      Categorry('Spices', const Color.fromARGB(200, 50, 50, 100)),
  Categories.sweets:
      Categorry('Sweets', const Color.fromARGB(199, 132, 215, 106)),
  Categories.dairy:
      Categorry('Dairy', const Color.fromARGB(200, 50, 50, 100)),
  Categories.fruits:
      Categorry('Fruits', const Color.fromARGB(199, 209, 93, 126)),
  Categories.convinience:
      Categorry('Convenience', const Color.fromARGB(198, 63, 190, 165)),
  Categories.hygiene:
      Categorry('Hygiene', const Color.fromARGB(198, 232, 174, 81)),
  Categories.other:
      Categorry('others', const Color.fromARGB(198, 76, 25, 135)),
};

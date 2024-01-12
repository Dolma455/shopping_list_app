import 'package:shoppinglist_app/data/categories.dart';
import 'package:shoppinglist_app/models/category.dart' as myApp;
import 'package:shoppinglist_app/models/grocery_item.dart';

final groceryItems = [
  GroceryItem(
      id: 'a',
      name: 'Milk',
      quantity: 1,
      category: categories[myApp.Categories.dairy]!),
  GroceryItem(
      id: '2',
      name: 'Banana',
      quantity: 12,
      category: categories[myApp.Categories.fruits]!),
  GroceryItem(
      id: 'c',
      name: 'Beef stick',
      quantity: 5,
      category: categories[myApp.Categories.meat]!),
  GroceryItem(
      id: 'd',
      name: 'Choco Pie',
      quantity: 4,
      category: categories[myApp.Categories.sweets]!),
  GroceryItem(
      id: 'e',
      name: 'Kurkure',
      quantity: 4,
      category: categories[myApp.Categories.spices]!),
];

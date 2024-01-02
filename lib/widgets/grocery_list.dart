import 'package:flutter/material.dart';
import 'package:shoppinglist_app/data/dummy_item.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Groceries"),
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (context,index)=>ListTile(
          leading: Container(
            width: 23,
            height: 23,
            color: groceryItems[index].category.color,
          ),
          trailing: Text(groceryItems[index].quantity.toString()),
        
        title: Text(groceryItems[index].name,))
    ));
  }
}
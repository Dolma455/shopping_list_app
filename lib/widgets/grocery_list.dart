import 'package:flutter/material.dart';
import 'package:shoppinglist_app/data/dummy_item.dart';
import 'package:shoppinglist_app/widgets/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  void _addItem() {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>NewItem()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Your Groceries"),
          actions: [
            IconButton(onPressed: _addItem, icon: const Icon(Icons.add))
          ],
        ),
        body: ListView.builder(
            itemCount: groceryItems.length,
            itemBuilder: (context, index) => ListTile(
                leading: Container(
                  width: 23,
                  height: 23,
                  color: groceryItems[index].category.color,
                ),
                trailing: Text(groceryItems[index].quantity.toString()),
                title: Text(
                  groceryItems[index].name,
                ))));
  }
}

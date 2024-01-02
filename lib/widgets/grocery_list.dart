import 'package:flutter/material.dart';
import 'package:shoppinglist_app/data/dummy_item.dart';
import 'package:shoppinglist_app/models/grocery_item.dart';
import 'package:shoppinglist_app/widgets/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  final List<GroceryItem> _groceryItems = [];
  void _addItem() async {
    final newItem = await Navigator.of(context).push<GroceryItem>(
        MaterialPageRoute(builder: (ctx) => const NewItem()));
    if (newItem == null) {
      return;
    }
    setState(() {
      _groceryItems.add(newItem);
    });
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
            itemCount: _groceryItems.length,
            itemBuilder: (context, index) => ListTile(
                leading: Container(
                  width: 23,
                  height: 23,
                  color: _groceryItems[index].category.color,
                ),
                trailing: Text(_groceryItems[index].quantity.toString()),
                title: Text(
                  groceryItems[index].name,
                ))));
  }
}

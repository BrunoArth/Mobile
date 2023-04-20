import 'package:flutter/material.dart';
import 'package:flutter_start/ShoppingListItem/product.dart';
import 'package:flutter_start/ShoppingListItem/shopping_list_item.dart';
import 'package:flutter_start/ShoppingListItem/shopping_list_item_full.dart';
import 'package:flutter_start/tutorial_home.dart';

class MyAppBar extends StatelessWidget {
// ignore: use_key_in_widget_constructors
  const MyAppBar({required this.title, Key? key});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child
          // to fill the available space.
          Expanded(
            child: title,
          ),
          IconButton(
            icon: const Icon(Icons.help),
            tooltip: 'Tutorial',
            onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TutorialHome()))
            },
          ),
          IconButton(
            icon: const Icon(Icons.store),
            tooltip: 'ShoppingListItem',
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Scaffold(
                            body: Center(
                                child: ShoppingListItem(
                                    product: const Product(name: 'Chips'),
                                    inCart: false,
                                    onCartChanged: (product, inCart) {})),
                          )))
            },
          ),
          IconButton(
            icon: const Icon(Icons.store_outlined),
            tooltip: 'ShoppingListItem',
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MaterialApp(
                            title: 'ShoppingList',
                            home: ShoppingList(products: [
                              ProductFull(name: 'Eggs'),
                              ProductFull(name: 'Milk'),
                              ProductFull(name: 'Chocolate')
                            ]),
                          )))
            },
          ),
        ],
      ),
    );
  }
}

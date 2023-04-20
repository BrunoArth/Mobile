import 'package:flutter/material.dart';
import 'package:flutter_start/ShoppingListItem/cart_changed_callback.dart';
import 'package:flutter_start/ShoppingListItem/product.dart';

class ShoppingListItem extends StatelessWidget {
  const ShoppingListItem(
      {required this.product,
      required this.inCart,
      required this.onCartChanged,
      Key? key})
      : super(key: key);

  final Product product;
  final bool inCart;
  final CaretChangedCallback onCartChanged;

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle? _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return const TextStyle(
        color: Colors.black54, decoration: TextDecoration.lineThrough);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Stateless')),
        body: Center(
          child: ListTile(
            onTap: () {
              onCartChanged(product, inCart);
            },
            leading: CircleAvatar(
              backgroundColor: _getColor(context),
              child: Text(product.name[0]),
            ),
            title: Text(
              product.name,
              style: _getTextStyle(context),
            ),
          ),
        ));
  }
}

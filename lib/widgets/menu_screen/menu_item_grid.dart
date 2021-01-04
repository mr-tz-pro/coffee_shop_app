import 'package:flutter/material.dart';

class MenuItemsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        'src',
        fit: BoxFit.cover,
      ),
    );
  }
}

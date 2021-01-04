import 'package:coffee_shop_app/models/menu_items.dart';
import 'package:flutter/material.dart';

List<MenuItems> _menuItems = MenuItems(
  id: 1,
  name: 'name',
  url: 'url',
  description: 'description',
) as List<MenuItems>;

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: _width * 0.12,
            ),
            Text('data')
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Menu',
          style: TextStyle(color: Colors.black.withOpacity(0.7)),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: MenuBody(),
    );
  }
}

class MenuBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // child: ListView.builder(
        // itemBuilder: (BuildContext context, int index) {},
        //     ),
        );
  }
}

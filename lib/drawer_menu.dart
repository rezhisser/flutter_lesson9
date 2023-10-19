import 'package:flutter/material.dart';

import 'category_page.dart';
import 'main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Home'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ArtworkGrid()));
                  },
                ),
                ...categories.map((Category category) => ListTile(
                  title: Text(category.name),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage(category: category)));
                  },
                )).toList(),
              ],
            ),
          ),
          Container(  // Контейнер для інформації, яка завжди буде в нижній частині Drawer.
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About Gallery',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  'This gallery app allows you to explore different sections of artworks and learn more about them.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  'Contact Us:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Email: [email protected]',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Phone: +123 456 7890',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

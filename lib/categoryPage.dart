import 'package:flutter/material.dart';
import 'package:lesson9/drawerMenu.dart';
import 'package:lesson9/artworkDetailPage.dart';
import 'package:provider/provider.dart';

import 'TitleModel.dart';
import 'artWork.dart';
import 'infoFAB.dart';


class Category {
  final int id;
  final String name;

  Category({
    required this.id,
    required this.name,
  });
}

List<Category> categories = [
  Category(id: 1, name: 'Motobike'),
  Category(id: 2, name: 'Music'),
  Category(id: 3, name: 'Nature'),
];

class CategoryPage extends StatelessWidget {
  final Category category;
  CategoryPage({required this.category});

  @override
  Widget build(BuildContext context) {
    var titleModel = Provider.of<TitleModel>(context);
    titleModel.setTitle(category.name);

    // Фільтрація елементів згідно з категорією
    final filteredArtworks = artworks.where((artwork) => artwork.categoryId == category.id).toList();
    int crossAxisCount = MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3;

    return Scaffold(
      appBar: AppBar(title: Text(titleModel.title)),
      drawer: DrawerMenu(),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, index) {
                final artwork = filteredArtworks[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArtworkDetailPage(artwork: artwork),
                      ),
                    );
                  },
                  child: Image.network(
                    artwork.imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
              childCount: filteredArtworks.length,
            ),
          ),
        ],
      ),
      floatingActionButton: InfoFAB(),
    );
  }
}

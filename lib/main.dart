import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'InfoFAB.dart';
import 'artWork.dart';
import 'artworkDetailPage.dart';
import 'drawerMenu.dart';
import 'TitleModel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TitleModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ArtworkGrid(),
    );
  }
}

class ArtworkGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var titleModel = Provider.of<TitleModel>(context);
    titleModel.setTitle('Artworks');

    // Визначення кількості стовпців в залежності від орієнтації
    int crossAxisCount = MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3;

    return Scaffold(
      appBar: AppBar(
        title: Text(titleModel.title),
      ),
      drawer: DrawerMenu(),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArtworkDetailPage(artwork: artworks[index]),
                      ),
                    );
                  },
                  child: GridTile(
                    child: Image.network(
                      artworks[index].imageUrl,
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        } else {
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                                  : null,
                            ),
                          );
                        }
                      },
                    ),
                  ),
                );
              },
              childCount: artworks.length,
            ),
          ),
        ],
      ),
      floatingActionButton: InfoFAB(),
    );
  }
}

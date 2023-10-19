import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'title_model.dart';

class InfoFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = Provider.of<TitleModel>(context).title;

    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Info'),
            content: Text('Current section: $title'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Close'),
              ),
            ],
          ),
        );
      },
      child: Icon(Icons.info),
    );
  }
}

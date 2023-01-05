import 'package:flutter/material.dart';
import 'package:hero/data/images_data.dart';
import 'package:hero/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Galería de imágenes'),
          backgroundColor: Colors.black,
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 150,
          padding: const EdgeInsets.all(4),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: _imagesList(context),
        ));
  }

  List<Widget> _imagesList(BuildContext context) {
    List<Widget> imagesWidgetsList = [];

    for (var image in images) {
      imagesWidgetsList.add(GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondPage(image: image)));
        },
        child: Hero(tag: image, child: Image.network(image, fit: BoxFit.cover)),
      ));
    }

    return imagesWidgetsList;
  }
}

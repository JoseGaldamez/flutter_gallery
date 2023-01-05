import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String image;
  const SecondPage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
              ],
            ),
            Hero(tag: image, child: Image.network(image)),
            const Divider(),
          ],
        )),
      ),
    );
  }
}

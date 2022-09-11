import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FeedItem extends StatelessWidget {
  const FeedItem({Key? key, required this.imageURL, this.caption})
      : super(key: key);
  final String imageURL;
  final String? caption;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Card(
          child: Container(
              child: Column(
        children: [
          Container(
            width: screenWidth / 3,
            height: screenHeight / 2,
            child: Image.network(
              imageURL,
              fit: BoxFit.fill,
            ),
          ),
          caption == null
              ? Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
              : Text(caption!)
        ],
      ))),
    );
  }
}

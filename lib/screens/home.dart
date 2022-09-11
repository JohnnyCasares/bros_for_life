import 'package:bros_for_life/constants/constants.dart';
import 'package:bros_for_life/models/feed_item.dart';
import 'package:bros_for_life/models/text_field_custom.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeFeed extends StatefulWidget {
  const HomeFeed({Key? key}) : super(key: key);

  @override
  State<HomeFeed> createState() => _HomeFeedState();
}

class _HomeFeedState extends State<HomeFeed> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(children: [
      ListView.builder(
          itemCount: feedMockData.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(child: feedMockData[index]);
          }),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              backgroundColor: Constants.primaryColor,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text('Post a motivational message'),
                    content: Container(
                      width: screenWidth > screenHeight
                          ? screenWidth
                          : screenWidth - 100,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            DottedBorder(
                                child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add),
                                  Text('Choose an image')
                                ],
                              ),
                              width: screenWidth,
                              height: screenHeight,
                            )),
                            TextFieldCustom(
                              hint: 'Enter a motivational message or quote',
                              maxLength: 300,
                              contentPadding: true,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            )),
      )
    ]);
  }
}

List feedMockData = [
  FeedItem(
    imageURL:
        'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
  ),
  FeedItem(
    imageURL:
        'https://i.kym-cdn.com/editorials/icons/mobile/000/004/752/backup_(1).jpg',
    caption:
        'THE ONE PIECE!!! THE ONE PIECE IS REAL!!! ("can we get much higher") - White Beard',
  ),
  FeedItem(
    imageURL:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-vJFeA8fky8w_YDjVBv-UEJTEVC9-Xzw-KA&usqp=CAU',
  ),
  FeedItem(
    imageURL:
        'https://images.unsplash.com/photo-1520371764250-8213f40bc3ed?ixlib=rb-1.2.1&w=1080&fit=max&q=80&fm=jpg&crop=entropy&cs=tinysrgb',
  ),
  FeedItem(
    imageURL:
        'https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2022-05/220510-kevin-samuels-mjf-1239-fe65f1.jpg',
  ),
  FeedItem(
    imageURL:
        'data:image/jpeg;base64,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',
  ),
];

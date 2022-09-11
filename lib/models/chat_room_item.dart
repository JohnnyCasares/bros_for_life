import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatRoomItem extends StatefulWidget {
  const ChatRoomItem({Key? key}) : super(key: key);

  @override
  State<ChatRoomItem> createState() => _ChatRoomItemState();
}

class _ChatRoomItemState extends State<ChatRoomItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 300,
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

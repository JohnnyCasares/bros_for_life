import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFieldCustom extends StatefulWidget {
  const TextFieldCustom(
      {Key? key, required this.hint, this.maxLength, this.contentPadding})
      : super(key: key);
  final String hint;
  final int? maxLength;
  final bool? contentPadding;

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5),
      child: TextFormField(
        maxLength: widget.maxLength != null ? widget.maxLength : null,
        decoration: InputDecoration(
          label: Text(widget.hint),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          contentPadding: widget.contentPadding != null
              ? EdgeInsets.symmetric(vertical: 40.0)
              : null,
        ),
      ),
    );
  }
}

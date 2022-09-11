import 'package:bros_for_life/constants/constants.dart';
import 'package:bros_for_life/models/text_field_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Constants.primaryColor,
      ),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.handshake_outlined,
                  size: 200,
                ),
                TextFieldCustom(hint: 'Enter your user name'),
                TextFieldCustom(hint: 'Enter your password'),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("login"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Constants.secondaryColor)),
                )
              ],
            ),
          )),
    );
  }
}

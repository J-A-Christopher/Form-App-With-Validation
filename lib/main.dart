import 'package:flutter/material.dart';
import './myCustomForm.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Create an Account',
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Create an Account',
            ),
            centerTitle: true,
          ),
          // ignore: prefer_const_constructors
          body: MyCustomForm(),
        ));
  }
}

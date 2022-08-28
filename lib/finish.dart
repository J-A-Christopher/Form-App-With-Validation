import 'package:flutter/material.dart';

class Finisher extends StatelessWidget {
  const Finisher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        home: Center(
          child: Text(
            'Thankyou For Creating An Account With Us',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                decoration: TextDecoration.none),
          ),
        ));
  }
}

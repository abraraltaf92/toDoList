import 'package:flutter/material.dart';
import 'package:to_do_list/screens/authenticate/register.dart';
import 'package:to_do_list/screens/authenticate/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}

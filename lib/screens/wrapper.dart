import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/user.dart';
import 'package:to_do_list/screens/authenticate/authenticate.dart';
import 'package:to_do_list/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<TheUser>(context);
    print(user);
    // return H ome or Authenticate
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}

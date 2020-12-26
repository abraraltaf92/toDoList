import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/demo.dart';
import 'package:to_do_list/models/user.dart';
import 'package:to_do_list/screens/authenticate/register.dart';
import 'package:to_do_list/screens/authenticate/sign_in.dart';
import 'package:sizer/sizer.dart';
import 'package:to_do_list/screens/wrapper.dart';
import 'package:to_do_list/services/auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //return LayoutBuilder
      builder: (context, constraints) {
        return OrientationBuilder(
          //return OrientationBuilder
          builder: (context, orientation) {
            //initialize SizerUtil()
            SizerUtil().init(constraints, orientation); //initialize SizerUtil
            return StreamProvider<TheUser>.value(
              value: AuthService().user,
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Wrapper(),
              ),
            );
          },
        );
      },
    );
  }
}

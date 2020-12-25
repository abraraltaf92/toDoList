// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class Demo extends StatefulWidget {
//   @override
//   _DemoState createState() => _DemoState();
// }

// class _DemoState extends State<Demo> {
//   bool _isLoggedIn = false;

//   GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

//   _login() async {
//     try {
//       await _googleSignIn.signIn();
//       setState(() {
//         _isLoggedIn = true;
//       });
//     } catch (err) {
//       print(err);
//     }
//   }

//   _logout() {
//     _googleSignIn.signOut();
//     setState(() {
//       _isLoggedIn = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//             child: _isLoggedIn
//                 ? Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Image.network(
//                         _googleSignIn.currentUser.photoUrl,
//                         height: 50.0,
//                         width: 50.0,
//                       ),
//                       Text(_googleSignIn.currentUser.displayName),
//                       OutlineButton(
//                         child: Text("Logout"),
//                         onPressed: () {
//                           _logout();
//                         },
//                       )
//                     ],
//                   )
//                 : Center(
//                     child: OutlineButton(
//                       child: Text("Login with Google"),
//                       onPressed: () {
//                         _login();
//                       },
//                     ),
//                   )),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'sizer';

// class Demo extends StatefulWidget {
//   @override
//   _DemoState createState() => _DemoState();
// }

// class _DemoState extends State<Demo> {
//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(
// return SizerUtil.orientation == Orientation.portrait
//         ? Container(
//             width: 100.0.w,
//             height: 20.0.h,
//           )                     //for portrait screen
//         : Container(
//             width: 100.0.w,
//             height: 12.0.h,
//           );             ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("lib/assets/to_do_list.png"),
//             fit: BoxFit.fill,
//           ),
//         ),
//         child: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 alignment: Alignment.center,
//                 child: Text(
//                   'toDoList',
//                   style: TextStyle(
//                     fontFamily: 'CookieRegular',
//                     fontSize: 40.0,
//                     color: Color(0xFF0e0e96),
//                     fontWeight: FontWeight.bold,
//                     letterSpacing: 0.5,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 100,
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 alignment: Alignment.center,
//                 child: Text('toDoList'),
//               ),
//             ),
//             SizedBox(
//               height: 100,
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 alignment: Alignment.center,
//                 child: Text('toDoList'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Demo extends StatelessWidget {
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
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Sizer',
              theme: ThemeData.light(),
            );
          },
        );
      },
    );
  }
}

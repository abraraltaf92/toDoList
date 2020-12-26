// // import 'package:flutter/material.dart';
// // import 'package:google_sign_in/google_sign_in.dart';

// // class Demo extends StatefulWidget {
// //   @override
// //   _DemoState createState() => _DemoState();
// // }

// // class _DemoState extends State<Demo> {
// //   bool _isLoggedIn = false;

// //   GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

// //   _login() async {
// //     try {
// //       await _googleSignIn.signIn();
// //       setState(() {
// //         _isLoggedIn = true;
// //       });
// //     } catch (err) {
// //       print(err);
// //     }
// //   }

// //   _logout() {
// //     _googleSignIn.signOut();
// //     setState(() {
// //       _isLoggedIn = false;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         body: Center(
// //             child: _isLoggedIn
// //                 ? Column(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: <Widget>[
// //                       Image.network(
// //                         _googleSignIn.currentUser.photoUrl,
// //                         height: 50.0,
// //                         width: 50.0,
// //                       ),
// //                       Text(_googleSignIn.currentUser.displayName),
// //                       OutlineButton(
// //                         child: Text("Logout"),
// //                         onPressed: () {
// //                           _logout();
// //                         },
// //                       )
// //                     ],
// //                   )
// //                 : Center(
// //                     child: OutlineButton(
// //                       child: Text("Login with Google"),
// //                       onPressed: () {
// //                         _login();
// //                       },
// //                     ),
// //                   )),
// //       ),
// //     );
// //   }
// // }
// // import 'package:flutter/material.dart';
// // import 'sizer';

// // class Demo extends StatefulWidget {
// //   @override
// //   _DemoState createState() => _DemoState();
// // }

// // class _DemoState extends State<Demo> {
// //   @override
// //   Widget build(BuildContext context) {

// //     return Scaffold(
// //       appBar: AppBar(
// // return SizerUtil.orientation == Orientation.portrait
// //         ? Container(
// //             width: 100.0.w,
// //             height: 20.0.h,
// //           )                     //for portrait screen
// //         : Container(
// //             width: 100.0.w,
// //             height: 12.0.h,
// //           );             ),
// //       body: Container(
// //         decoration: BoxDecoration(
// //           image: DecorationImage(
// //             image: AssetImage("lib/assets/to_do_list.png"),
// //             fit: BoxFit.fill,
// //           ),
// //         ),
// //         child: Column(
// //           children: [
// //             Expanded(
// //               child: Container(
// //                 alignment: Alignment.center,
// //                 child: Text(
// //                   'toDoList',
// //                   style: TextStyle(
// //                     fontFamily: 'CookieRegular',
// //                     fontSize: 40.0,
// //                     color: Color(0xFF0e0e96),
// //                     fontWeight: FontWeight.bold,
// //                     letterSpacing: 0.5,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             SizedBox(
// //               height: 100,
// //             ),
// //             Expanded(
// //               flex: 1,
// //               child: Container(
// //                 alignment: Alignment.center,
// //                 child: Text('toDoList'),
// //               ),
// //             ),
// //             SizedBox(
// //               height: 100,
// //             ),
// //             Expanded(
// //               flex: 1,
// //               child: Container(
// //                 alignment: Alignment.center,
// //                 child: Text('toDoList'),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:sizer/sizer.dart';

// // class Demo extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return LayoutBuilder(
// //       //return LayoutBuilder
// //       builder: (context, constraints) {
// //         return OrientationBuilder(
// //           //return OrientationBuilder
// //           builder: (context, orientation) {
// //             //initialize SizerUtil()
// //             SizerUtil().init(constraints, orientation); //initialize SizerUtil
// //             return MaterialApp(
// //               debugShowCheckedModeBanner: false,
// //               title: 'Sizer',
// //               theme: ThemeData.light(),
// //             );
// //           },
// //         );
// //       },
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// class Demo extends StatefulWidget {
//   @override
//   _DemoState createState() => _DemoState();
// }

// class _DemoState extends State<Demo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: <Widget>[
//             Positioned.fill(
//               top: 0.0,
//               child: Image.asset(
//                 'lib/assets/to_do_list.png',
//                 fit: BoxFit.fitWidth,
//               ),
//             ),
//             Center(
//               child: ListView(
//                 physics: PageScrollPhysics(),
//                 children: <Widget>[
//                   //Register Content

//                   SizedBox(
//                     height: 108,
//                   ),
//                   tit,

//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// final tit = Center(
//     child: Text(
//   "toDoList",
//   style: TextStyle(
//     fontFamily: 'CookieRegular',
//     fontSize: 60,
//     color: Color(0xFF0e0e96),
//     fontWeight: FontWeight.bold,
//     letterSpacing: 2,
//   ),
// ));

// final button1 = RaisedButton(
//                             onPressed: () async {
//                               if (_formKey.currentState.validate()) {
//                                 dynamic userCredential =
//                                     await _auth.registerWithEmailAndPassword(
//                                         email, password);
//                                 if (userCredential == null) {
//                                   setState(() {
//                                     error = 'Please supply a valid email';
//                                   });
//                                 }
//                               }
//                             },
//                             // color: Color(0xFF538798),
//                             color: Color(0xFF538798),
//                             splashColor: Color(0xFF0e0e96),

//                             child: Text(
//                               "Create My Account",
//                               style: TextStyle(
//                                   color: Color(0xFFB7AD63),
//                                   fontSize: 25,
//                                   fontFamily: 'JetBrains',
//                                   fontWeight: FontWeight.bold),
//                             ),

//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(,
//                             ),
//                           );

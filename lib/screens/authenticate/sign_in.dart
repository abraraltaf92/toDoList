import 'package:flutter/material.dart';
import 'package:to_do_list/services/auth.dart';
import 'package:to_do_list/shared/text_decoration.dart';
import 'package:sizer/sizer.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "toDoList",
          style: TextStyle(
            fontFamily: 'CookieRegular',
            fontSize: 60,
            color: Color(0xFF0e0e96),
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo[400],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => widget.toggleView(),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            top: -25,
            child: Image.asset(
              'lib/assets/to_do_list.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Center(
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 85,
                ),
                Container(
                  height: 250,
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: textInputDecoration.copyWith(
                              hintText: 'Enter Your Email',
                              labelText: "Email",
                            ),
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFFB7AD63)),
                            validator: (val) =>
                                val.isEmpty ? 'Enter Your email' : null,
                            onChanged: (val) {
                              setState(() {
                                return email = val;
                              });
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: textInputDecoration.copyWith(
                                hintText: 'Enter Your Password',
                                labelText: 'Password'),
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFFB7AD63)),
                            validator: (val) => val.length < 6
                                ? 'Enter a password 6+ chars'
                                : null,
                            obscureText: true,
                            onChanged: (val) {
                              setState(() {
                                return password = val;
                              });
                            },
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: RaisedButton(
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        dynamic userCredential = await _auth
                            .signInWithEmailAndPassword(email, password);
                        if (userCredential == null) {
                          setState(() {
                            error = "Could not sign with those credential";
                          });
                        }
                      }
                    },
                    // color: Color(0xFF538798),
                    color: Color(0xFF538798),
                    splashColor: Color(0xFF0e0e96),
                    padding: EdgeInsets.symmetric(horizontal: 20.37.w),

                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Color(0xFFB7AD63),
                          fontSize: 20.0.sp,
                          fontFamily: 'JetBrains',
                          fontWeight: FontWeight.bold),
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.09.w),
                    ),
                  ),
                ),
                SizedBox(height: 2.4.h),
                Text(error,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14.0,
                    )),
                SizedBox(
                  height: 1.05.h,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 12.8.sp,
                      color: Color(0xFFB7AD63),
                    ),
                  ),
                  // disabledColor: Colors.transparent,
                  color: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(
//               "lib/assets/to_do_list.png",
//             ),
//             fit: BoxFit.cover,
//           ),
//         ),
//         alignment: Alignment.center,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 16.2.h,
//             ),
//             Text(
//               "toDoList",
//               style: TextStyle(
//                 fontFamily: 'CookieRegular',
//                 fontSize: 48.0.sp,
//                 color: Color(0xFF0e0e96),
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 0.2.sp,
//               ),
//             ),
//             SizedBox(
//               height: 8.82.h,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 12.7.w),
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       decoration:
//                           textInputDecoration.copyWith(hintText: 'Email'),
//                       style: TextStyle(
//                           fontSize: 16.0.sp, color: Color(0xFFB7AD63)),
//                       validator: (val) =>
//                           val.isEmpty ? 'Enter Your email' : null,
//                       onChanged: (val) {
//                         setState(() {
//                           return email = val;
//                         });
//                       },
//                     ),
//                     SizedBox(
//                       height: 5.268.h,
//                     ),
//                     TextFormField(
//                       decoration: textInputDecoration.copyWith(
//                         hintText: 'Password',
//                       ),
//                       style: TextStyle(
//                           fontSize: 16.0.sp, color: Color(0xFFB7AD63)),
//                       validator: (val) =>
//                           val.length < 6 ? 'Enter a password 6+ chars' : null,
//                       obscureText: true,
//                       onChanged: (val) {
//                         setState(() {
//                           return password = val;
//                         });
//                       },
//                     ),
//                     SizedBox(
//                       height: 9.21.h,
//                     ),
// RaisedButton(
//   onPressed: () async {
//     if (_formKey.currentState.validate()) {
//       dynamic userCredential = await _auth
//           .signInWithEmailAndPassword(email, password);
//       if (userCredential == null) {
//         setState(() {
//           error = "Could not sign with those credential";
//         });
//       }
//     }
//   },
//   // color: Color(0xFF538798),
//   color: Color(0xFF538798),
//   splashColor: Color(0xFF0e0e96),
//   padding: EdgeInsets.symmetric(horizontal: 20.37.w),

//   child: Text(
//     "Log In",
//     style: TextStyle(
//         color: Color(0xFFB7AD63),
//         fontSize: 20.0.sp,
//         fontFamily: 'JetBrains',
//         fontWeight: FontWeight.bold),
//   ),

//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(5.09.w),
//   ),
// ),
//                     SizedBox(height: 2.4.h),
//                     Text(error,
//                         style: TextStyle(
//                           color: Colors.red,
//                           fontSize: 14.0,
//                         )),
//                     SizedBox(
//                       height: 1.05.h,
//                     ),
//                     FlatButton(
//                       onPressed: () {},
//                       child: Text(
//                         'Forgot Password?',
//                         style: TextStyle(
//                           fontSize: 12.8.sp,
//                           color: Color(0xFFB7AD63),
//                         ),
//                       ),
//                       // disabledColor: Colors.transparent,
//                       color: Colors.transparent,
//                       splashColor: Colors.transparent,
//                       highlightColor: Colors.transparent,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),

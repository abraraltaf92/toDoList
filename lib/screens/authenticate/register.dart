import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:to_do_list/shared/text_decoration.dart';
import 'package:sizer/sizer.dart';
import 'package:to_do_list/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final GoogleSignIn _googlgeService = GoogleSignIn();
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String password = '';
  String error = '';
  User user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            "toDoList",
            style: TextStyle(
              fontFamily: 'CookieRegular',
              fontSize: 60,
              color: Color(0xFF0e0e96),
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo[400],
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
                  height: 0,
                ),
                Container(
                  height: 304,
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: textInputDecoration.copyWith(
                              hintText: 'Enter Your Name',
                              labelText: 'Name',
                            ),
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFFB7AD63)),
                            validator: (val) =>
                                val.isEmpty ? 'Enter Your Name' : null,
                            onChanged: (val) {
                              setState(() {
                                return name = val;
                              });
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: textInputDecoration.copyWith(
                              hintText: 'Enter Your Email',
                              labelText: "Email",
                            ),
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFFB7AD63)),
                            validator: (val) =>
                                val.isEmpty ? 'Enter Your Email' : null,
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

                          // RaisedButton(
                          //   onPressed: () {
                          //     widget.toggleView();
                          //   },
                          //   // color: Color(0xFFB7AD63),
                          //   color: Color(0xFFB7AD63),
                          //   padding: EdgeInsets.symmetric(
                          //     horizontal: 40,
                          //   ),
                          //   child: Text(
                          //     "I'm Already A User",
                          //     textAlign: TextAlign.center,
                          //     style: TextStyle(
                          //         color: Colors.white,
                          //         fontSize: 20,
                          //         fontFamily: 'JetBrains',
                          //         fontWeight: FontWeight.bold),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: RaisedButton(
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        dynamic userCredential = await _auth
                            .registerWithEmailAndPassword(email, password);
                        if (userCredential == null) {
                          setState(() {
                            error = 'Please supply a valid email';
                          });
                        }
                      }
                    },
                    // color: Color(0xFF538798),
                    color: Color(0xFF538798),
                    splashColor: Color(0xFF0e0e96),

                    child: Text(
                      "Create My Account",
                      style: TextStyle(
                          color: Color(0xFFB7AD63),
                          fontSize: 25,
                          fontFamily: 'JetBrains',
                          fontWeight: FontWeight.bold),
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.63.w),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Or Login With",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFB7AD63),
                    // decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Transform.scale(
                      scale: 2.1,
                      child: IconButton(
                          icon: Image.asset('lib/assets/fb_icon.png'),
                          onPressed: null),
                    ),
                    Transform.scale(
                      scale: 2.5,
                      child: IconButton(
                          icon: Image.asset('lib/assets/google_icon.png'),
                          onPressed: () async {
                            dynamic user = await _auth.signInWithGoogle();
                            print(user.uid);
                          }),
                    ),
                    Transform.scale(
                      scale: 2.1,
                      child: IconButton(
                          icon: Image.asset('lib/assets/twitter_icon.png'),
                          onPressed: null),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: RaisedButton(
                    onPressed: () {
                      widget.toggleView();
                    },
                    // color: Color(0xFFB7AD63),
                    color: Color(0xFFB7AD63),
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    child: Text(
                      "I'm Already A User",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'JetBrains',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

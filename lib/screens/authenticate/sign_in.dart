import 'package:flutter/material.dart';
import 'package:to_do_list/shared/text_decoration.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("toDoList"),
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      // ),
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "lib/assets/to_do_list.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 130,
              ),
              Text(
                "toDoList",
                style: TextStyle(
                  fontFamily: 'CookieRegular',
                  fontSize: 60.0,
                  color: Color(0xFF0e0e96),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              SizedBox(
                height: 67,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration:
                            textInputDecoration.copyWith(hintText: 'Email'),
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFFB7AD63)),
                        validator: (val) =>
                            val.isEmpty ? 'Enter Your email' : null,
                        onChanged: (val) {
                          setState(() {
                            return email = val;
                          });
                        },
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        decoration: textInputDecoration.copyWith(
                          hintText: 'Password',
                        ),
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFFB7AD63)),
                        validator: (val) =>
                            val.length < 6 ? 'Enter a password 6+ chars' : null,
                        onChanged: (val) {
                          setState(() {
                            return pass = val;
                          });
                        },
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      RaisedButton(
                        onPressed: () {
                          print("hello");
                        },
                        // color: Color(0xFF538798),
                        color: Color(0xFF538798),
                        splashColor: Color(0xFF0e0e96),
                        padding: EdgeInsets.symmetric(horizontal: 80),

                        child: Text(
                          "Log In",
                          style: TextStyle(
                              color: Color(0xFFB7AD63),
                              fontSize: 25,
                              fontFamily: 'JetBrains',
                              fontWeight: FontWeight.bold),
                        ),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 16.0,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

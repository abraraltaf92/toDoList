import 'package:flutter/material.dart';
import 'package:to_do_list/shared/text_decoration.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
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
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/to_do_list.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
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
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 53),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: textInputDecoration.copyWith(
                          hintText: 'Your Name',
                        ),
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFFB7AD63)),
                        validator: (val) =>
                            val.isEmpty ? 'Enter Your Name' : null,
                        onChanged: (val) {
                          setState(() {
                            return name = val;
                          });
                        },
                      ),
                      SizedBox(
                        height: 40,
                      ),
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
                        height: 50,
                      ),
                      RaisedButton(
                        onPressed: () {
                          print("hello");
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
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Or Login With",
                        style: TextStyle(
                          fontSize: 16.0,
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
                                onPressed: null),
                          ),
                          Transform.scale(
                            scale: 2.1,
                            child: IconButton(
                                icon:
                                    Image.asset('lib/assets/twitter_icon.png'),
                                onPressed: null),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              RaisedButton(
                  onPressed: () {},
                  // color: Color(0xFFB7AD63),
                  color: Color(0xFFB7AD63),
                  padding: EdgeInsets.symmetric(horizontal: 79, vertical: 22),
                  child: Text(
                    "I'm Already A User",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'JetBrains',
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

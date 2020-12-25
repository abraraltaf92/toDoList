import 'package:flutter/material.dart';
import 'package:to_do_list/shared/text_decoration.dart';
import 'package:sizer/sizer.dart';

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
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(top: 3.180.h), //6.33.h
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
                  height: 16.2.h,
                ),
                Text(
                  "toDoList",
                  style: TextStyle(
                    fontFamily: 'CookieRegular',
                    fontSize: 44.0.sp,
                    color: Color(0xFF0e0e96),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2.sp,
                  ),
                ),
                SizedBox(
                  height: 6.82.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.7.w),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: textInputDecoration.copyWith(
                            hintText: 'Your Name',
                          ),
                          style: TextStyle(
                              fontSize: 11.0.sp, color: Color(0xFFB7AD63)),
                          validator: (val) =>
                              val.isEmpty ? 'Enter Your Name' : null,
                          onChanged: (val) {
                            setState(() {
                              return name = val;
                            });
                          },
                        ),
                        SizedBox(
                          height: 3.0.h,
                        ),
                        TextFormField(
                          decoration:
                              textInputDecoration.copyWith(hintText: 'Email'),
                          style: TextStyle(
                              fontSize: 11.0.sp, color: Color(0xFFB7AD63)),
                          validator: (val) =>
                              val.isEmpty ? 'Enter Your email' : null,
                          onChanged: (val) {
                            setState(() {
                              return email = val;
                            });
                          },
                        ),
                        SizedBox(
                          height: 3.0.h,
                        ),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(
                            hintText: 'Password',
                          ),
                          style: TextStyle(
                              fontSize: 11.0.sp, color: Color(0xFFB7AD63)),
                          validator: (val) => val.length < 6
                              ? 'Enter a password 6+ chars'
                              : null,
                          obscureText: true,
                          onChanged: (val) {
                            setState(() {
                              return pass = val;
                            });
                          },
                        ),
                        SizedBox(
                          height: 5.58.h,
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
                                fontSize: 16.0.sp,
                                fontFamily: 'JetBrains',
                                fontWeight: FontWeight.bold),
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.63.w),
                          ),
                        ),
                        SizedBox(
                          height: 3.16.h,
                        ),
                        Text(
                          "Or Login With",
                          style: TextStyle(
                            fontSize: 10.24.sp,
                            color: Color(0xFFB7AD63),
                            // decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(
                          height: 3.292.h,
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
                                  icon:
                                      Image.asset('lib/assets/google_icon.png'),
                                  onPressed: null),
                            ),
                            Transform.scale(
                              scale: 2.1,
                              child: IconButton(
                                  icon: Image.asset(
                                      'lib/assets/twitter_icon.png'),
                                  onPressed: null),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.95.h,
                        ),
                      ],
                    ),
                  ),
                ),
                RaisedButton(
                    onPressed: () {},
                    // color: Color(0xFFB7AD63),
                    color: Color(0xFFB7AD63),
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.73.w, vertical: 2.8974.h),
                    child: Text(
                      "I'm Already A User",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0.sp,
                          fontFamily: 'JetBrains',
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

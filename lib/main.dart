import 'package:flutter/material.dart';
import 'package:user_login/SignupPage.dart';

import 'PreSignUpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpPage()
      // const PreSignupPage(title: 'User Login/Signup'),
    );
  }
}


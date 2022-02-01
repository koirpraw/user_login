

import 'package:flutter/material.dart';
import 'package:user_login/PreSignUpPage.dart';
import 'package:user_login/Utils/appTheme.dart';
import 'package:user_login/loginform.dart';



class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kBackgroundColor,

      body: Stack(

        children: [

          Positioned(
              bottom: MediaQuery.of(context).size.height*0.2,
              right: 55,
              child: MaterialButton(
                minWidth: 260,height: 60,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  color: AppTheme.kPrimaryColor,
                  elevation: 12,
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PreSignupPage(title: 'User Login & Signup')));
                  }
              )



          ),],

      ),
    );
  }
}

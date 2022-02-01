

import 'package:flutter/material.dart';
import 'package:user_login/loginPage.dart';
import 'package:user_login/loginform.dart';

import 'Utils/appTheme.dart';




class PreSignupPage extends StatefulWidget {
  const PreSignupPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<PreSignupPage> createState() => _PreSignupPageState();
}

class _PreSignupPageState extends State<PreSignupPage> {

  void gotoNextPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginForm()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6FF),

      body: Stack(

        children: [
          Positioned(
            bottom: MediaQuery.of(context).size.height*0.3,
              right: 55,
              child: MaterialButton(
                  minWidth: 260,height: 60,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  color: Colors.white,
                  elevation: 6,
                  child: Text('Sign Up',style: AppTheme.kButtonTextDark,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PreSignupPage(title: 'User Login & Signup')));
                  }

              ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height*0.2,
            right: 55,
            child: MaterialButton(
                minWidth: 260,height: 60,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                color: AppTheme.kPrimaryColor,
                elevation: 6,
                child: Text('Log In',style: AppTheme.kButtonTextLight),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginForm()));
                }

            ),
          ),
          Positioned(
              bottom: MediaQuery.of(context).size.height*0.5,
              right: 100,
              child: Container(
                height: 200,width: 200,
                child: Image.asset('assets/logoHelapy_noBG_1.png'),
              )
          )

        ],

      ),
    );
  }
}

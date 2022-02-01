import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_login/Utils/appTheme.dart';

import 'HomePage.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kBackgroundColor,
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(48.0),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24,0,24,0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        'Welcome Back,',
                        style: TextStyle(color: AppTheme.kHighEmphasisColor,fontSize: 24,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // User Name Field Container
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'UserName',
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  filled: true,
                                  prefixIcon: Icon(Icons.mail_outline_rounded)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // User Name Field Container
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  filled: true,
                                  prefixIcon: Icon(Icons.lock_outline_rounded)),
                            ),
                          ),

                        ],

                      ),

                      //Forgot Password Text
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Text('Forgot Password ?',style: TextStyle(color: AppTheme.kMediumEmphasisColor),)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          MaterialButton(
                              minWidth: 260,height: 60,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                              color: AppTheme.kPrimaryColor,
                              elevation: 6,
                              child: Text('LogIn',style: AppTheme.kButtonTextLight,),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              }

                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Dont Have an account yet ?',style: TextStyle(color: AppTheme.kMediumEmphasisColor),),
                          TextButton(onPressed: (){}, child: Text('SignUp',style: TextStyle(color: AppTheme.kPrimaryColor),))
                        ],
                      ),

                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_login/Utils/appTheme.dart';


import 'Components/PrimaryButton.dart';
import 'Components/SocialLoginButtonWidget.dart';
import 'HomePage.dart';
import 'package:lottie/lottie.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController confirmPasswordFieldController;
  late bool confirmPasswordFieldVisibility;
  late TextEditingController emailFieldController;
  late TextEditingController textFieldpasswordFieldController;
  late bool textFieldpasswordFieldVisibility;
  late TextEditingController fullNameTextFieldController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    confirmPasswordFieldController = TextEditingController();
    confirmPasswordFieldVisibility = false;
    emailFieldController = TextEditingController();
    textFieldpasswordFieldController = TextEditingController();
    textFieldpasswordFieldVisibility = false;
    fullNameTextFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppTheme.kBackgroundColor,
      body: GestureDetector(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Container with Lottie animation
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.network(
                        'https://assets7.lottiefiles.com/packages/lf20_vux5pkbl.json',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    ],
                  )
                ],
              ),
            ),
            //---This is the container with full Sign-up form
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(48),
                  topRight: Radius.circular(48),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(36, 0, 36, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Spacer(),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('SIGN UP')],
                    ),
                    Spacer(),
                    //--- This is the row of social login buttons---
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Social Log In container Widget
                        SocialLoginButtonWidget(
                          onPressed: (){},
                          socialImage: Image.asset('assets/googleLogo.png',alignment: Alignment.center,),
                        ),
                        SocialLoginButtonWidget(
                          onPressed: (){},
                            socialImage: Image.asset('assets/fbLogo.png',alignment: Alignment.center,)
                        ),
                        SocialLoginButtonWidget(
                          onPressed: (){},
                            socialImage: Image.asset('assets/appleLogo.png',alignment: Alignment.center,)
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 2,
                          color: AppTheme.kMediumEmphasisColor,
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                          child: Text('Or register with email'),
                        ),
                        Container(
                          width: 60,
                          height: 2,
                          color: AppTheme.kMediumEmphasisColor,
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: TextFormField(
                        controller: emailFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Email id',
                          hintStyle:
                              TextStyle(color: AppTheme.kMediumEmphasisColor),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          filled: true,
                          fillColor: Color(0x4C3F414C),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(12, 2, 12, 2),
                          prefixIcon: const Icon(
                            Icons.alternate_email,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: TextFormField(
                        controller: textFieldpasswordFieldController,
                        obscureText: !textFieldpasswordFieldVisibility,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle:
                              TextStyle(color: AppTheme.kMediumEmphasisColor),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          filled: true,
                          fillColor: Color(0x4C3F414C),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(12, 2, 12, 2),
                          prefixIcon: const Icon(
                            Icons.lock_open_outlined,
                          ),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => textFieldpasswordFieldVisibility =
                                  !textFieldpasswordFieldVisibility,
                            ),
                            child: Icon(
                              textFieldpasswordFieldVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: AppTheme.kLowEmphasisColor,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: TextFormField(
                        controller: fullNameTextFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Display Name',
                          hintStyle:
                              TextStyle(color: AppTheme.kMediumEmphasisColor),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          filled: true,
                          fillColor: Color(0x4C3F414C),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(12, 2, 12, 2),
                          prefixIcon: Icon(
                            Icons.face_unlock_rounded,
                          ),
                        ),
                      ),
                    ),
                    PrimaryButtonWidget(
                      buttonText: Text('SignUp'),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




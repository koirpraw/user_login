import 'package:flutter/material.dart';
import 'package:user_login/Utils/appTheme.dart';

class PrimaryButtonWidget extends StatelessWidget {

  final Text buttonText;
  const PrimaryButtonWidget({
    required this.buttonText
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 240,
      child: MaterialButton(

          minWidth: 50,height: 240,
          color: AppTheme.kPrimaryColor,
          textColor: Colors.white,
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
          onPressed: () {},
          child: buttonText),
    );
  }
}

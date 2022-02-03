import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButtonWidget extends StatelessWidget {
 final void onPressed;
 final Widget socialImage;

  const SocialLoginButtonWidget({required this.onPressed,required this.socialImage}) ;



  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      onPressed: () {  },
      child: Material(
        color: Colors.transparent,
        elevation: 6,
        shape: const CircleBorder(),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Container(
            width: 30,
            height: 30,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: socialImage
          ),
        ),
      ),
    );
  }
}



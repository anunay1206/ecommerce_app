import 'package:ecommerce_anunay/constants.dart';
import 'package:ecommerce_anunay/screens/Login/login_screen.dart';
import 'package:ecommerce_anunay/screens/Signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_anunay/screens/Welcome/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce_anunay/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to ShopAtHome",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/logo.svg",
              height: size.height * 0.40,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ));
              },
            ),
            RoundedButton(
              text: "SIGNUP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(context,MaterialPageRoute(
                    builder: (context){
                      return SignupScreen();
                    },
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}

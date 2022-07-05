import 'package:flutter/material.dart';
import 'package:helloworld/Screens/Login/login_screen.dart';
import 'package:helloworld/Screens/SignUp/signup_screen.dart';
import 'package:helloworld/Screens/Welcome/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helloworld/components/rounded_button.dart';
import 'package:helloworld/constants.dart';
class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // this size provides us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Text(
              "Welcome To smart medicare",
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height *0.03),
            SvgPicture.asset("assets/icons/firstpage.svg",
            height: size.height * 0.3,
            ),
            SizedBox(height: size.height *0.03),
            // ignore: deprecated_member_use
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();
                      },
                  ),
                      );
                      },
              ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                 Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return SignUpScreen();
                      },
                  ),
                      );
              },
            )  
          ],
          ),
      ),
        );
  }
}

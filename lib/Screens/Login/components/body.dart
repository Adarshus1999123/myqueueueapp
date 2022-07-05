// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helloworld/Home_page/homepage.dart';
import 'package:helloworld/Screens/Login/components/background.dart';
import 'package:helloworld/Screens/SignUp/signup_screen.dart';
import 'package:helloworld/components/already_have_an_account_check.dart';
import 'package:helloworld/components/rounded_button.dart';
import 'package:helloworld/components/rounded_input_field.dart';
import 'package:helloworld/components/rounded_password_field.dart';
import 'package:helloworld/components/text_field_container.dart';
import 'package:helloworld/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(text: "LOGIN", press: () {Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){
                        return HomePage();
                        },
                    ),
                        );

            }
            ),
            AlreadyHaveAnAccountCheck(
              press: () { Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){
                        return SignUpScreen();
                        },
                    ),
                        );},
              ),
          ],
        ),
      ),
    );
  }
}

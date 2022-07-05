import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helloworld/Screens/Login/login_screen.dart';
import 'package:helloworld/Screens/SignUp/background.dart';
import 'package:helloworld/Screens/SignUp/or_divider.dart';
import 'package:helloworld/Screens/SignUp/social_icons.dart';
import 'package:helloworld/components/already_have_an_account_check.dart';
import 'package:helloworld/components/rounded_button.dart';
import 'package:helloworld/components/rounded_input_field.dart';
import 'package:helloworld/components/rounded_password_field.dart';
import 'package:helloworld/constants.dart';

class Body extends StatelessWidget {
  final Widget child;
  
  const Body({Key? key,
  required this.child,
  }) : super(key: key);@override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
               style: TextStyle(fontWeight: FontWeight.bold),
               ),
               SizedBox(height: size.height * 0.03),
               SvgPicture.asset("assets/icons/signup.svg",
               height: size.height * 0.35,
               ),
               RoundedInputField(
                hintText: "Your Email Id",
                onChanged: (value){},
                ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                RoundedButton(text:"SIGNUP",
                press: () {},
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () { Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){
                        return LoginScreen();
                        },
                    ),
                        );},
                ),
                OrDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocialIcon(
                      iconSrc: "assets/icons/facebook.svg",
                      press: (){},
                    ),
                    SocialIcon(
                      iconSrc: "assets/icons/twitter.svg",
                      press: (){},
                    ),
                    SocialIcon(
                      iconSrc: "assets/icons/google-plus.svg",
                      press: (){},
                    ),
                  ],)
        ],
        ),
      ),
    );
  }
}


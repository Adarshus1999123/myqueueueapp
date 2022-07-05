import 'package:flutter/material.dart';


class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width:double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -5,
            left: -12,
            child: Image.asset(
              "assets/images/login_top1.png",
              width: size.width * 0.3,
              ) 
        ),
          Positioned(
             top: 0,
            left: 8,
            child: Image.asset(
              "assets/images/login_top2.png",
              width: size.width *0.5,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
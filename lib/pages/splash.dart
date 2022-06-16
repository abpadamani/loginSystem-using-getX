import 'package:arpanmart/pages/onboard/onboardscreenOne.dart';

import 'package:flutter/material.dart';

class MysplashScreen extends StatefulWidget {
  const MysplashScreen({Key? key}) : super(key: key);

  @override
  State<MysplashScreen> createState() => _MysplashScreenState();
}

class _MysplashScreenState extends State<MysplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Onboardscreenone(),
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Container(
              width: 200,
              height: 200,
              child: Image.asset(
                "assets/img/logo.png",
                width: 700,
                height: 700,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

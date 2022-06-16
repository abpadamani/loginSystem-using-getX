import 'package:arpanmart/pages/onboard/components-slanding.dart';
import 'package:arpanmart/pages/onboard/onboardscreenTwo.dart';
import 'package:flutter/material.dart';

class Onboardscreenone extends StatelessWidget {
  const Onboardscreenone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 5,
                ),
                Image(
                    width: size.width,
                    height: size.height * 0.4,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img/s1.jpg")),
                ClipPath(
                  clipper: Slanding(),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.4,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
            Positioned(
                top: size.height * 0.69,
                child: Container(
                  padding: EdgeInsets.only(right: 10),
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Free Delivery",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.pinkAccent),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        "Get Free Home Delivery \n Within 30 Minutes",
                        textAlign: TextAlign.end,
                        style:
                            TextStyle(fontSize: 18, color: Colors.pinkAccent),
                      ),
                    ],
                  ),
                )),
            Positioned(
              bottom: 15,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(3),
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          shape: BoxShape.circle,
                          color: Colors.white)),
                  Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          shape: BoxShape.circle,
                          color: Colors.yellow)),
                  Container(
                      margin: EdgeInsets.all(3),
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          shape: BoxShape.circle,
                          color: Colors.yellow)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: size.height * 0.03),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => OnboardscreenTwo()));
                      },
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.navigate_next_sharp,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

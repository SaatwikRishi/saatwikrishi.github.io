import 'package:flutter/material.dart';
import 'package:portfolio/Providers/SizeProvider.dart';

class Listitem1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = SizeProvider.getsize(context);

    return Container(
      height: size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/home_background.gif'),
              fit: BoxFit.fill)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://i.ibb.co/0mWWVHN/IMG-20210328-115036-2.jpg"),
          child: Container(),
          radius: size.height * 0.12,
          backgroundColor: Colors.red,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Saatwik Rishi",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Just another app developer with awesome skills and sexiness over 9000",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.phone,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.phone,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.phone,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.phone,
              size: 30,
              color: Colors.white,
            )
          ],
        )
      ]),
    );
  }
}

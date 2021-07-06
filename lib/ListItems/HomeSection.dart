import 'package:flutter/material.dart';
import 'package:portfolio/Providers/SizeProvider.dart';
import 'package:portfolio/Providers/home_icons_icons.dart';

class HomeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = SizeProvider.getsize(context);

    return Container(
      height: size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://raw.githubusercontent.com/SaatwikRishi/saatwikrishi.github.io/master/assets/assets/images/home_background.webp'),
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Student Developer, Engineering Undergrad and a pretty decent coder",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            width: size.width * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  HomeIcons.facebook,
                  size: 25,
                  color: Colors.white,
                ),
                Icon(
                  HomeIcons.github_circled,
                  size: 25,
                  color: Colors.white,
                ),
                Icon(
                  HomeIcons.instagram,
                  size: 25,
                  color: Colors.white,
                ),
                Icon(
                  HomeIcons.linkedin,
                  size: 25,
                  color: Colors.white,
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}

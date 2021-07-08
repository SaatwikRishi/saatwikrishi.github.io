import 'package:flutter/material.dart';
import 'package:portfolio/Providers/SizeProvider.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = SizeProvider.getsize(context);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://www.catenon.com/front/img/backgrounds/bg-contact.jpg"),
                fit: BoxFit.fill)),
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: size.height * 0.06,
              //     margin: EdgeInsets.all(isSmall ? 30.0 : 60),
              child: Text(
                "CONTACT",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    bottom: size.width * 0.01,
                    left: size.width * 0.1,
                    right: size.width * 0.1),
                width: size.width,
                height: size.height * 0.6,
                child: Opacity(
                  opacity: 0.1,
                  child: Card(
                    color: Colors.black,
                  ),
                ))
          ],
        ));
  }
}

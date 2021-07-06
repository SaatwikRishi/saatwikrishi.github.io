import 'package:flutter/material.dart';
import 'package:portfolio/Providers/SizeProvider.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = SizeProvider.getsize(context);
    return Container(
      height: size.height,
      child: Text("CONTACT SECTION"),
    );
  }
}

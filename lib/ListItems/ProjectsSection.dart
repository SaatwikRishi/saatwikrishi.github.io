import 'package:flutter/material.dart';
import 'package:portfolio/Providers/SizeProvider.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("F");
    final size = SizeProvider.getsize(context);
    return Container(
      height: size.height,
      child: Text("CONTACT SECTION"),
    );
  }
}

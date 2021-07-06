import 'package:flutter/material.dart';
import 'package:portfolio/Providers/SizeProvider.dart';
import 'package:portfolio/Providers/global_var.dart';
import 'package:portfolio/Widgets/SkillsView.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = SizeProvider.getsize(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1503252947848-7338d3f92f31?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2089&q=80",
            ),
            fit: BoxFit.fill),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "SKILLS",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
          ),
          Container(
            width: size.width,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.6,
                  width: isSmall ? size.width * 0.8 : size.width * 0.6,
                  child: Container(
                    margin: EdgeInsets.all(30),
                    color: Colors.blue,
                  ),
                ),
                Container(
                  child: SkillsView(),
                  margin: EdgeInsets.all(10),
                  height: size.width * 0.4,
                  width: isSmall ? size.width * 0.4 : size.width * 0.4,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

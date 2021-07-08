import 'package:flutter/material.dart';
import 'package:portfolio/Providers/global_var.dart';
import 'package:portfolio/Widgets/SKillPercentageView.dart';
import 'package:portfolio/Widgets/SkillsView.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final children = [
      Expanded(
        flex: 7,
        child: Container(child: SKillPercentage()),
      ),
      Expanded(
        flex: 3,
        child: Center(child: SkillsView()),
      )
    ];
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
          Expanded(
            flex: 0,
            child: Container(
              margin: EdgeInsets.all(isSmall ? 30.0 : 60),
              child: Text(
                "SKILLS",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: isSmall
                ? Column(
                    //    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: children.reversed.toList())
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: children.reversed.toList()),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/ListItems/ContactSection.dart';
import 'package:portfolio/ListItems/HomeSection.dart';
import 'package:portfolio/ListItems/ProjectsSection.dart';
import 'package:portfolio/ListItems/SkillsSections.dart';
import 'package:portfolio/Providers/SizeProvider.dart';
import 'package:portfolio/Providers/global_var.dart';
import 'package:portfolio/Widgets/CustomScaffold.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          iconTheme: IconThemeData(color: Colors.white),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(TextStyle(
            color: Colors.white,
          ))))),
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(builder: (context, cons) => HomePage(cons)),
    );
  }
}

class HomePage extends StatelessWidget {
  final globalController = ScrollController();
  final BoxConstraints constraints;
  HomePage(this.constraints);
  final _list = [
    HomeSection(),
    SkillSection(),
    ProjectSection(),
    ContactSection()
  ];
  @override
  Widget build(BuildContext context) {
    ITEM_HEIGHT = SizeProvider.getsize(context).height;
    isSmall = SizeProvider.getsize(context).width < 1200;

    return CustomScaffold(
      controller: globalController,
      constraints: this.constraints,
      child: ListView.builder(
        controller: globalController,
        shrinkWrap: true,
        itemCount: _list.length,
        itemBuilder: (context, i) => Container(
            height: SizeProvider.getsize(context).height, child: _list[i]),
      ),
    );
  }
}

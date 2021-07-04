import 'package:flutter/material.dart';
import 'package:portfolio/ListItems/listitem1.dart';
import 'package:portfolio/Providers/SizeProvider.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: ListView(
        shrinkWrap: true,
        children: [Listitem1()],
      ),
    );
  }
}

class LeftSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = SizeProvider.getsize(context);
    final iconSize = size.width * 0.03;

    return Container(
      width: size.width * 0.03,
      child: Column(
        children: [
          Container(
            child: Icon(
              Icons.menu_outlined,
              size: size.width * 0.02,
            ),
            width: iconSize,
            height: iconSize,
            color: Colors.green,
          ),
          Flexible(
            flex: 2,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: size.width * 0.02),
                    child: Icon(
                      Icons.person,
                      size: size.width * 0.03,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: size.width * 0.02),
                    child: Icon(
                      Icons.phone,
                      size: size.width * 0.03,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: size.width * 0.02),
                    child: Icon(
                      Icons.contact_mail,
                      size: size.width * 0.03,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.pedal_bike,
                    size: size.width * 0.03,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomScaffold extends StatelessWidget {
  final Widget? child;
  CustomScaffold({this.child});
  @override
  Widget build(BuildContext context) {
    final size = SizeProvider.getsize(context);
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        height: size.height,
        width: size.width,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 0,
              child: Container(
                  margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: LeftSideBar()),
            ),
            Expanded(flex: 1, child: child as Widget),
          ],
        ),
      ),
    );
  }
}

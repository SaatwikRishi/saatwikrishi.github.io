import 'package:flutter/material.dart';
import 'package:portfolio/Providers/SizeProvider.dart';
import 'package:portfolio/Widgets/LeftSideBar.dart';

class CustomScaffold extends StatefulWidget {
  final ScrollController? controller;
  final Widget? child;
  final BoxConstraints? constraints;
  CustomScaffold({this.child, this.constraints, this.controller});

  @override
  _CustomScaffoldState createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  bool isopen = false;
  void openorclosesidebar() {
    setState(() {
      //  isopen = !isopen;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = SizeProvider.getsize(context);
    return Scaffold(
      onDrawerChanged: (f) {
        openorclosesidebar();
      },
      drawer: LeftSideBarOpen(),
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
                    child: LeftSideBarClosed(
                        openorclosesidebar, widget.controller))),
            Expanded(flex: 1, child: widget.child as Widget),
          ],
        ),
      ),
    );
  }
}

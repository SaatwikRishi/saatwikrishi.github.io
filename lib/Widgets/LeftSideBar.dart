import 'package:flutter/material.dart';
import 'package:portfolio/Providers/SizeProvider.dart';
import 'package:portfolio/Providers/global_var.dart';

class LeftSideBarClosed extends StatelessWidget {
  final Function fn;
  final ScrollController? controller;
  const LeftSideBarClosed(this.fn, this.controller, {Key? key})
      : super(key: key);

  ontaphandler(int i) {
    controller!.animateTo(i * ITEM_HEIGHT,
        duration: Duration(seconds: 1), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    final size = SizeProvider.getsize(context);
    final iconSize = size.width > 1200 ? size.width * 0.02 : size.width * 0.05;
    return Scaffold.of(context).isDrawerOpen
        ? Container()
        : Container(
            width: size.width > 1200 ? size.width * 0.04 : size.width * 0.12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  shadowColor: Colors.lightGreenAccent,
                  elevation: 15,
                  color: Colors.green,
                  child: IconButton(
                      iconSize: iconSize,
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Container(
                        child: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                      )),
                ),
                SizedBox(
                  height: size.height * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          iconSize: iconSize,
                          onPressed: () => ontaphandler(0),
                          icon: Container(
                            child: Icon(Icons.person),
                          )),
                      IconButton(
                          iconSize: iconSize,
                          onPressed: () => ontaphandler(1),
                          icon: Container(
                            child: Icon(Icons.phone),
                          )),
                      IconButton(
                          iconSize: iconSize,
                          onPressed: () => ontaphandler(2),
                          icon: Container(
                            child: Icon(Icons.contact_mail),
                          )),
                      IconButton(
                          iconSize: iconSize,
                          onPressed: () => ontaphandler(3),
                          icon: Container(
                            child: Icon(Icons.insert_drive_file),
                          )),
                    ],
                  ),
                ),
                IconButton(
                    iconSize: iconSize,
                    onPressed: () {},
                    icon: Container(
                      child: Icon(Icons.download_rounded),
                    )),
              ],
            ),
          );
  }
}

class LeftSideBarOpen extends StatelessWidget {
  const LeftSideBarOpen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = SizeProvider.getsize(context);
    final iconSize = !isSmall ? size.width * 0.02 : size.width * 0.03;
    TextStyle? style =
        TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
    return Container(
      color: Colors.black54,
      width: !isSmall ? size.width * 0.2 : size.width * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MenuBarIconButton(
            size: size,
            onTap: () {
              Navigator.pop(context);
            },
            iconSize: iconSize,
            style: style,
            icon: Icons.close,
            text: "Close Menu",
          ),
          SizedBox(
            height: size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MenuBarIconButton(
                  size: size,
                  iconSize: iconSize,
                  style: style,
                  icon: Icons.person,
                  text: "Home",
                ),
                MenuBarIconButton(
                  size: size,
                  iconSize: iconSize,
                  style: style,
                  text: "Contact Us",
                  icon: Icons.phone,
                ),
                MenuBarIconButton(
                  size: size,
                  iconSize: iconSize,
                  style: style,
                  icon: Icons.email,
                  text: "Eamil",
                ),
                MenuBarIconButton(
                  size: size,
                  iconSize: iconSize,
                  style: style,
                  icon: Icons.skateboarding,
                  text: "Projects",
                ),
              ],
            ),
          ),
          MenuBarIconButton(
            size: size,
            iconSize: iconSize,
            style: style,
            icon: Icons.download,
            text: "Download Resume",
          ),
        ],
      ),
    );
  }
}

class MenuBarIconButton extends StatelessWidget {
  const MenuBarIconButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.size,
    required this.iconSize,
    required this.style,
    this.onTap,
  }) : super(key: key);
  final IconData icon;
  final Size size;
  final GestureTapCallback? onTap;
  final double iconSize;
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
      child: Card(
        shadowColor: Colors.white,
        color: Colors.black38,
        child: ListTile(
          hoverColor: Colors.green,
          enableFeedback: true,
          onTap: onTap,
          leading: Icon(
            icon,
            color: Colors.white,
            size: kTextTabBarHeight - 10,
          ),
          title: Text(
            text,
            style: style,
          ),
        ),
      ),
    );
  }
}

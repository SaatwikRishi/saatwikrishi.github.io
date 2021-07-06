import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/Providers/SizeProvider.dart';

class SkillsView extends StatefulWidget {
  @override
  _SkillsViewState createState() => _SkillsViewState();
}

class _SkillsViewState extends State<SkillsView> {
  final _notifier = ValueNotifier<double>(0.0);
  final _controller = PageController(viewportFraction: 1, initialPage: 1);
  int i = 1;
  var t;
  double previ = 1;
  void listen() {
    if (_controller.page != previ) {
      _notifier.value = _controller.page!;
      previ = _controller.page!;
    }
  }

  @override
  void dispose() {
    t.cancel();

    _controller.dispose();
    super.dispose();
  }

  void initState() {
    Timer.periodic(Duration(milliseconds: 2000), (timer) {
      t = timer;

      _controller.animateToPage((i++),
          duration: Duration(milliseconds: 600), curve: Curves.ease);
    });
    _controller.addListener(listen);
    super.initState();
  }

  final _list = [
    ListItem(
        imgUri:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Dart-logo.png/600px-Dart-logo.png",
        title: "Dart"),
    ListItem(
        imgUri:
            "https://seeklogo.com/images/N/nodejs-logo-FBE122E377-seeklogo.com.png",
        title: "Javascript"),
    ListItem(
        imgUri:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/768px-Python-logo-notext.svg.png",
        title: "Python"),
    ListItem(
        imgUri:
            "https://raw.githubusercontent.com/isocpp/logos/master/cpp_logo.png",
        title: "C++"),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ValueListenableBuilder<double>(
      valueListenable: _notifier,
      builder: (context, val, wid) => PageView.builder(
          controller: _controller,
          itemBuilder: (context, i) {
            final p = i - val;
            bool isleaving = p <= 0 ? true : false;
            final roty = lerpDouble(0, 90, p);
            final op = lerpDouble(0, 1, p.abs().clamp(0, 1));
            return Opacity(
              opacity: 1 - op!,
              child: Transform(
                  alignment:
                      isleaving ? Alignment.centerRight : Alignment.centerLeft,
                  transform: Matrix4.identity()
                    ..setIdentity()
                    ..setEntry(3, 2, 0.005)
                    //     ..setEntry(0, 3, v)
                    // ..setEntry(0, 3, 0.4)
                    //    ..setEntry(3, 3, 0.004)
                    ..rotateY(-degtor(roty!)),
                  child: ListMember(_list[i % _list.length])),
            );
          }),
    );
  }
}

double degtor(double i) => pi / 180 * i;

class ListItem {
  final String? imgUri;
  final String? title;

  ListItem({this.imgUri, this.title});
}

class ListMember extends StatelessWidget {
  const ListMember(this.item, {Key? key}) : super(key: key);
  final ListItem item;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      item.imgUri!,
      fit: BoxFit.fill,
    );
  }
}

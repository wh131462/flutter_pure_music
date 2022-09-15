import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const PureMusic());
}

class PureMusic extends StatefulWidget {
  const PureMusic({Key? key}) : super(key: key);

  @override
  State<PureMusic> createState() => _PureMusicState();
}

class _PureMusicState extends State<PureMusic> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pure Music',
      home: MyHomePage(title: 'Pure Musics'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SizedBox(
          height: 720,
          child: MyScrollView(),
        ));
  }
}

class MyScrollView extends ScrollView {
  MyScrollView({Key? key}) : super(key: key);

  final double _sigmaX = 0.2;
  final double _sigmaY = 0.2;

  @override
  List<Widget> buildSlivers(BuildContext context) {
    return [
      _buildImage()
    ];
  }

  Widget _buildImage() {
    return Wrap(spacing: 20, children: <Widget>[
      SizedBox(
          height: 150,
          width: 150,
          child: Image.asset(
            'assets/images/1659539026926.jpeg',
            fit: BoxFit.cover,
          )),
    ]);
  }
}

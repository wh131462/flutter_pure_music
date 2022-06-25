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
      home: MyHomePage(title: 'Home 131462'),
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
  final int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                  '欢迎使用PureMusic user:$_count',
                  style: Theme.of(context).textTheme.subtitle1
              ),
            ),
          ],
        ),
      ),

    );
  }
}

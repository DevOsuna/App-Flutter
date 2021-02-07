import 'package:flutter/material.dart';

class InfoUser extends StatelessWidget {
  final String name;
  InfoUser({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info User'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(name)],
        ),
      ),
    );
  }
}

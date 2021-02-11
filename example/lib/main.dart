import 'package:flutter/material.dart';

import 'package:array_to_tree/array_to_tree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var list = [
    {'id': 1, 'title': 'home', 'parent': null},
    {'id': 2, 'title': 'about', 'parent': null},
    {'id': 3, 'title': 'team', 'parent': 2},
    {'id': 4, 'title': 'company', 'parent': 2},
    {'id': 5, 'title': 'company', 'parent': 3}
  ];

  var _hierarchyTree = [];
  List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    buildTree();
  }

  buildTree() {
    _hierarchyTree = ArrayToTree.buildStaticTree(list);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Array To Tree'),
        ),
        body: Center(child: Text(_hierarchyTree.toString())),
      ),
    );
  }
}

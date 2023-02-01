import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Hallo"),
      ),
      body: Text("Hallo"),
    ));
  }
}

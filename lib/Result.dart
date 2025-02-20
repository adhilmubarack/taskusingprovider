import 'package:flutter/material.dart';
import 'package:newtask/Classfile.dart';
import 'package:provider/provider.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Consumer<AddSub>(
          builder: (context, ad, child) {
            return Text(
              'Result: ${ad.result}',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
    );
  }
}

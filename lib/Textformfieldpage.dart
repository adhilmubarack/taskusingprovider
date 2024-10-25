import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtask/Classfile.dart';
import 'package:newtask/buttonpage.dart';
import 'package:provider/provider.dart';

class Textformfieldpage extends StatefulWidget {
  const Textformfieldpage({super.key});

  @override
  State<Textformfieldpage> createState() => _TextformfieldpageState();
}

class _TextformfieldpageState extends State<Textformfieldpage> {
  TextEditingController fist = TextEditingController();
  TextEditingController second = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Buttonpage();
                    },
                  ));
                },
                label: Icon(Icons.navigate_next)),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
            child: Center(
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: ("Enter first number"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide())),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
                onPressed: () {
                  int a = int.parse(fist.text);
                  int b = int.parse(second.text);
                  Provider.of<Addsub>(context, listen: false).Add(a, b);
                },
                child: Text(
                  "Submit",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Center(
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: ("Enter second number"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide())),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Submit",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}

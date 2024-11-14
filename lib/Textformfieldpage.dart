import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtask/Classfile.dart';
import 'package:newtask/Result.dart';
import 'package:newtask/buttonpage.dart';
import 'package:provider/provider.dart';

class Textformfieldpage extends StatefulWidget {
  const Textformfieldpage({super.key});

  @override
  State<Textformfieldpage> createState() => _TextformfieldpageState();
}

class _TextformfieldpageState extends State<Textformfieldpage> {
  TextEditingController first = TextEditingController();
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
                      return Result();
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
                controller: first,
                decoration: InputDecoration(
                    hintText: ("Enter first number"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide())),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Center(
              child: TextFormField(
                controller: second,
                decoration: InputDecoration(
                    hintText: ("Enter second number"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide())),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    int a= int.parse(first.text);
                    int b= int.parse(second.text);
                    Provider.of<AddSub>(context, listen: false).add(a,b);
                  },
                  child: Text(
                    "Add",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      int a= int.parse(first.text);
                      int b= int.parse(second.text);
                      Provider.of<AddSub>(context, listen: false).sub(a,b);
                    },
                    child: Text(
                      "Subtract",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

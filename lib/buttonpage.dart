// import 'package:flutter/material.dart';
// import 'package:newtask/Result.dart';
// import 'package:provider/provider.dart';
//
// import 'Classfile.dart';
//
// class Buttonpage extends StatefulWidget {
//   const Buttonpage({super.key});
//
//   @override
//   State<Buttonpage> createState() => _ButtonpageState();
// }
//
// class _ButtonpageState extends State<Buttonpage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           IconButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(
//                   builder: (context) {
//                     return Result();
//                   },
//                 ));
//               },
//               icon: Icon(Icons.arrow_forward))
//         ],
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                   onPressed: () {
//

//                   },
//                   child: Text(
//                     "Add",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   )),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 20.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                     onPressed: () {},
//                     child: Text(
//                       "Subtract",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                     )),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

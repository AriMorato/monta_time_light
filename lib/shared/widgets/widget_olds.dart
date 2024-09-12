//   Widget levelButton(Position position, double level) {
//     return Row(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             border: Border.all(width: 0.3, color: Colors.grey.shade100),
//             borderRadius: BorderRadius.circular(10),
//             color: Colors.amber,
//           ),
//           child: SizedBox(
//             width: 80,
//             height: 45,
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
//               child: Center(
//                 child: Text(
//                   position.title,
//                   style: const TextStyle(
//                       fontFamily: 'IstokWeb',
//                       fontSize: 18,
//                       fontWeight: FontWeight.normal),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
//           child: Row(
//             children: [
//               Container(
//                 width: 50,
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   border: Border.all(width: 0.5, color: Colors.grey.shade100),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
//                   child: TextFormField(
//                     initialValue: "0.0",
//                     textAlignVertical: TextAlignVertical.center,
//                     textAlign: TextAlign.center,
//                     controller: levelController,
//                     style: const TextStyle(color: Colors.white),
//                     decoration: const InputDecoration(
//                       border: InputBorder.none,
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 color: Colors.amber,
//                 width: 170,
//                 alignment: Alignment.centerRight,
//                 child: Slider(
//                   label: _currentValue.toString(),
//                   value: _currentValue,
//                   min: 0.0,
//                   max: 10.0,
//                   divisions: 8,
//                   onChanged: (double val) {
//                     setState(() {
//                       _currentValue = val;
//                       levelController.text = val.toString();
//                     });
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget chipPosition(Position position) {
//     double level;

//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Chip(
//         backgroundColor: Colors.grey,
//         label: Text(
//           position.title.toString(),
//         ),
//         labelPadding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
//         labelStyle: const TextStyle(
//             fontFamily: 'IstokWeb',
//             fontSize: 18,
//             fontWeight: FontWeight.normal),
//         avatar: const Icon(Icons.done),
//       ),
//     );
//   }
// }
 //transform: Matrix4.skew(120, 45),
          // child: Row(
          //   children: [
          //     Container(
          //       width: 60,
          //       child: Padding(
          //         padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
          //         child: Text(
          //           position.title,
          //           style: const TextStyle(
          //               fontFamily: 'IstokWeb',
          //               fontSize: 18,
          //               fontWeight: FontWeight.normal),
          //         ),
          //       ),
          //     ),
          //     Container(
          //       width: 60,
          //       height: 50,
          //       color: Colors.black,
          //       child: Padding(
          //         padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
          //         child: Center(
          //           child: Text(
          //             _currentValue.toString(),
          //             style: const TextStyle(
          //               fontFamily: 'IstokWeb',
          //               fontSize: 18,
          //               color: Colors.white,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     Container(
          //       width: 190,
          //       // alignment: Alignment.centerRight,
          //       child: Slider(
          //         label: _currentValue.toString(),
          //         value: _currentValue,
          //         min: 0.0,
          //         max: 10.0,
          //         divisions: 8,
          //         onChanged: (double val) {
          //           setState(() {
          //             _currentValue = val;
          //           });
          //         },
          //       ),
          //     ),
          //   ],
          // ),
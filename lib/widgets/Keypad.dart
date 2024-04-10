import 'package:flutter/material.dart';

// class PhoneKeypad extends StatefulWidget {
//   @override
//   _PhoneKeypadState createState() => _PhoneKeypadState();
// }

// class _PhoneKeypadState extends State<PhoneKeypad> {
//   String dialedNumbers = '';

//   void _handleKeyPress(String key) {
//     setState(() {
//       dialedNumbers += key;
//     });
//   }

//   // Method to remove the last digit
//   void _removeLastDigit() {
//     if (dialedNumbers.isNotEmpty) {
//       setState(() {
//         dialedNumbers = dialedNumbers.substring(0, dialedNumbers.length - 1);
//       });
//     }
//   }

//   void _callNumber() {
//     print('Calling: $dialedNumbers');
//     // Add your call logic here
//   }

//   @override
//   Widget build(BuildContext context) {
//     final keys = [
//       '1',
//       '2',
//       '3',
//       '4',
//       '5',
//       '6',
//       '7',
//       '8',
//       '9',
//       '*',
//       '0',
//       '#',
//     ];

//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             flex: 1,
//             child: Center(
//               child: Text(
//                 dialedNumbers,
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: GridView.builder(
//               padding: EdgeInsets.all(10),
//               itemCount: keys.length,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 childAspectRatio: 1.5, // Adjust aspect ratio for smaller keys
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//               ),
//               itemBuilder: (BuildContext context, int index) {
//                 return GestureDetector(
//                   onTap: () => _handleKeyPress(keys[index]),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Center(
//                       child: Text(
//                         keys[index],
//                         style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           // Buttons row
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 20.0),
//                 child: ElevatedButton.icon(
//                   onPressed: _removeLastDigit,
//                   icon: Icon(Icons.highlight_remove_rounded),
//                   style: ElevatedButton.styleFrom(
//                     //   // backgroundColor: Colors.red,s
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                   ),
//                   label: Text(""),
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: _callNumber,
//                 child: Icon(Icons.call),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green,
//                   padding: EdgeInsets.all(20),
//                   shape: CircleBorder(),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: PhoneKeypad(),
//     );
//   }
// }

// class PhoneKeypad extends StatefulWidget {
//   @override
//   _PhoneKeypadState createState() => _PhoneKeypadState();
// }

// class _PhoneKeypadState extends State<PhoneKeypad> {
//   String dialedNumbers = '';

//   void _handleKeyPress(String key) {
//     setState(() {
//       dialedNumbers += key;
//     });
//   }

//   // Method to remove the last digit
//   void _removeLastDigit() {
//     if (dialedNumbers.isNotEmpty) {
//       setState(() {
//         dialedNumbers = dialedNumbers.substring(0, dialedNumbers.length - 1);
//       });
//     }
//   }

//   void _callNumber() {
//     print('Calling: $dialedNumbers');
//     // Add your call logic here
//   }

//   @override
//   Widget build(BuildContext context) {
//     final keys = [
//       '1',
//       '2',
//       '3',
//       '4',
//       '5',
//       '6',
//       '7',
//       '8',
//       '9',
//       '*',
//       '0',
//       '#',
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Phone Keypad'),
//       ),
//       backgroundColor: Colors.blue, // Background color
//       body: Column(
//         children: [
//           Expanded(
//             flex: 1,
//             child: Center(
//               child: Text(
//                 dialedNumbers,
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: GridView.builder(
//               padding: EdgeInsets.all(10),
//               itemCount: keys.length,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 childAspectRatio: 1.2, // Adjust aspect ratio for smaller keys
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//               ),
//               itemBuilder: (BuildContext context, int index) {
//                 return GestureDetector(
//                   onTap: () => _handleKeyPress(keys[index]),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Center(
//                       child: Text(
//                         keys[index],
//                         style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.blue, // Button text color
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           // Buttons row
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ElevatedButton(
//                 onPressed: _removeLastDigit,
//                 child: Icon(Icons.backspace),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.white, // Button color
//                   padding: EdgeInsets.all(20),
//                   shape: CircleBorder(),
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: _callNumber,
//                 child: Icon(Icons.call),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.white, // Button color
//                   padding: EdgeInsets.all(20),
//                   shape: CircleBorder(),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class PhoneKeypad extends StatefulWidget {
  const PhoneKeypad({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PhoneKeypadState createState() => _PhoneKeypadState();
}

class _PhoneKeypadState extends State<PhoneKeypad> {
  String dialedNumbers = '';

  void _handleKeyPress(String key) {
    setState(() {
      dialedNumbers += key;
    });
  }

  // Method to remove the last digit
  void _removeLastDigit() {
    if (dialedNumbers.isNotEmpty) {
      setState(() {
        dialedNumbers = dialedNumbers.substring(0, dialedNumbers.length - 1);
      });
    }
  }

  void _callNumber() {
    // ignore: avoid_print
    print('Calling: $dialedNumbers');
    // Add your call logic here
  }

  @override
  Widget build(BuildContext context) {
    final keys = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '*',
      '0',
      '#',
    ];

    return Scaffold(
      backgroundColor: Colors.white, // Background color
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                dialedNumbers,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: keys.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.5, // Adjust aspect ratio for smaller keys
                crossAxisSpacing: 7,
                mainAxisSpacing: 7,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => _handleKeyPress(keys[index]),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(5), // Adjust border radius
                    ),
                    child: Center(
                      child: Text(
                        keys[index],
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black, // Button text color
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  // ignore: sort_child_properties_last
                  child: const Icon(
                    Icons.videocam_outlined,
                    color: Colors.black,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Button color
                    padding: const EdgeInsets.all(15), // Adjust padding
                    shape: const CircleBorder(),
                    elevation: 0,
                  ),
                ),
                ElevatedButton(
                  onPressed: _callNumber,
                  // ignore: sort_child_properties_last
                  child: const Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.all(30),
                    shape: const CircleBorder(),
                    elevation: 0,
                  ),
                ),
                ElevatedButton(
                  onPressed: _removeLastDigit,
                  // ignore: sort_child_properties_last
                  child: const Icon(
                    Icons.backspace,
                    color: Colors.black,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Button color
                    padding: const EdgeInsets.all(15), // Adjust padding
                    shape: const CircleBorder(),
                    elevation: 0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

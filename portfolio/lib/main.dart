// import 'package:flutter/material.dart';

// class AnimatedHeaderPage extends StatefulWidget {
//   @override
//   _AnimatedHeaderPageState createState() => _AnimatedHeaderPageState();
// }

// class _AnimatedHeaderPageState extends State<AnimatedHeaderPage> {
//   ScrollController _scrollController = ScrollController();
//   double _headerHeight = 200.0; // Initial height of the container
//   double _headerWidth = 0.0; // This will be set based on the screen width

//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(_onScroll);
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     _headerWidth =
//         MediaQuery.of(context).size.width; // Set the initial width here
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   void _onScroll() {
//     // Shrink the container height and width as the user scrolls down
//     if (_scrollController.offset > 500 && _headerHeight != 100.0) {
//       setState(() {
//         _headerHeight = 100.0;
//         _headerWidth = MediaQuery.of(context).size.width * 0.7; // Shrink width
//       });
//     }
//     // Expand the container height and width when scrolling back up
//     else if (_scrollController.offset <= 500 && _headerHeight != 200.0) {
//       setState(() {
//         _headerHeight = 200.0;
//         _headerWidth = MediaQuery.of(context).size.width; // Full width
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber.shade100,
//       body: Column(
//         children: [
//           // AnimatedContainer with circular border and dynamic width/height
//           AnimatedContainer(
//             duration: Duration(milliseconds: 750), // Animation duration
//             height: _headerHeight, // Dynamic height
//             width: _headerWidth, // Dynamic width
//             margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
//             decoration: BoxDecoration(
//               color: Colors.blueAccent, // Background color
//               borderRadius: BorderRadius.circular(30), // Circular border
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black26,
//                   blurRadius: 10,
//                   spreadRadius: 1,
//                   offset: Offset(0, 4),
//                 ),
//               ],
//             ),
//             child: Container(
//               alignment: Alignment.center,
//               child: Text(
//                 'Header',
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//             ),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               controller: _scrollController,
//               child: Column(
//                 children: List.generate(
//                   100,
//                   (index) => Container(
//                     height: 100,
//                     margin: EdgeInsets.all(8.0),
//                     color: Colors.grey[300],
//                     child: Center(child: Text('Item $index')),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() => runApp(MaterialApp(home: AnimatedHeaderPage()));



import 'package:flutter/material.dart';
import 'package:portfolio/pages/home.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aaron Ginder',
      theme: ThemeData.light(),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

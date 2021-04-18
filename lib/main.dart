import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_design/src/screens/basic_design.dart';
import 'package:flutter_app_design/src/screens/home_screen.dart';
import 'package:flutter_app_design/src/screens/scroll_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_screen': (_) => ScrollScreen(),
        'home_screen': (_) => HomeScreen(),
      },
    );
  }
}

// class _TempHomeScreen extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text('Holaaea'),
//         Text('Holaaa'),
//       ],
//     );
//   }
// }
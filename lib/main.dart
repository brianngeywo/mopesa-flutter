// single widget app

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello World Demo Application',
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home: MyHomePage(title: 'Home page'),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//         ),
//         padding: EdgeInsets.all(50),
//         child: Center(
//           child: Text(
//             'First App',
//             style: TextStyle(
//               color: Colors.black,
//               letterSpacing: 0.5,
//               fontSize: 20,
//             ),
//             textDirection: TextDirection.ltr,
//           ),
//         ));
//   }
// }

//multiple widgets app
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Text('Hello World this is my first flutter app')),
    );
  }
}
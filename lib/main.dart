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

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Message"),
            content: new Text("Hello world"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("funga hii kitu"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("gestures")),
        body: Center(
          child: GestureDetector(
            onTap: () {
              _showDialog(context);
            },
            child: Text('Helloworld'),
          ),
        ));
  }
}


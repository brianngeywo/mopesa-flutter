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
      appBar: AppBar(title: Text("Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        children: <Widget>[
          ProductBox(
            name: "iPhone",
            description: "iPhone is the stylist phone ever",
            price: 10000,
            image: "1.jpg"
          ),
          ProductBox(
            name: "iPhone",
            description: "iPhone is the stylist phone ever",
            price: 10000,
            image: "2.jpg"
          ),
          ProductBox(
            name: "iPhone",
            description: "iPhone is the stylist phone ever",
            price: 10000,
            image: "3.jpg"
          ),
          ProductBox(
            name: "iPhone",
            description: "iPhone is the stylist phone ever",
            price: 10000,
            image: "4.jpg"
          ),
          ProductBox(
            name: "iPhone",
            description: "iPhone is the stylist phone ever",
            price: 10000,
            image: "5.jpg"
          ),
          ProductBox(
            name: "iPhone",
            description: "iPhone is the stylist phone ever",
            price: 10000,
            image: "6.jpg"
          ),
          ProductBox(
            name: "iPhone",
            description: "iPhone is the stylist phone ever",
            price: 10000,
            image: "7.jpg"
          ),
          ProductBox(
            name: "iPhone",
            description: "iPhone is the stylist phone ever",
            price: 10000,
            image: "8.jpg"
          ),
          ProductBox(
            name: "iPhone",
            description: "iPhone is the stylist phone ever",
            price: 10000,
            image: "9.jpg"
          ),
        ],
      )
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image}) : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Image.asset("assets/images/" + image,             	
                fit: BoxFit.cover,
                height: double.infinity,
                width: 150,
            )),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(this.name,
                    style: TextStyle(fontWeight: FontWeight.w800)),
                    Text(this.description),
                    Text("Price: " + this.price.toString()),
                  ],
                )))
          ])));
  }
}
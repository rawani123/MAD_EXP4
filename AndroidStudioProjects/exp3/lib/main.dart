import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Example',
      theme: ThemeData(
        primaryColor: Colors.deepPurple, // App bar color
        backgroundColor: Colors.white, // Background color
        appBarTheme: AppBarTheme(
          centerTitle: true, // Center the app bar title
          backgroundColor: Colors.deepPurple, // App bar color
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '42_ANIRUDDHA_Exp3', // Title in the AppBar
            style: TextStyle(color: Colors.white), // App bar text color
          ),
          backgroundColor: Colors.deepPurple, // App bar color
        ),
        backgroundColor: Colors.lightBlue[200], // Background color of the body
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
            children: <Widget>[
              Text(
                'Hello World!', // Body Text
                style: TextStyle(fontSize: 24, color: Colors.black, fontStyle: FontStyle.italic), // Text style with italic font
              ),
              SizedBox(height: 20), // Spacer
              ElevatedButton(
                onPressed: () {
                  // Button action
                },
                child: Text('Click Me'), // Button Text
              ),
              SizedBox(height: 20), // Spacer
            ],
          ),
        ),
      ),
    );
  }
}

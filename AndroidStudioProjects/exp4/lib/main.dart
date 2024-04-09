import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '42_ANIRUDDHA_Exp4',
      theme: ThemeData(
        primaryColor: Colors.blue[900], // Darker shade of blue for app bar color
        backgroundColor: Colors.white, // Background color
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '42_ANIRUDDHA_Exp4', // Title in the AppBar
            style: TextStyle(
              color: Colors.white,// App bar text color
            ),
          ),
          centerTitle: true, // Center align the app bar text
          backgroundColor: Colors.blue[700], // App bar color
        ),
        body: Column(
          children: [
            Expanded(
              child: MyForm(),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20), // Margin from the bottom
              child: ElevatedButton(
                onPressed: () {
                  // Action for the button
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[700], // Green color for button
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Button border radius
                  ),
                ),
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  // Button text style
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController(); // Controller for password field

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _phoneNumberController,
              decoration: InputDecoration(
                labelText: 'Phone Number',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your phone number';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true, // Hide the password characters
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            SizedBox(height: 20), // Spacer
          ],
        ),
      ),
    );
  }
}

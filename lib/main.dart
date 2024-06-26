import 'package:flutter/material.dart';

import 'LoginPAge.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0), // Add horizontal padding here
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                 Text(
                  'Enter OTP',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

              SizedBox(height: 10),
              Text(
                  'Enter your OTP we just sent you \non your mobile number to get \naccess.',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16),
                ),
              SizedBox(height: 50),
              Row(
                children: List.generate(5, (index) => OtpTextField()).toList(),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Didn't get OTP?",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "2:00",
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                  Align(alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Resend OTP functionality
                      },
                      child: Text(
                        'Resend OTP',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      // Get access functionality
                    },
                    child: Text('Get Access'),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OtpTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
      ),
    );
  }
}

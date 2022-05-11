import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Center(
            child: Text(
              "This a Dummy Application it is in a development Phase",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}

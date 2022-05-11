import 'package:flutter/material.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

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
              "Account Details",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}

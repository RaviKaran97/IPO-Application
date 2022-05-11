import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerDetails extends StatelessWidget {
  double width = 0.0;
  double height = 0.0;
  DrawerDetails _drawerDetails = Get.put(DrawerDetails());

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Account Details"),
          Text("About Us"),
          Text("info"),
        ],
      ),
    );
  }
}

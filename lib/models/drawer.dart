import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:know/controllers/dashboard_controller.dart';
import 'package:know/views/about_us.dart';
import 'package:know/views/account_details.dart';
import 'package:know/views/dashboard.dart';

class MyDrawer extends StatelessWidget {
  DashBoardController _dashBoardController = Get.put(DashBoardController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue[100],
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: _dashBoardController.tabs.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: InkWell(
                  onTap: (() {
                    if (index == 0) {
                      Get.to(() => DashBoard());
                    }
                    if (index == 1) {
                      Get.to(() => AccountDetails());
                    }
                    if (index == 2) {
                      Get.to(() => AboutUs());
                    }
                  }),
                  child: Container(
                    height: 50,
                    width: 280,
                    child: Center(
                      child: Text(
                          _dashBoardController.tabs[index]["name"].toString()),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400]!,
                            offset: Offset(2.0, 5.0),
                            blurRadius: 0.0,
                            spreadRadius: 3.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ]),
                  ),
                ),
              ),
            );
          })),
    );
  }
}

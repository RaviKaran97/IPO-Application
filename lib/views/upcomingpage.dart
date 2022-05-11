import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:know/controllers/ipo_controller.dart';
import 'package:know/views/upcomingipodetails.dart';

class UpcomingPage extends StatelessWidget {
  IpoController _ipoController = Get.put(IpoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text("Up Coming IPOs"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: _ipoController.upcomingIPO.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => UpcomingIpodetails(index));
                    },
                    child: Container(
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          _ipoController.upcomingIPO[index]["Name"].toString(),
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          })),
    );
  }
}

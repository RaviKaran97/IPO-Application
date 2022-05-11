import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:know/controllers/ipo_controller.dart';
import 'package:know/views/liveipodetails.dart';

class LivePage extends StatelessWidget {
  IpoController _ipoController = Get.put(IpoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text("Live IPOs"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: _ipoController.liveIPO.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  InkWell(
                    onTap: (() {
                      Get.to(() => LiveIpoDetails(index));
                    }),
                    child: Container(
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                            _ipoController.liveIPO[index]["Name"].toString(),
                            style: TextStyle(fontSize: 30)),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

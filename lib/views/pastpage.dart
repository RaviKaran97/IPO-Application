import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:know/controllers/ipo_controller.dart';
import 'package:know/views/pastipodetails.dart';

class PastPage extends StatelessWidget {
  IpoController _ipoController = Get.put(IpoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text("Past IPOs"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: _ipoController.pastIpo.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: InkWell(
                  onTap: (() {
                    Get.to(() => PastIpoDetails(index));
                  }),
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      _ipoController.pastIpo[index]["Name"].toString(),
                      style: TextStyle(fontSize: 30),
                    )),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

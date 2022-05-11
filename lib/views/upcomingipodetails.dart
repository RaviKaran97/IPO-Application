import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:know/controllers/ipo_controller.dart';

class UpcomingIpodetails extends StatelessWidget {
  IpoController _ipoController = Get.put(IpoController());

  final index;
  UpcomingIpodetails(this.index);
  List keys = [];
  List values = [];
  @override
  Widget build(BuildContext context) {
    funct();
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(_ipoController.upcomingIPO[index]["Name"].toString()),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
              // physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: _ipoController.upcomingIPO[index].length,
              itemBuilder: (context, index) {
                return cont(keys[index], values[index]);
              }),
        ),
      ]),
    );
  }

  Widget cont(String key, value) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                key,
                style: TextStyle(fontSize: 25),
              )),
            ),
            Container(
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  value,
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  funct() {
    _ipoController.upcomingIPO[index].forEach((key, value) {
      keys.add(key);
      values.add(value);
    });
    print(_ipoController.upcomingIPO[index].length);
  }
}

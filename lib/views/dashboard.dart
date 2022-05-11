import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:know/controllers/dashboard_controller.dart';
import 'package:know/controllers/ipo_controller.dart';
import 'package:know/models/drawer.dart';
import 'package:know/models/events.dart';

import 'package:know/views/livepage.dart';
import 'package:know/views/pastpage.dart';
import 'package:know/views/upcomingpage.dart';

class DashBoard extends StatefulWidget {
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  double width = 0.0;

  double height = 0.0;

  IpoController _ipoController = Get.put(IpoController());

  Events _events = Get.put(Events());

  DashBoardController _dashBoardController = Get.put(DashBoardController());

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text(
            "DashBoard",
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        drawer: MyDrawer(),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Container(
                    height: 150,
                    width: 250,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (index == 0) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UpcomingPage()));
                          } else if (index == 1) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LivePage()));
                          } else if (index == 2) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PastPage()));
                          }
                        },
                        child: Text(_events.name[index]["x"].toString()),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.greenAccent[700]!,
                            offset: Offset(5.0, 5.0),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          )
                        ]),
                  ),
                ),
              );
            }));
  }

  changeIndex(int index) {
    for (int i = 0; i < _dashBoardController.tabs.length; i++) {
      if (i == index) {
        _dashBoardController.tabs[i]["state"] = true;
      } else {
        _dashBoardController.tabs[i]["state"] = false;
      }
      _dashBoardController.pageIndex.value = index;
      setState(() {});
    }
  }
}

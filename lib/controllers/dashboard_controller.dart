import 'package:get/get.dart';

class DashBoardController extends GetxController {
  var pageIndex = 0.obs;
  var tabs = [
    {"name": "DashBoard", "state": true},
    {"name": "Account Details", "state": false},
    {"name": "About Us", "state": false},
  ];
}

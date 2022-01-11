import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getbuilder/controller/my_controller.dart';
import 'package:getbuilder/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  MyController controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Screen());
  }
}

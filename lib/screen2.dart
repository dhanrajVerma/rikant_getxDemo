import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'controller/my_controller.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GetBuilder<MyController>(
                init: MyController(),
                initState: (_){
                  print('Getbuilder state initializing');
                },
                builder: (controller) {
                  return Text("Value is ${controller.count} ",
                      style: TextStyle(color: Colors.black));
                }),
            const SizedBox(
              height: 16,
            ),
            RaisedButton(
              onPressed: Get.find<MyController>().increment,
              child: Text("Increment"),
            ),
            RaisedButton(
              onPressed: Get.find<MyController>().decrement,
              child: Text("Decrement"),
            ),
            RaisedButton(
              onPressed: Get.find<MyController>().reset,
              child: Text("Reset"),
            ),


//               Text("Count value"),
// FlatButton(color:Colors.black,onPressed:(){}, child: Text("Increment the value",style: TextStyle(color: Colors.),)
          ],
        ),
      ),
    );
  }
}

import 'package:get/get.dart';

class MyController extends GetxController{
  int count=0;
  // int get count=>_count;

  void increment(){
    count++;
    update();


  }
  void decrement(){
    count--;
    update();
  }
  void reset(){
    count=0;
    update();

  }

}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getbuilder/pages/product_sell_details.dart';


class SellPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:   const Center(child: Text("Sell")),
        floatingActionButton:
        FloatingActionButton(
          // isExtended: true,
            child: const Icon(Icons.add),
            backgroundColor: Colors.black,
            onPressed: () {
              Get.to(
                  ProductSellDetails());


            }
        )
    );
  }


}
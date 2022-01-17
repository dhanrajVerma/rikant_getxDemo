import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getbuilder/pages/sell.dart';
import 'package:getbuilder/pages/women_product_details.dart';

import 'girls_product_details.dart';
import 'mens_product_details.dart';


class ProductSellDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Text( "Submit an item",style: TextStyle(color: Colors.black),),
        leading:
        IconButton(onPressed:(){ Get.back(result: SellPage());}, icon: Icon(Icons.arrow_back_sharp,color: Colors.black,)

        ),
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            width:400,
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.only(top: 20,left:50),
              child: Text("data"),
            ),
          ),
          const SizedBox(
            height: 1,),
          InkWell(
            onTap: (){

              print("tapped");
            },

            child: AnimatedContainer(
              height: 77,
              width:400,
              color: Colors.white,
              duration: const Duration(seconds: 2),
              curve:Curves.fastOutSlowIn,
              child:  Padding(
                  padding: EdgeInsets.only(top: 30,left:135),
                  child: InkWell(
                    onTap: () {
                      Get.to(WomenProductDetails());
                    },
                    child: const Text("Womenswear"),
                  )
              ),
            ),
          ),
          const SizedBox(
            height: 1,),
          Container(
            height: 80,
            width:400,
            color: Colors.white,
            child:  Padding(
              padding: EdgeInsets.only(top: 30,left:135),
                child: InkWell(
                  onTap: () {
                    Get.to(MenProductDetails());
                  },
                  child: const Text("Menswear"),
                )
            ),
          ),
          const SizedBox(
            height: 1,),
          Container(
            height: 80,
            width:400,
            color: Colors.white,
            child:  Padding(
              padding: EdgeInsets.only(top: 30,left:135),
                child: InkWell(
                  onTap: () {
                    Get.to(GirlProductDetails());
                  },
                  child: const Text("Girlswear"),
                )
            ),
          ),
          const SizedBox(
            height: 1,),
          Container(
            height: 80,
            width:400,
            color: Colors.white,
            child:  Padding(
              padding: EdgeInsets.only(top: 30,left:135),
              child: GestureDetector(
                  onTap: () {
                    Get.to("");
                  },
                  child: Text("Boyswear")),
            ),
          ),

        ],
      ),

    );


  }}


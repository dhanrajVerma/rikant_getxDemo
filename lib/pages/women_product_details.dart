import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:getbuilder/pages/product_sell_details.dart';

class WomenProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Submit an item",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
              onPressed: () {
                Get.back(result: ProductSellDetails());
              },
              icon: const Icon(
                Icons.arrow_back_sharp,
                color: Colors.black,
              )),
        ),
        body: Column(children: [
          Container(
            height: 120,
            width: 400,
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.only(top: 50, left: 50),
              child: Text("data"),
            ),
          ),
          const SizedBox(height: 1,),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 5,
                // userdata.length,
                itemBuilder: (BuildContext context, int index) {
                  // var firstUser = userdata[index];
                  // return GestureDetector(
                  // onTap: () {
                  // // setState(() {
                  // // id = firstUser.id;
                  // // showListview = false;
                  // // });
                  // },
                  return
                    //       Padding(
                    // padding: const EdgeInsets.all(2.0),
                    //   child:
                    // SizedBox(
                    //     height: 90,
                    //     child: Column(
                    //       children: [
                    Container(
                      decoration: const BoxDecoration(

                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 3.0,
                          ),
                        ],
                      ),

                      child: ExpansionTile(
                        backgroundColor: Colors.white,
                        title: const Padding(
                          padding: EdgeInsets.only(left:130.0),
                          child: Text('product',style: TextStyle(color: Colors.black),),
                        ),
                        children: [
                          Container(

                            color: Colors.grey,
                            height:150,
                            child: ListView.builder(
                                itemCount:4,
                                itemBuilder: (context,index){
                                  return const Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text('product',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                  );


                                }),
                          )
                        ],

                      ),

                      // child: Padding(
                      //     padding: const EdgeInsets.all(15.0),
                      //     child: Row(children: [
                      //       const Text(
                      //         "NewIn",
                      //         style: TextStyle(
                      //             fontSize: 20, color: Colors.black),
                      //       ),
                      //       const SizedBox(
                      //         width: 200,
                      //       ),
                      //       IconButton(
                      //         iconSize: 20,
                      //         icon: Icon(isStretchedDropDown
                      //             ? Icons.expand_more
                      //             : Icons.expand_less),
                      //         onPressed: () {
                      //           setState(() {
                      //             isStretchedDropDown =
                      //                 !isStretchedDropDown;
                      //           });
                      //         },
                      //       ),
                      //       // ExpandedSection(
                      //       //     expand: isStretchedDropDown,
                      //       //     height: 100,
                      //       //     child:
                      //       //     // MyScrollbar(
                      //       //     //   builder: (context, scrollController2) =>
                      //       //           // builder: (context, scrollController2) =>
                      //       //           ListView.builder(
                      //       //               padding: EdgeInsets.all(0),
                      //       //               shrinkWrap: true,
                      //       //               itemCount: _list.length,
                      //       //               itemBuilder: (context, index) {
                      //       //                 return RadioListTile(
                      //       //                     title: Text(
                      //       //                         _list.elementAt(index)),
                      //       //                     value: index,
                      //       //                     groupValue: groupValue,
                      //       //                     onChanged: (val) {
                      //       //                       setState(() {
                      //       //                         groupValue =
                      //       //                             0;
                      //       //                         title = _list
                      //       //                             .elementAt(index);
                      //       //                       });
                      //       //                     });
                      //       //               }),
                      //       //     )
                      //
                      //     ])),


                      // )])
                    );
                }),
          ),
        ]));
  }
}

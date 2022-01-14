import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getbuilder/list/product_list.dart';
import 'package:getbuilder/list/search_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // final Products _p = Get.put(Products());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[5],
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10),
              child: IconButton(
                icon: Icon(Icons.search),
                color: Colors.black,
                onPressed: () {
                  Get.to(ProductList());
                },
              ),
            ),

            // Row(
            //   children: <Widget>[
            //     Padding(
            //       padding: const EdgeInsets.only(top: 7.0,left: 10),
            //       child: Container(
            //         height: 50,
            //         width: 250,
            title:

                // decoration: BoxDecoration(
                //     color: Colors.grey[200],
                //     borderRadius: BorderRadiusDirectional.circular(3)),
                // child: Column(
                //   children:   <Widget>[
                Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadiusDirectional.circular(3)),

                    child:  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        onTap:(){
                          Get.to(
                          ItemList());


                        },
                          decoration: const InputDecoration(
                            hintText: ('Search '),

                            border: InputBorder.none,



                          )),
                    )),
              ),
            ),
          ),
        ),

        //             ),
        //             // IconButton(onPressed:(){}, icon:Icon(Icons.favorite))
        //           ],
        //         ),
        //
        //   ),
        // ),

        body: Column(children: [

          // GestureDetector(
          //   child: ElevatedButton(
          //       child: Text('fashion'),
          //       onPressed: () {
          //         showModalBottomSheet<void>(
          //             context: context,
          //             builder: (BuildContext context) {
          //               return Container(
          //                 height: 400,
          //                 color: Colors.white,
          //                 child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Container(
          //                         child: Row(
          //                       children: [
          //                         IconButton(
          //                           icon: Icon(Icons.close),
          //                           // color: Colors.,
          //                           onPressed: () {
          //                             Get.to(HomePage());
          //                           },
          //                         ),
          //                       ],
          //
          //                       // IconButton( icon:Icon(Icons.favorite),
          //                       //   color: Colors.black,
          //                       //   onPressed: () {
          //                       //     Get.to( WishListScreen());
          //                       //   },),
          //                     )
          //                     ),
          //
          //                   ],
          //                 ),
          //               );
          //             });
          //       }),
          // ),
          Expanded(
              child: ListView(scrollDirection: Axis.vertical,
                  // child:Column(
                  children: <Widget>[
                Column(
                  children: [
                    Container(
                        height: 50,
                        color: Colors.red,
                        child: Center(
                          child: Text("Home Page"),
                        )),
                    Container(
                        height: 250,
                        color: Colors.grey,
                        child: Center(
                          child: Text(""),
                        )),


                      // child: Container(
                      //   // decoration: BoxDecoration(shape: BoxShape.rectangle),
                      //   height: 100,
                      //   color: Colors.grey,
                      // ),
                      //   )
                      // ],


                    SizedBox(height: 20,),
                    Container(
                    height: 200,
                    color: Colors.white,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child:

                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Card(
                                    elevation: 5,

                                    child: Container(
                                      width: 130,

                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Card(

                                            elevation: 5,
                                              shadowColor: Colors.grey,
                                              // margin: EdgeInsets.all(50),
                                          clipBehavior: Clip.antiAlias,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(10.0),
                                            child: Image.network('https://wallpapercave.com/wp/wp6124195.jpg',


                                            ),
                                          )),
                                          Padding(
                                            padding: const EdgeInsets.only(top:20.0),
                                            child: Text("2222222222"),
                                          )
                                        ],

                                      ),
                                    ),
                                  ),
                                ),


                        );

                      },

                    )),
                    SizedBox(height: 50,),
                    Container(
                      child: const Padding(
                        padding: EdgeInsets.only(right:200.0),
                        child: Text("Louis Vuitton: Leather",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 15),),
                      ),
                    ),
                    Container(
                        height: 200,
                        color: Colors.white,

                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(2.0),
                              child:

                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Card(
                                  elevation: 5,

                                  child: Container(
                                    width: 130,

                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          // borderRadius: BorderRadius.circular(10.0),
                                          child: Image.network('https://wallpapercave.com/wp/wp6124195.jpg',


                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:20.0),
                                          child: Text("2222222222"),
                                        )
                                      ],

                                    ),
                                  ),
                                ),
                              ),


                            );

                          },

                        )),
                    const SizedBox(height: 300,),
                    Container(
                      height: 100,
                      color: Colors.black,
                    ),
                ]
                )
              ]))
        ]));
  }
}
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("HomeScreen"),
//             FlatButton(onPressed: (){
//
//               Get.toNamed("/detail");
//
//             }, child: Text("Go to details"),
//             color: Colors.grey,
//             )
//           ],
//
//         ),
//       ),
//
//
//
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getbuilder/list/product_list.dart';
import 'package:getbuilder/pages/account.dart';
import 'package:getbuilder/pages/home_page.dart';



class ItemList extends StatefulWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  _ItemListState createState() => new _ItemListState();
}

class _ItemListState extends State<ItemList> {
  // TextEditingController _textController = TextEditingController();
  //
  // static List<String> mainDataList = [
  //   "Apple",
  //   "Apricot",
  //   "Banana",
  //
  // ];
  //
  // // Copy Main List into New List.
  // List<String> newDataList = List.from(mainDataList);
  //
  // onItemChanged(String value) {
  //   setState(() {
  //     newDataList = mainDataList
  //         .where((string) => string.toLowerCase().contains(value.toLowerCase()))
  //         .toList();
  //   });
  // }
  // Widget appBarTitle = new Text("AppBar Title");
  // Icon actionIcon = new Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:
          Row(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                color: Colors.grey,
                onPressed: () {
                  Get.to(ProductList());

                },),
              Container(
                height: 48,
                width: 150,


                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadiusDirectional.circular(3)),
                child: Column(
                  children:   const <Widget>[
                    TextField(

                        decoration: InputDecoration(
                          hintText: ('Search '),
                          // icon: SvgPicture.asset("assets/icons/search.svg"),
                          border: InputBorder.none,


                        )),
                  ],
                ),
              ),
              // IconButton(
              //   icon: Icon(Icons.search),
              //   color: Colors.grey,
              //   onPressed: () {
              //     // Get.to(ProductList());
              //
              //   },),
            ],

          ),

        ),
        // appBar: new AppBar(
        //     centerTitle: true,
        //     title:appBarTitle,
        //     actions: <Widget>[
        //       new IconButton(icon: actionIcon,onPressed:(){
        //         setState(() {
        //           if ( this.actionIcon.icon == Icons.search){
        //             this.actionIcon = new Icon(Icons.close);
        //             this.appBarTitle = new TextField(
        //               style: new TextStyle(
        //                 color: Colors.white,
        //
        //               ),
        //               decoration: new InputDecoration(
        //                   prefixIcon: new Icon(Icons.search,color: Colors.white),
        //                   hintText: "Search...",
        //                   hintStyle: new TextStyle(color: Colors.white)
        //               ),
        //             );}
        //           else {
        //             this.actionIcon = new Icon(Icons.search);
        //             this.appBarTitle = new Text("AppBar Title");
        //           }
        //
        //
        //         });
        //       } ,),]

        body:
        Column(
            children:[
              // children: <Widget>[
              //   Padding(
              //     padding: const EdgeInsets.all(12.0),
              //     child: TextField(
              //       controller: _textController,
              //       decoration: InputDecoration(
              //         hintText: 'Search Here...',
              //       ),
              //       onChanged: onItemChanged,
              //     ),
              //   ),
              //   Expanded(
              //     child: ListView(
              //       padding: EdgeInsets.all(12.0),
              //       children: newDataList.map((data) {
              //         return ListTile(
              //           title: Text(data),
              //           onTap: ()=> print(data),);
              //       }).toList(),
              //     ),
              //   ),



              Container(
                child: const TabBar(
                  labelStyle:
                  TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      text: "Items",
                    ),
                    Tab(
                      text: "Members",
                    ),
                  ],
                ),
              ),


               const Expanded(
                child: TabBarView(children: [
                  AccountPage(),
                  AccountPage(),

                ]),
              ),


            ]

        ),
      ),
    );

  }
}

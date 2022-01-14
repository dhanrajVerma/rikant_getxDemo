import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getbuilder/list/women_list.dart';

import 'children_list.dart';
import 'men_list.dart';


class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Colors.white,
            title:
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                IconButton(
                  icon: const Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {

                  },),

                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    height: 48,
                    width: 200,


                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadiusDirectional.circular(3)),
                    child: Column(
                      children:   <Widget>[
                        TextField(
                            onTap: (){
                              showSearch(context: context,delegate: DataSearch());

                            },
                            decoration: const InputDecoration(
                              hintText: ('Search for cuisine,restaurants'),
                              // icon: SvgPicture.asset("assets/icons/search.svg"),
                              border: InputBorder.none,



                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),

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
            children: [
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
                      text: "Women",
                    ),
                    Tab(
                      text: "Men",
                    ),
                    Tab(
                      text: "Children",
                    ),
                  ],
                ),
              ),


              Expanded(
                child: TabBarView(children: [
                  const WomenList(),
                  MenList(),
                  ChildrenList(),
                ]),
              ),


            ]

        ),
      ),
    );
  }
}
class DataSearch extends SearchDelegate<String>{
  final product=[
    "Gucci",
    'louis vuittion',"prada","chanel","balenciaga"
  ];
  final recentProduct=[
    "Gucci",
    'louis vuittion',"prada","chanel",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {

  }

  @override
  Widget? buildLeading(BuildContext context) {
    return
      IconButton(icon: AnimatedIcon(icon:AnimatedIcons.menu_arrow,progress: transitionAnimation),
        onPressed: (){
          close(context, "");

        },
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList=query.isEmpty?recentProduct:product;
    return ListView.builder(itemCount:suggestionList.length,itemBuilder: (context,index)=> ListTile(

      title:Text( suggestionList[index]),

    ));

  }

}
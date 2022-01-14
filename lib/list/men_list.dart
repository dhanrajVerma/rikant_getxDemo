import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenList extends StatefulWidget {
  const MenList({Key? key}) : super(key: key);

  @override
  _WomenListState createState() => _WomenListState();
}

class _WomenListState extends State<MenList> {
  final
  List<String>items=<String>['bag','purse'];
  String? value;
  String? valueChoose;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
            children: [
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,

                    shrinkWrap: true,
                    itemCount: 6,
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
                        Container(
                            height: 60,
                            child: Card(
                                child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                        children: [

                                          Text("NewIn",style: TextStyle(fontSize: 20,color: Colors.black),),
                                          SizedBox(
                                            width: 200,
                                          ),
                                          IconButton(iconSize: 20, icon: Icon(Icons.arrow_downward), onPressed: () {  },
                                            // DropdownButton(
                                            //   icon: Icon(
                                            //     Icons.person,
                                            //     color: Colors.redAccent,
                                            //     size: 20.09,
                                            //   ),
                                            //   isExpanded: true,
                                            //   items: items.map((val) {
                                            //     return DropdownMenuItem(
                                            //       value: val,
                                            //       child: Text(val),
                                            //     );
                                            //   }).toList(),
                                            //   value: valueChoose,
                                            //   onChanged: (newValue) {
                                            //     setState(() {
                                            //       valueChoose = value as String?;
                                            //     });
                                            //   },
                                            // ),
                                            // Text(
                                            //   "88888",
                                            //   style: const TextStyle(
                                            //       color: Color(0xFF595959)),
                                            // ),



                                          )
                                        ]
                                    )
                                )
                            )
                        );
                    }
                ),
              )
            ]
        )

    );
  }

}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class WomenList extends StatefulWidget {
  const WomenList({Key? key}) : super(key: key);

  @override
  _WomenListState createState() => _WomenListState();
}

List<String> _list = ['Dog', "Cat", "Mouse", 'Lion'];

class _WomenListState extends State<WomenList> {
  late bool isStretchedDropDown ;
  void initState() {
    isStretchedDropDown = false;
    super.initState();
  }

  String? value;
  String? valueChoose;
  late int? groupValue;
  String title = 'Select Animals';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [

          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 20,
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
                    Card(
                      child: ExpansionTile(title: Text('New In'),
                        children: [
                          Container(
                            height:600,
                            child: ListView.builder(
                                itemCount:10,
                                itemBuilder: (context,index){
                                  return const ListTile(
                                      title:

                                      Text('product',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
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

// class ExpandedSection extends StatefulWidget {
//   final Widget child;
//   final int height;
//   final bool expand;
//
//   ExpandedSection(
//       {this.expand = false, required this.child, required this.height});
//
//   @override
//   _ExpandedSectionState createState() => _ExpandedSectionState();
// }
//
// class _ExpandedSectionState extends State<ExpandedSection>
//     with SingleTickerProviderStateMixin {
//   late AnimationController expandController;
//   late Animation<double> animation;
//
//   @override
//   void initState() {
//     super.initState();
//     prepareAnimations();
//     _runExpandCheck();
//   }
//
//   ///Setting up the animation
//   void prepareAnimations() {
//     expandController =
//         AnimationController(vsync: this, duration: Duration(milliseconds: 500));
//     animation = CurvedAnimation(
//       parent: expandController,
//       curve: Curves.fastOutSlowIn,
//     );
//   }
//
//   void _runExpandCheck() {
//     if (widget.expand) {
//       expandController.forward();
//     } else {
//       expandController.reverse();
//     }
//   }
//
//   @override
//   void didUpdateWidget(ExpandedSection oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     _runExpandCheck();
//   }
//
//   @override
//   void dispose() {
//     expandController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizeTransition(
//         axisAlignment: 1.0,
//         sizeFactor: animation,
//         child: Container(
//           padding: EdgeInsets.only(bottom: 5),
//           constraints: BoxConstraints(
//               //minHeight: 100,
//               minWidth: double.infinity,
//               maxHeight: widget.height > 5
//                   ? 195
//                   : widget.height == 1
//                       ? 55
//                       : widget.height * 50.0),
//           child: Padding(
//               padding: const EdgeInsets.only(bottom: 5), child: widget.child),
//         ));
//   }
// }

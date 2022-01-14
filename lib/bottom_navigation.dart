import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getbuilder/pages/account.dart';
import 'package:getbuilder/pages/home_page.dart';
import 'package:getbuilder/pages/sell.dart';

class LandingPage extends StatelessWidget {

  // final ScrollController _homeController = ScrollController();
  // int _currentTab = 0;
  //
  // LandingPage({Key? key}) : super(key: key);
  // void _selectedTab(int index) {
  //   if (_currentTab == index) {
  //     _homeController.animateTo(
  //       0.0,
  //       curve: Curves.easeOut,
  //       duration: const Duration(milliseconds: 300),
  //     );
  //     // if (index == 0) {
  //     //   landingPageController.tabIndex.value=0;
  //     }
  //     else {
  //       _myPageController.animateTo(
  //         0.0,
  //         curve: Curves.easeOut,
  //         duration: const Duration(milliseconds: 300),
  //       );
  //     }
  //   } else {
  //
  // _currentTab  = index;
  //
  //   }
  // }


  late String label;
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
  const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, Controller) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 2.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(

            // currentIndex: controller.state.value == HomeState.home ? 0 : 1,
            // onTap: (index) => index == 0 ? controller.selectHome() : controller.selectSettings(),
            showUnselectedLabels: true,
            showSelectedLabels: true,
            // onTap:(index)=>index==0?Controller.HomePage(): Controller.changeTabIndex,
            // currentIndex: Controller.tabIndex.value==tabIndex?0:1,
            onTap:
            // _selectedTab,
            // (index)=>index==0?
            // Controller.changeTabIndex():
            //   setState((){
            //
            //   }
            //   )
            // }
            Controller.changeTabIndex,
            // _scrollDown(),
            currentIndex: Controller.tabIndex.value,
            // ==tabIndex?0:1,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.black,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(

                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.home,
                    size: 20.0,
                  ),
                ),
                label: 'Home',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.search,
                    size: 20.0,
                  ),
                ),
                label: 'Explore',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(Icons.add,
                    size: 20.0,
                  ),
                ),
                label: 'sell',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(Icons.notifications,
                    size: 20.0,
                  ),
                ),
                label: 'notifications',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.settings,
                    size: 20.0,
                  ),
                ),
                label: 'Settings',
                backgroundColor: Colors.white,
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController = Get.put(LandingPageController(), permanent: false);
    return WillPopScope( onWillPop:()async {

      if( landingPageController.tabIndex.value ==0){

        return true;
      }else{
        landingPageController.tabIndex.value=0;
        return false;
      }


    },


        child:

        SafeArea(
            child: Scaffold(
              backgroundColor: Colors.grey[20],
              bottomNavigationBar:
              buildBottomNavigationMenu(context, landingPageController),
              body: Obx(() => IndexedStack(
                index: landingPageController.tabIndex.value,
                children: [
                  const HomePage(),
                     AccountPage(),
                  SellPage(),


                  // SettingsPage(),
                ],
              )),
            )
        ));
  }


}
class LandingPageController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {

    tabIndex.value = index;

  }


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
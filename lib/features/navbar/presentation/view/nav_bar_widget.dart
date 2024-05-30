import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:musafeer_graduation_project/features/navbar/presentation/view/screens/add_shipment_or_trip.dart';
import 'package:musafeer_graduation_project/features/navbar/presentation/view/screens/chat.dart';
import 'package:musafeer_graduation_project/features/navbar/presentation/view/screens/home.dart';
import 'package:musafeer_graduation_project/features/navbar/presentation/view/screens/notfications.dart';
import 'package:musafeer_graduation_project/features/navbar/presentation/view/screens/search.dart';
import '../../../../utils/constants.dart';
import 'widgets/tab_bar.dart';


class MyHomePages extends StatefulWidget {
 const MyHomePages({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePages> with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;
  @override
  void initState() {
    currentPage =2;
    tabController = TabController(length: 5, vsync: this,initialIndex: 2);
    tabController.animation!.addListener(
          () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomBar(

        fit: StackFit.expand,
        borderRadius: BorderRadius.circular(500),
        duration:const  Duration(seconds: 1),
        curve: Curves.decelerate,
        showIcon: true,
        width: MediaQuery.of(context).size.width * 0.8,
        barColor: Colors.white,

        offset: 10,
        barAlignment: Alignment.bottomCenter,
        iconHeight: 35,
        iconWidth: 35,
        reverse: false,
        hideOnScroll: true,
        scrollOpposite: false,
        onBottomBarHidden: () {},
        onBottomBarShown: () {},
        body: (context, controller) => TabBarView(
          controller: tabController,
          dragStartBehavior: DragStartBehavior.down,
          physics: const BouncingScrollPhysics(),
          children:  [
            HomeWidget(),
            Notfications(),
            AddShipmentOrTrip(),
            Chat(),
            Search(),
          ],

        ),
        child:  TabBar(
          indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
          controller: tabController,
          indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(
                  color:  Constants.kPrimaryColor,
                  width: 4),
              insets: EdgeInsets.fromLTRB(16, 0, 16, 8)),
          tabs: [
            TabBarIcon(selectedIcon: Icons.home,unselectedIcon: Icons.home_outlined,iconSelected: currentPage == 0,),
            TabBarIcon(selectedIcon: Icons.notifications,unselectedIcon: Icons.notifications_none,iconSelected: currentPage == 1,),
            TabBarIcon(selectedIcon: Icons.add,unselectedIcon: Icons.add_circle,iconSelected: currentPage == 2,addIcon: true,),
            TabBarIcon(selectedIcon: Icons.chat,unselectedIcon: Icons.chat_outlined,iconSelected: currentPage == 3,),
            TabBarIcon(selectedIcon: Icons.search_rounded,unselectedIcon: Icons.search_off,iconSelected: currentPage == 4,),
          ],
        ),
      ),
    );
  }
}
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:musafeer_graduation_project/features/profile/presentation/view/profile.dart';
import 'package:musafeer_graduation_project/utils/constants.dart';

import '../../../../../utils/mainWidgets/custom_smal_button.dart';
import '../../../../../utils/textStyles.dart';
import '../../../../deals/presentation/view/deals.dart';
import '../../../../my_shipment/presentation/view/my_shipment.dart';
import '../../../../my_trips/presentation/view/my_trips.dart';
import '../../../../reuquest_details/presentation/view/request_details.dart';
import 'widgets/home_body.dart';
import 'widgets/home_functions.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  bool _bool = true;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    _animation1 = Tween<double>(begin: 0, end: 20).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          _bool = true;
        }
      });
    _animation2 = Tween<double>(begin: 0, end: .3).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    _animation3 = Tween<double>(begin: .9, end: 1).animate(CurvedAnimation(
        parent: _animationController,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.ease))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        physics: _bool ? BouncingScrollPhysics(): NeverScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: AppBar(
              elevation: 0,
              titleSpacing: 20,
              backgroundColor: Colors.transparent,
              leadingWidth: 45,
              toolbarHeight: 45,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (){
                        if (_bool == true) {
                          _animationController.forward();
                        } else {
                          _animationController.reverse();
                        }
                        _bool = false;
                      },
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Constants.kPrimaryColor.withOpacity(0.2), width: 2)
                          ),
                          child: ImageIcon(AssetImage('assets/images/Icon.png',)))


                  ),
                  GestureDetector(
                      onTap: (){
                        if (_bool == true) {
                          _animationController.forward();
                        } else {
                          _animationController.reverse();
                        }
                        _bool = false;
                      },
                      child: Container(


                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(29),
                            border: Border.all(color: Constants.kPrimaryColor.withOpacity(0.2), width: 2)
                        ),
                        child:  CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
                          }, icon: Icon(Icons.person_2_outlined)),
                        ),
                      )


                  )

                ],),


            ),
          ),
          SliverToBoxAdapter(child: SizedBox(
            height: 20,
          ),),
          SliverToBoxAdapter(
            child: Container(
              width: _width,
              child: Stack(
                children: [

                  Align(
                      alignment: Alignment.center,
                      child: HomeBody()),
                  // EVERYTHING SHOULD BE HERE...
                  SizedBox(
                    height: _height,
                    width: _width,
                    child: null,
                  ),

                  // ALWAYS PLACE IT ON THE BOTTOM OF EVERY WIDGET...
                  CustomNavigationDrawer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget CustomNavigationDrawer() {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return BackdropFilter(
      filter: ImageFilter.blur(
          sigmaY: _animation1.value, sigmaX: _animation1.value),
      child: Container(
        height: _bool ? 0 : _height,
        width: _bool ? 0 : _width,
        color: Colors.transparent,
        child: Align(
          alignment: Alignment.topCenter,
          child: Transform.scale(
            scale: _animation3.value,
            child: Container(
              width: _width * .9,
              height: _width * 1.3,
              decoration: BoxDecoration(
                color: Constants.kTextPrimaryColor.withOpacity(_animation2.value),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 35,
                    child: Image.asset('assets/images/ahmed.png',fit: BoxFit.cover,width: 70,height: 70,)
                  ),
                  Text('Ahmed Ali', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white
                  ),),
                  SizedBox(height: 30,),
                  Column(
                    children: [
                      HomeTile(title: 'My Trips',voidCallback: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyTrips(),));
                      },imageIcon: 'assets/images/plane.png',),
                      HomeTile(title: 'My Shipments',voidCallback: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyShipment(),));


                      },imageIcon: 'assets/images/shipments.png',),
                      HomeTile(title: 'My Requested Deals',voidCallback: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RequestDetails(),));

                      },imageIcon: 'assets/images/deals.png',),
                      HomeTile(title: 'My Owned Deals',voidCallback: (){

                        Navigator.push(context, MaterialPageRoute(builder: (context) => Deals(),));
                      },imageIcon: 'assets/images/owend.png',),
                      HomeTile(title: 'Delivered Orders',voidCallback: (){},imageIcon: 'assets/images/delivered.png',),


                    ],
                  ),
                  SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }





}
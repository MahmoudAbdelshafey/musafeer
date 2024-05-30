import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'login_signup.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({ Key? key }) : super(key: key);

  @override
  _onBoardingState createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> with TickerProviderStateMixin {

  late PageController _pageController;


  List<dynamic> _furnitures = [
    {
      'title': 'Musafeer \Application',
      'sub_title': 'Choose From Thousands Of Items That Like Your Choice.',
      'image': 'assets/images/shipment.jpeg'
    },
    {
      'title': 'Modern \Application',
      'sub_title': 'Choose From Thousands Of Items That Like Your Choice.',
      'image': 'assets/images/shipment.jpeg'
    },
    {
      'title': 'Modern \Application',
      'sub_title': 'Choose From Thousands Of Items That Like Your Choice.',
      'image': 'assets/images/shipment.jpeg'
    },
    {
      'title': 'Modern \Application',
      'sub_title': 'Choose From Thousands Of Items That Like Your Choice.',
      'image': 'assets/images/shipment.jpeg'
    }
  ];

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 20),
    vsync: this
  )..repeat(reverse: true);

  late final Animation<double> _animation = Tween<double>(
    begin: 1.0,
    end: 1.5
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.linear
  ));

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (int index) {
          currentIndex = index;
          _controller.value = 0.0;
          _controller.forward();
        },
        itemBuilder: (context, index) {
          return Container(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.red
                  ),
                  child: ScaleTransition(
                    scale: _animation,
                    child: Image.asset(   _furnitures[index]['image'],
                      fit: BoxFit.cover,),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0.1)
                        ]
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInDown(
                          duration: Duration(milliseconds: 500),
                          child: Text(_furnitures[index]['title'],
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 42, 
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        FadeInDown(
                          delay: Duration(milliseconds: 100),
                          duration: Duration(milliseconds: 800),
                          child: Text(_furnitures[index]['sub_title'],
                            style: TextStyle(
                              color: Colors.grey.shade400, 
                              fontSize: 18,
                            ),
                          )
                        ),
                        SizedBox(height: 50,),
                        FadeInLeft(
                          delay: Duration(milliseconds: 100),
                          duration: Duration(milliseconds: 1000),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)
                              ),
                              onPressed: () {
                                currentIndex = index +1;
                                if(currentIndex == 4){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login_SignUp(),));
                                }else{
                                  _pageController.animateToPage(currentIndex,  duration: Duration(milliseconds: 500),
                                    curve: Curves.easeInOut,);
                                }

                              },
                              color: Colors.orange,
                              padding: EdgeInsets.only(right: 5, left: 30, top: 5, bottom: 5),
                              child: Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Row(
                                  children: [
                                   index == 3 ?GestureDetector(
                                     onTap: (){

                                     },
                                     child: Text('Get Started',
                                       style: TextStyle(
                                         color: Colors.orange.shade50,
                                         fontSize: 16,
                                       ),
                                     ),
                                   ) : GestureDetector(
                                      onTap: (){
                                      },
                                      child: Text('Continue',
                                        style: TextStyle(
                                          color: Colors.orange.shade50,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.orange.shade300,
                                        borderRadius: BorderRadius.circular(40)
                                      ),
                                      child: Icon(Icons.arrow_forward, color: Colors.orange.shade100,)
                                    ),
                                  ],
                                ),
                              )
                            ),
                          ),
                        ), 
                        SizedBox(height: 50),
                      ]
                    )
                  ),
                )
              ],
            ),
          );
        },
        itemCount: _furnitures.length,

        controller: _pageController,
      ),
    );
  }
}
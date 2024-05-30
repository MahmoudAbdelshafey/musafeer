import 'package:flutter/material.dart';

import '../../../../../../utils/constants.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.notText, required this.shipment});

  final String notText;
  final bool shipment;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(


                  child:
                  shipment?
                  Image.asset('assets/images/cube.png', width: 30,height: 30, fit: BoxFit.fill,)
                 : Image.asset('assets/images/messeage.png', width: 30,height: 30, fit: BoxFit.fill,),
                  radius: 30,
                  backgroundColor: Color(0xff050A24),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(

                      children: [
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width*0.5,
                          child: Text(notText, style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Constants.kTextPrimaryColor
                          ),),
                        ),
                        SizedBox(width: 20,),
                        Text('2 m ago', style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                    Text('Tap to  see the detail shipping', style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500
                    ),),

                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: 2,
              color: Colors.grey.withOpacity(0.2),
            )
          ],
        ),
      ),
    );
  }
}

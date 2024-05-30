import 'package:flutter/material.dart';

import '../../../../../../utils/mainWidgets/custom_smal_button.dart';
import '../../../../../../utils/textStyles.dart';

class ShipmentCard extends StatelessWidget {
  const ShipmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( horizontal:  10, vertical: 10),
      width: MediaQuery.of(context).size.width *0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(

        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text('Shipment', style: FontStyles.cardHead1,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: Image.asset('assets/images/rahma.png', fit: BoxFit.cover,),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Rahma Mahmoud', style: FontStyles.cardHead3,),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellowAccent,),
                            Icon(Icons.star, color: Colors.yellowAccent,),
                            Icon(Icons.star, color: Colors.yellowAccent,),
                            Icon(Icons.star, color: Colors.yellowAccent,),
                            Icon(Icons.star_border_outlined, color: Colors.grey,),

                          ],
                        )
                      ],
                    )
                  ], ),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text('From: ',style: FontStyles.cardHead2,),
                      Text('Egypt',)
                    ],
                  ),
                  SizedBox(height: 5,),

                  Row(
                    children: [
                      Text('To: ',style: FontStyles.cardHead2,),
                      Text('Egypt',)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Reward: ',style: FontStyles.cardHead2,),
                      Text('500 \$')
                    ],
                  ),

                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  SizedBox(height: 40,),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage('assets/images/airpods.png'),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                      width: MediaQuery.of(context).size.width *0.3,
                      height: MediaQuery.of(context).size.height*0.05,
                      child: CustomSmalButton(btnFun: (){},btnTitle: 'Send Request',))

                ],
              )
            ],
          ),



        ],
      ),
    );
  }
}

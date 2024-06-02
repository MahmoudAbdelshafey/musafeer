import 'package:flutter/material.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/textStyles.dart';

class RequestDetailsWidget extends StatelessWidget {
  const RequestDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                padding: EdgeInsets.only(bottom: 18),
                child: Column(
                  children: [
                    Row(

                      children: [
                        Text('Shipment', style: FontStyles.cardHead1,),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [

                            Row(children: [
                              Container(
                                width: 50,
                                height: 50,
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
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(image: AssetImage('assets/images/airpods.png'),fit: BoxFit.cover)
                              ),
                            ),
                            SizedBox(height: 40,)


                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                height: 1,
                color: Constants.kTextPrimaryColor,
              )
            ],
          ),
        ],
      ),
    );
  }
}

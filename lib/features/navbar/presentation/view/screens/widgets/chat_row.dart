import 'package:flutter/material.dart';

import '../../../../../../utils/constants.dart';

class ChatRow extends StatelessWidget {
  const ChatRow({super.key});

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
                Image.asset('assets/images/groupChat.png'),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(

                      children: [
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width*0.6,
                          child: Text('Hi there. I’m Bothrs Assistant. How can I help you?', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Constants.kTextPrimaryColor
                          ),),
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.arrow_forward_ios_rounded, size: 15,color: Constants.kPrimaryColor,)
                      ],
                    ),
                    Text('Customer Service・1d ago', style: TextStyle(
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

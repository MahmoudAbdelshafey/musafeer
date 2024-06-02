import 'package:flutter/material.dart';

import '../../../../../../utils/textStyles.dart';

class AddCustomConatiner extends StatelessWidget {
  const AddCustomConatiner({super.key,required this.cardFun, required this.cardIcon, required this.cardTitle});
final String cardTitle;
final String cardIcon;
final VoidCallback cardFun;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: cardFun,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: MediaQuery.of(context).size.height*0.22,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 2),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage(cardIcon),size: 60,),
                  Text(cardTitle,style: FontStyles.cardHead1,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

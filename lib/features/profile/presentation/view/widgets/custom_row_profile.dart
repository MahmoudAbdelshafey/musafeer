import 'package:flutter/material.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/textStyles.dart';

class CustomRowProfile extends StatelessWidget {
  const CustomRowProfile({super.key, required this.btnFun, required this.title, this.logOut = false});
final String title;
final VoidCallback btnFun;
final bool logOut;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
       onTap: btnFun,
        child: Row(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: logOut ? Colors.red :Constants.kTextPrimaryColor,
                      width: 1
                  )
              ),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,style: FontStyles.headline1.copyWith(fontSize: 22, color: logOut? Colors.red :Constants.kTextPrimaryColor),),
                  Visibility(
                      visible: !logOut,
                      child: Spacer()),
                  Visibility(
                      visible:
                      !logOut,
                      child:  Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

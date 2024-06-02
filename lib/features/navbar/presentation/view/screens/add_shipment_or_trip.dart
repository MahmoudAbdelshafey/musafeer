import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';
import 'package:musafeer_graduation_project/utils/constants.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/browse_animation.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/custom_button.dart';
import 'package:musafeer_graduation_project/utils/textStyles.dart';

import '../../../../../utils/mainWidgets/materials_for_main_widgets/dialogs.dart';
import '../../../../add_trip_or_shipment/presentation/view/add_shipment.dart';
import '../../../../add_trip_or_shipment/presentation/view/add_trip.dart';
import 'widgets/add_custom_conatiner.dart';

class AddShipmentOrTrip extends StatelessWidget {
  const AddShipmentOrTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          BrowseAnimation(title: 'Account verification '),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),

          AddCustomConatiner(cardTitle: 'Upload Your Passport',cardIcon: 'assets/images/up.png',cardFun: (){},),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),

          AddCustomConatiner(cardTitle: 'Open Your Camera',cardIcon: 'assets/images/cam.png',cardFun: (){},),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 90,
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(btnTitle: 'Verify', btnFun: (){

                  if(true){
                    Dialogs.materialDialog(
                        color: Colors.white,
                        msgAlign: TextAlign.center,
                        msg: 'You have successfully completed process',
                        title: 'Congratulations',
                        lottieBuilder: Lottie.asset(
                          'assets/lottie/confirmed.json',
                          fit: BoxFit.contain,
                        ),
                        context: context,
                        actions: [
                          IconsButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Dialogs.bottomMaterialDialog(
                                  msg: 'What Is Your Request\? Trip Or Shipment',
                                  title: 'Add Your Request',
                                  context: context,
                                  actions: [
                                    IconsOutlineButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => AddTrip(),));
                                      },

                                      text: 'Add Trip',
                                      iconData: Icons.airplanemode_active,
                                      textStyle: TextStyle(color: Colors.grey),
                                      iconColor: Colors.grey,
                                    ),
                                    IconsOutlineButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => AddShipment(),));

                              },

                                      text: 'Add Shipment',
                                      iconData: Icons.local_shipping,
                                      textStyle: TextStyle(color: Colors.grey),
                                      iconColor: Colors.grey,
                                    ),

                                  ]);
                            },
                            text: 'Confirm',
                            iconData: Icons.done,
                            color: Colors.blue,
                            textStyle: TextStyle(color: Colors.white),
                            iconColor: Colors.white,
                          ),
                        ]);
                  }else{
                    Dialogs.materialDialog(
                        color: Colors.white,
                        msgAlign: TextAlign.center,
                        msg: 'Something Wrong , You Can Try Again',
                        title: 'Sorry',
                        lottieBuilder: Lottie.asset(
                          'assets/lottie/error.json',
                          fit: BoxFit.contain,
                        ),
                        context: context,
                        actions: [
                          IconsButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            text: 'Try Again',
                            iconData: Icons.done,
                            color: Colors.red,
                            textStyle: TextStyle(color: Colors.white),
                            iconColor: Colors.white,
                          ),
                        ]);
                  }

                })
              ],
            ),
          )

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/utils/constants.dart';
import 'package:musafeer_graduation_project/utils/mainWidgets/browse_animation.dart';

import '../../../../utils/textStyles.dart';
import 'widgets/request_details_widget.dart';

class RequestDetails extends StatelessWidget {
  const RequestDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          BrowseAnimation(title: 'Request Details',hasLeadingIcon: true,),
          SliverToBoxAdapter(child: SizedBox(height: 30,),),
          RequestDetailsWidget()
        ],
      ),
    );
  }
}

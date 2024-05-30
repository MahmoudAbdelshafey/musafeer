import 'package:flutter/material.dart';

import '../../../../../utils/constants.dart';
import '../../../../../utils/mainWidgets/browse_animation.dart';
import 'widgets/chat_row.dart';
import 'widgets/notification_card.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          ChatRow(),
          ChatRow(),
          ChatRow(),
          ChatRow(),
          ChatRow(),
          ChatRow(),
          ChatRow(),
          SliverToBoxAdapter(
            child:
            SizedBox(
              height: MediaQuery.of(context).size.height*0.1,
            ),
          )
        ],
      ),
    );
  }
}

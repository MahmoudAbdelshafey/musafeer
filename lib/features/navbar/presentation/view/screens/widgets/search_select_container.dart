import 'package:flutter/material.dart';
import 'package:musafeer_graduation_project/utils/constants.dart';

import '../../../../../../utils/textStyles.dart';

class SearchSelectContainer extends StatefulWidget {
  const SearchSelectContainer({super.key , required this.title, required this.imagePath, required this.selected});
final String title;
final String imagePath;
final bool selected;
  @override
  State<SearchSelectContainer> createState() => _SearchSelectContainerState();
}

class _SearchSelectContainerState extends State<SearchSelectContainer> {


  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: MediaQuery.of(context).size.height*0.2,
          width: MediaQuery.of(context).size.width*0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: !widget.selected?  Colors.grey : Constants.kPrimaryColor, width: 2)
          ),
          child: Column(
            children: [
              ImageIcon(AssetImage(widget.imagePath, ),size: 100,
              color: widget.selected? Constants.kTextPrimaryColor : Colors.grey,),
              Text(widget.title, style: FontStyles.cardHead1,)
            ],
          ),
        ),
        Visibility(
          visible: widget.selected,
          child: Positioned(
              bottom: -10,
              left:85 ,
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 12,
                  child: Icon(Icons.check_circle, color: Colors.green,))),
        )
      ],
    );
  }
}

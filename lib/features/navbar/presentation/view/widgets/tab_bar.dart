import 'package:flutter/material.dart';
import '../../../../../utils/constants.dart';

class TabBarIcon extends StatelessWidget {
  const TabBarIcon({super.key, required this.unselectedIcon, required this.selectedIcon, required this.iconSelected,this.addIcon = false});
final bool iconSelected;
final IconData unselectedIcon;
final IconData selectedIcon;
final bool addIcon;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 55,
        width: 40,
        child: Center(
        child: Icon(
        iconSelected  ? selectedIcon : unselectedIcon,
        color: iconSelected || addIcon  ?Constants.kPrimaryColor : Colors.grey,
    ),),);
  }
}

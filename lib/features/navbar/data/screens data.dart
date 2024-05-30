
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';

abstract class navScreens{
  static  List<TabItem> items = const  [
    TabItem(
      icon: Icons.home_outlined,
    ),
    TabItem(
      icon: Icons.search_sharp,
    ),
    TabItem(
      icon: Icons.add,
    ),
    TabItem(
      icon: Icons.shopping_cart_outlined,
    ),
    TabItem(
      icon: Icons.account_box,
    ),
  ];
}
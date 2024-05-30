import 'package:flutter/material.dart';

import 'features/auth/presentation/view/onboarding.dart';
import 'features/auth/presentation/view/splash.dart';
import 'features/navbar/presentation/view/nav_bar_widget.dart';

void main(){
  runApp(musafeerApp());
}
class musafeerApp extends StatelessWidget {
  const musafeerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SecondPage() ,
      // home:MyHomePages() ,
    );
  }
}


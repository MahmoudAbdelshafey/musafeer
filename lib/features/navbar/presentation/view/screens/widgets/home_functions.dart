import 'package:flutter/material.dart';

class HomeDivider extends StatelessWidget {
  const HomeDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 5,
      width: MediaQuery.of(context).size.width,
    );
  }
}

class HomeTile extends StatelessWidget {
  const HomeTile({super.key, required this.title, required this.imageIcon , required this.voidCallback});

 final String imageIcon;
     final String title;
   final VoidCallback voidCallback;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ListTile(
          tileColor: Colors.black.withOpacity(.08),
          leading: CircleAvatar(
            backgroundColor: Colors.black12,
            child: Image.asset(imageIcon, fit: BoxFit.fill,),
          ),
          onTap: voidCallback,
          title: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          trailing: Icon(
            Icons.arrow_right,
            color: Colors.white,
          ),
        ),
        HomeDivider()
      ],
    );
  }
}


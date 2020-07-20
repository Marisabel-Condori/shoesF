import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          margin: EdgeInsets.all(5.0),
          child: Row(
            children: [
              Text('For You', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),),
              Spacer(),
              Icon(Icons.search, size: 30.0,)
            ],
          ),
        ),
      ),
    );
  }
}
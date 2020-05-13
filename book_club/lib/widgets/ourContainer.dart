import 'package:flutter/material.dart';

//there is common container in most pages white and round corner

class OurContainer extends StatelessWidget {
  //take child as property
  final Widget child;

  //constructor
  const OurContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 158, 158, 158),
            blurRadius: 10.0,
            spreadRadius: 1.0,
            offset: Offset(4.0, 4.0)
          ),
        ],
      ),
      child: child,
      
    );
  }
}
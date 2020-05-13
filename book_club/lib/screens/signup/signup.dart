import 'package:book_club/screens/signup/local_widgets/signup_form.dart';
import 'package:flutter/material.dart';

class OurSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //to over come : Vertical viewport was given unbounded width. used Expanded
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 5.0,
                ),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      BackButton(),
                    ],
                  ),
                  
                  SizedBox(height:20.0),

                  OurSignUpForm(),

                ],
              ),
            )
          ]
        )
      ),
    );
  }
}
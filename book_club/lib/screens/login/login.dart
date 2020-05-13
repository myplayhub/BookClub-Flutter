import 'package:book_club/screens/login/local_widgets/login_form.dart';
import 'package:flutter/material.dart';

class OurLogin extends StatelessWidget {
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
                  
                  //logo at the top
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 10.0,
                    ),
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  
                  //spacing
                  SizedBox(height: 0.0),

                  //Login Form
                  OurLoginForm(),

                ],
              ),
            )
          ]
        )
      ),
    );
  }
}
import 'package:book_club/widgets/ourContainer.dart';
import 'package:flutter/material.dart';

class OurSignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OurContainer(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 20.0
            ),
            child: Text(
              "Sign Up",
              style: TextStyle(
                //getting color from theme data file
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,

              ),
            ),
          ),
          
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              hintText: 'Full Name',
            )
          ),

          SizedBox(height: 20.0),

          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              hintText: 'Email Address',
            )
          ),

          SizedBox(height: 20.0),
          
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.vpn_key),
              hintText: 'Password',
            ),
            obscureText: true,
          ),

          SizedBox(height: 20.0),

          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: 'Confirm Password',
            ),
            obscureText: true,
          ),

          SizedBox(height: 20.0),


          RaisedButton(
            padding: EdgeInsets.symmetric(
              horizontal: 100.0,
            ),
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: (){

            }
          ),

        ]
      ),
    );
  }
}
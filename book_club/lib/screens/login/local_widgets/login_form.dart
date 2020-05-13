import 'package:book_club/screens/signup/signup.dart';
import 'package:book_club/widgets/ourContainer.dart';
import 'package:flutter/material.dart';

class OurLoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //passing column as a child to OurContainer class
    return OurContainer(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 20.0
            ),
            child: Text(
              "Log In",
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
              prefixIcon: Icon(Icons.email),
              hintText: 'Email Address',
            )
          ),

          SizedBox(height: 20.0),
          
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: 'Password',
            ),
            obscureText: true,
          ),

          SizedBox(height: 20.0),

          RaisedButton(
            padding: EdgeInsets.symmetric(
              horizontal: 100.0,
            ),
            child: Text(
              'Login',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: (){

            }
          ),

          SizedBox(height: 5.0,),

          //convert text into Button
          InkWell(            
            child: Text(
              "Don't have an account? Sign Up here",
              style: TextStyle(
                //getting color from theme data file
                color: Theme.of(context).secondaryHeaderColor,
              ),
              textAlign: TextAlign.right,
            ),
            onTap: (){
              print('Sign UP');
              /*
                on tap Navigator add OurSignUp screen on top of SignIn page 
                push function add a screen on top of current stack
              */
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => OurSignUp()
                ),
              );
            },
          ),

          /*
          FlatButton(
            onPressed: (){

            }, 
            child: Text(
              "Don't have an account? Sign Up here",
              style: TextStyle(
                //getting color from theme data file
                color: Theme.of(context).secondaryHeaderColor,
              ),
              textAlign: TextAlign.right,
            ),
            //to get close to the login button
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          */
        ]
      ),
    );
  }
}
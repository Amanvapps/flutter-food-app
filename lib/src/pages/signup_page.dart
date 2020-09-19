import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfoodapp/src/pages/signIn_page.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  bool _toggleVisibility = true;
  bool _toggleConfirmVisibility = true;


  _buildUsernameTextField()
  {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Username",
          hintStyle: TextStyle(
              color: Color(0xFFBDCD2CB),
              fontSize: 18.0
          )
      ),
    );
  }


  _buildEmailTextField()
  {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Email",
          hintStyle: TextStyle(
              color: Color(0xFFBDCD2CB),
              fontSize: 18.0
          )
      ),
    );
  }

  _buildPasswordTextField()
  {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(
            color: Color(0xFFBDCD2CB),
            fontSize: 18.0
        ),
        suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                _toggleVisibility = !_toggleVisibility;
              });
            },
            icon : _toggleVisibility ? Icon(Icons.visibility_off):  Icon(Icons.visibility)) ,
      ),
      obscureText: _toggleVisibility,
    );
  }

  _buildConfirmPasswordTextField()
  {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Confirm Password",
        hintStyle: TextStyle(
            color: Color(0xFFBDCD2CB),
            fontSize: 18.0
        ),
        suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                _toggleConfirmVisibility = !_toggleConfirmVisibility;
              });
            },
            icon : _toggleConfirmVisibility ? Icon(Icons.visibility_off):  Icon(Icons.visibility)) ,
      ),
      obscureText: _toggleConfirmVisibility,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Sign Up' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 40.0),),
            SizedBox(height: 50.0,),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildUsernameTextField(),
                    SizedBox(height: 20.0,),
                    _buildEmailTextField(),
                    SizedBox(height: 20.0,),
                    _buildPasswordTextField(),
                    SizedBox(height: 20.0,),
                    _buildConfirmPasswordTextField(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.blue
              ),
              child: Center(
                child: Text('Sign up' , style: TextStyle(color: Colors.white , fontSize: 18.0 , fontWeight: FontWeight.bold),),
              ),
            ),
            Divider(
              height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Already have an account?" , style: TextStyle(color: Color(0xFFBDC2CB) , fontSize: 18.0 , fontWeight: FontWeight.bold),),
                SizedBox(width: 10.0,),
                GestureDetector
                  (onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
                },
                    child: Text("Sign in" , style: TextStyle(color: Colors.blueAccent , fontWeight: FontWeight.bold , fontSize: 18.0),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

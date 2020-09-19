import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfoodapp/src/pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  bool _toggleVisibility = true;

  _buildEmailTextField()
  {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Your email",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Sign In' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 40.0),),
            SizedBox(height: 100.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Forgot Password?" , style: TextStyle(fontSize: 18.0 , color: Colors.blueAccent , fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10.0,),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildEmailTextField(),
                    SizedBox(height: 20.0,),
                    _buildPasswordTextField(),
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
                child: Text('Sign in' , style: TextStyle(color: Colors.white , fontSize: 18.0 , fontWeight: FontWeight.bold),),
              ),
            ),
            Divider(
              height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account?" , style: TextStyle(color: Color(0xFFBDC2CB) , fontSize: 18.0 , fontWeight: FontWeight.bold),),
                SizedBox(width: 10.0,),
                GestureDetector
                  (onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignupPage()));
                },
                    child: Text("Sign up" , style: TextStyle(color: Colors.blueAccent , fontWeight: FontWeight.bold , fontSize: 18.0),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

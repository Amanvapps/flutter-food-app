import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfoodapp/src/widgets/small_button.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  bool turnOnNotifications = false;
  bool turnOnLocation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0 , horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Profile' , style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 20.0,),
              _profileRow(),
              SizedBox(height: 30.0),
              Text('Account' , style: TextStyle(fontSize: 20.0 , fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              _profileAccountCard(),
              SizedBox(height: 30.0),
              Text('Notifications' , style: TextStyle(fontSize: 20.0 , fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              _notificationCard(),
              SizedBox(height: 20.0,),
              Text('Other' , style: TextStyle(fontSize: 20.0 , fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              _otherCard(),
            ],
          ),
        ),
      ),
    );
  }



  Widget _profileRow()
  {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 120.0,
          width: 120.0,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(60.0),
              boxShadow:[
                BoxShadow(
                    blurRadius: 3.0,
                    offset: Offset(0,4.0),
                    color: Colors.black38
                ),
              ],
              image: DecorationImage(
                  image: AssetImage('images/breakfast.jpeg',),
                  fit: BoxFit.cover
              )
          ),
        ),
        SizedBox(width: 20.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Aman Shrivastava' , style: TextStyle(fontSize: 16.0 , ),),
            SizedBox(height: 10.0,),
            Text('+91 827508775' , style: TextStyle(color: Colors.grey),),
            SizedBox(height: 20.0,),
            smallButton('Edit')
          ],
        ),
      ],
    );
  }


  Widget _profileAccountCard()
  {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical : 5.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.location_on, color: Colors.blue,),
                  SizedBox(width: 15.0,),
                  Text('Location' , style: TextStyle(fontSize: 16.0),),
                ],
              ),
            ),
            Divider(height: 10.0,color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical : 5.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.visibility, color: Colors.blue,),
                  SizedBox(width: 15.0,),
                  Text('Change Password' , style: TextStyle(fontSize: 16.0),),
                ],
              ),
            ),
            Divider(height: 10.0,color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical : 5.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.shopping_cart, color: Colors.blue,),
                  SizedBox(width: 15.0,),
                  Text('Shipping' , style: TextStyle(fontSize: 16.0),),
                ],
              ),
            ),
            Divider(height: 10.0,color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical : 5.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.payment, color: Colors.blue,),
                  SizedBox(width: 15.0,),
                  Text('Payment' , style: TextStyle(fontSize: 16.0),),
                ],
              ),
            ),
            Divider(height: 10.0,color: Colors.grey,),
          ],
        ),
      ),
    );
  }

  Widget _notificationCard()
  {
   return Card(
     elevation: 3.0,
     child: Padding(
       padding: EdgeInsets.all(16.0),
       child: Column(
         children: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Text('App Notification' , style: TextStyle(fontSize: 16.0),),
               Switch(value: turnOnNotifications , onChanged: (bool value)
               {
                 setState(() {
                   turnOnNotifications = value;
                 });
               },
               )
             ],
           ),
           Divider(height: 10.0,color: Colors.grey,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Text('Location Tracking' , style: TextStyle(fontSize: 16.0),),
               Switch(value: turnOnLocation , onChanged: (bool value)
               {
                 setState(() {
                   turnOnLocation = value;
                 });
               },
               )
             ],
           ),
           Divider(height: 10.0,color: Colors.grey,),
         ],
       ),
     ),
   );
  }

  Widget _otherCard()
  {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Language' , style: TextStyle(fontSize: 16.0),),
              Divider(height: 30.0,color: Colors.grey,),
              Text('Currency' , style: TextStyle(fontSize: 16.0),),
              Divider(height: 30.0,color: Colors.grey,),
            ],
          ),
        ),
      ),
    );
  }

}

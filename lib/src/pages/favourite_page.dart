import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterfoodapp/src/widgets/small_button.dart';

class FavouritePage extends StatefulWidget {
  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0 , vertical: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('All Food Items' , style: TextStyle(
                fontSize: 20.0 ,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 20.0,),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0),
                width: MediaQuery.of(context).size.width,
                height: 120.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow:[
                    BoxShadow(
                      blurRadius: 5.0,
                      offset: Offset(0 , 3.0),
                      color: Colors.black38
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      width: 90.0,
                      height: 90.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('images/breakfast.jpeg'),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Eastern Toast' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),),
                        SizedBox(height: 10.0,),
                        Container(
                          width: 200.0,
                            child: Text('This is the description of the food item ' , style: TextStyle(),
                            )
                        ),
                        SizedBox(height: 7.0,),
                        Container(
                          width: 200.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('\＄ 90.0' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold , color: Colors.blue),),
                              smallButton('Buy')
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
        ),
      ),
    );
  }
}

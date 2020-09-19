import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddFoodItem extends StatefulWidget {
  @override
  _AddFoodItemState createState() => _AddFoodItemState();
}

class _AddFoodItemState extends State<AddFoodItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 60.0 , horizontal: 16.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Form(
          child: Column(
            children: <Widget>[
              _buildTextFormField('Food Title'),
              _buildTextFormField('Description' , maxLine: 3),
              _buildTextFormField('Price'),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField(String hint , {int maxLine=1})
  {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "$hint",
      ),
      maxLines: maxLine,
    );
  }

}

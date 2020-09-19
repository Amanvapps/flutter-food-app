import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterfoodapp/src/models/food.dart';
import 'package:flutterfoodapp/src/scopedModel/main_model.dart';
import 'package:flutterfoodapp/src/widgets/bought_foods.dart';
import 'package:flutterfoodapp/src/widgets/food_category.dart';
import 'package:flutterfoodapp/src/widgets/home_top_info.dart';
import 'package:flutterfoodapp/src/widgets/search_field.dart';
import 'package:scoped_model/scoped_model.dart';


class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
//
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 50.0 , left: 20.0 , right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SearchField(),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Frequently Bought Foods' , style: TextStyle(fontSize: 18.0 , fontWeight: FontWeight.bold),),
              GestureDetector(
                onTap: (){},
                child: Text('View All' , style: TextStyle(fontSize: 18.0 , fontWeight: FontWeight.bold , color: Colors.orangeAccent)),
              ),
            ],
          ),
         ScopedModelDescendant(
           builder: (BuildContext context , Widget child , MainModel model)
           {
             return Column(
               children:model.Foods.map(_buildFoodItems).toList(),
             );
           },
         )
        ],
      ),
    );
  }

  Widget _buildFoodItems(Food food)
  {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0 , top: 20.0 , right: 10.0),
      child: BoughtFoods(
        id: food.id,
        name: food.name,
        imagePath: food.imagePath,
        category: food.category,
        discount: food.discount,
        price: food.price,
        rating: food.rating,
      ),
    );
  }


}

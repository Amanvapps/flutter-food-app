import 'package:flutter/material.dart';
import 'package:flutterfoodapp/src/data/category_data.dart';
import 'package:flutterfoodapp/src/models/categories.dart';
import 'package:flutterfoodapp/src/widgets/category_card.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
       child :  ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (BuildContext context , int index)
          {
            return CategoryCard(
              numberOfItems: _categories[index].numberOfItems,
              categoryName: _categories[index].categoryName,
              imagePath: _categories[index].imagePath
            );
          },
        ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterfoodapp/src/scopedModel/main_model.dart';
import 'package:flutterfoodapp/src/screen/main_screen.dart';
import 'package:scoped_model/scoped_model.dart';

class App extends StatelessWidget {

  final MainModel mainModel = MainModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: mainModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Food Delivery App",
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
        ),
        home: MainScreen(model : mainModel),
      ),
    );
  }
}

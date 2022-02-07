import 'dart:math';
import 'package:flutter/material.dart';
import 'package:senior_project/FoodInfo.dart';
import 'package:senior_project/model/all_foods.dart';
import 'Home.dart';
import 'RecipeCard.dart';
import 'network/api_provider.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);
  @override
  _FoodPageState createState() => _FoodPageState();
}



class _FoodPageState extends State<FoodPage> {

  List<Food> foods = [];
  @override
  void initState() {
    super.initState();
    loadFoods();
  }

  Future<void> loadFoods() async {
    Allfoods allFoods = await ApiProvider.getAllFoods();

    setState(() {
      foods = allFoods.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Color(0xffff0202),
      centerTitle: true,
      title:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 1,),
          Icon(Icons.fastfood),
          Padding(padding: EdgeInsets.all(3)),
          Text('Food',style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),),
          Spacer(flex: 2,),
        ],
      ),
     ),
      body: ListView.builder(
          itemCount: foods.length,
          itemBuilder: (context, index) {
return GestureDetector(
  onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> FoodInfo(food: foods[index],)));
  },
  child: RecipeCard(
    title: foods[index].title??'',
    thumbnailUrl: foods[index].img ?? '',


  ),
);
      }),
    );
  }
}

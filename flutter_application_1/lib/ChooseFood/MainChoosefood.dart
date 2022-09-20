import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ChooseFood/listFood.dart';


class ChooseFood extends StatefulWidget {
  const ChooseFood({Key key}) : super(key: key);
@override
  State<ChooseFood> createState() => _ChooseFoodState();
}
class _ChooseFoodState extends State<ChooseFood> {
  List<Foodmenu> menu=[
    Foodmenu("กุ้งเผา","5000","assets/image/กุ้งเผา.jpg"),
    Foodmenu("กระเพรา","80","assets/image/กระเพรา1.jpg"),
    Foodmenu("ส้มตำ", "60","assets/image/ส้มตำ.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เมนูอาหาร"),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
          Foodmenu food=menu[index];
          return ListTile(
            leading: Image.asset(food.ing),
            title: Text(food.name,style: TextStyle(fontSize: 20),),
            subtitle: Text("ราคา"+food.price+"บาท"),
            onTap: (){
              print("คุณเลือกเมนูอาหารชื่อว่า ="+food.name);
            },
          );
        }));
  }
}
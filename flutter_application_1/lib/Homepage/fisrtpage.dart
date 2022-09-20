import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ChooseFood/MainChoosefood.dart';
import 'package:flutter_application_1/Foodmenu.dart/Menu.dart';
import 'package:flutter_application_1/calculators/Homescreencal.dart';
import 'package:flutter_application_1/catorylist.dart';
import 'package:flutter_application_1/countnum.dart';
import 'package:flutter_application_1/login_page/login_page.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
  'All Shop',
  style: GoogleFonts.lobster(
    textStyle: TextStyle(color: Colors.black, letterSpacing: .5,fontSize: 30),
  ),
),
actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.logout_outlined,
        color: Colors.black,
      ),
      onPressed: () {
                FirebaseAuth.instance.signOut().then((value) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                });
              },
    )
  ],
        backgroundColor: Colors.white,
      ),
      body :  Container(
        
        child: GridView.count(
          
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    margin: new EdgeInsets.all(1.0),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CountNum(
                                      title: '',
                                    )),
                          );
                        },
                        child: Image.network(
                          'assets/image/math.jpg',
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          color: Colors.white.withOpacity(0.8),
                          colorBlendMode: BlendMode.modulate,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'โปรแกรมนับเลข',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0),
                      )),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChooseFood()),
                          );
                        },
                        child: Image.network(
                          'assets/image/menu.jpg',
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          color: Colors.white.withOpacity(0.8),
                          colorBlendMode: BlendMode.modulate,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'เลือกเมนูอาหาร',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0),
                      )),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Image.network(
                          'assets/image/cal.jpg',
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          color: Colors.white.withOpacity(0.8),
                          colorBlendMode: BlendMode.modulate,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Calculator',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0),
                      )),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Menu()),
                          );
                        },
                        child: Image.network(
                          'assets/image/foodmenu.jpg',
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          color: Colors.white.withOpacity(0.8),
                          colorBlendMode: BlendMode.modulate,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'FoodMenu',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0),
                      )),
                ],
              ),
              
            ]),
    ));
  
    
    
    
    
    
  }
}

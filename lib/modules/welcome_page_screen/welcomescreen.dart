import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/modules/welcome_page_screen/welcomebody.dart';
import '../../router.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      Container(
        padding: EdgeInsets.only(left: 10,right: 10),
        color: Colors.white,
        width: double.infinity,
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, Routes.homeScreen),
              icon: Icon(Icons.home,color: Colors.grey,size: 38,),),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, Routes.noInternetScreen),
              icon: Icon(Icons.favorite_border_sharp, color: Colors.grey,size: 38,),),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, Routes.noInternetScreen),
              icon: Icon(Icons.circle,color: Colors.blue.shade200,size: 38,),),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, Routes.noInternetScreen),
              icon: Icon(Icons.shopping_cart_outlined,color: Colors.grey,size: 38,),),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, Routes.noInternetScreen),
              icon: Icon(Icons.person_rounded,color: Colors.grey,size: 38, ),),

          ],
        ),
      ),
      body:  WelcomeBody(),
      backgroundColor: Colors.blue.shade50,
    );
  }
}
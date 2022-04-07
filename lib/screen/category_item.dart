import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocery/utils/style.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;
  const CategoryItem({Key? key,
    required this.title,
    this.isActive = false,
    required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: (){},
        child: Padding(
          padding: EdgeInsets.only(left: 20,),
          child: Column(
            children: [
              Text(title,
                style: isActive ? AppStyles.greySmallFont :
                TextStyle(fontSize: 18),
              ),
              if(isActive )
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(40)
                  ),
                ),
            ],
          ),
        ),
      )
    ;
  }
}

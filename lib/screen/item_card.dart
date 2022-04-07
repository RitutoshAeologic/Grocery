import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocery/utils/style.dart';

class ItemCard extends StatelessWidget {
  final String title, type, price;
  final Function press;

  const ItemCard({Key? key,
  required this.title,
  required this.price,
  required this.press,
  required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){},
        child:
        Container(
          margin: EdgeInsets.only(left: 20,top: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 230,
                width: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset("assets/plate4.jpg"),
              ),
              Text("Fresh Apple",style: AppStyles.blackSmallBoldFont,),
              SizedBox(height: 5,
              ),
              Text("Fruit",style: AppStyles.greySmallFont,),
              SizedBox(height: 5,),
              Text("INR 11,49",style: AppStyles.greySmallFont,),

            ],
          ),
        ),
      );
  }
}

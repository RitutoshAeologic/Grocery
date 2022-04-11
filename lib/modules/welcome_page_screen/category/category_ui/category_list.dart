import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(title: "ALL",
              isActive: true,
              press: (){}),
          CategoryItem(title: "Fruit & Vegetable",
              isActive: true,
              press: (){}),
          CategoryItem(title: "Meat",
              isActive: true,
              press: (){}),
          CategoryItem(title: "Dairy",
              isActive: true,
              press: (){}),
          CategoryItem(title: "Egg",
              isActive: true,
              press: (){}),
        ],
      ),
    );
  }
}

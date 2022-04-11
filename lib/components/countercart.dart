import 'package:flutter/material.dart';
import 'package:grocery/utils/style.dart';

import 'material_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class CounterCartState extends StatefulWidget {

  @override
  CounterCart createState() => CounterCart();
}

class CounterCart extends State<CounterCartState> {

  int _count = 0;

  void _incrementCount()
  {
    setState(() {
      _count++;
    });
  }
  void _decrementCount()
  {
    setState(() {
      _count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.green.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              onPressed: _decrementCount,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 4.0,bottom: 20,top: 5),
              icon: const Icon( Icons.remove,color: Colors.white,size: 30,
              ),
            )
        ),
        const SizedBox(width: 5,),
        Text("${_count}", style: AppStyles.blackSmallBoldFont,),
        const SizedBox(width: 5,),
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.green.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              onPressed: _incrementCount,
              padding: const EdgeInsets.only(right: 20.0,bottom: 10.0),
              icon: const Icon( Icons.add,color: Colors.white,size: 40,
              ),
            )
        ),
      ],
    );
  }
}

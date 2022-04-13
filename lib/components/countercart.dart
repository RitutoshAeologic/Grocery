import 'package:flutter/material.dart';
import 'package:grocery/utils/style.dart';
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
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return
        Row(
          children: [
            Container(
                height: size.width*0.1,
                width: size.width*0.1,
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
           // const SizedBox(width: 5,),
            Text(_count.toString(), style: AppStyles.blackSmallBoldFont,),
            //const SizedBox(width: 5,),
            Container(
                height: size.width*0.1,
                width: size.width*0.1,
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

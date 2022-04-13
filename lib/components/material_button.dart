import 'package:flutter/material.dart';

class MaterialButtonBox extends StatelessWidget {
  final String title;
  final TextStyle titleStyle;
  final Color backgroundColor;
  final void Function() onTap;
  final double widthsize;

    const MaterialButtonBox({
    Key? key,
    required this.backgroundColor,
    required this.title,
    required this.titleStyle,
    required this.onTap,
    required this.widthsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      MaterialButton(
        color: backgroundColor,
        onPressed: onTap,
        height: MediaQuery.of(context).size.height*0.09,
        minWidth: widthsize,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children:  <Widget>[
            Text(title,
              style: const TextStyle(
                  fontFamily: "Montserrat",
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              ),),
            const Icon(Icons.arrow_forward_ios,color: Colors.white,size: 25,)
          ],
        ),
      );
  }
}
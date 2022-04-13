import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocery/components/material_button.dart';

import '../../router.dart';


class HomeScreen extends StatelessWidget {
  var size,height,width;
   HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return
    Scaffold(
      body: Container(
        height: size.height * 1,
        width: size.width * 1,
        color: Colors.white,
        child: Stack(
            children: [
              Padding(padding: EdgeInsets.only( bottom: 10.0),
                child: Image.asset("assets/image5.jpg",),
              ),
              Positioned(
                bottom:1,right: 0,top: 420,
                child:
                Container(
                 // margin: EdgeInsets.only(bottom: 14),
                  height: size.width * 0.4,
                  width: size.width * 1,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(90),
                       //   topRight: Radius.circular(90),
                         // bottomLeft: Radius.circular(90),
                          //bottomRight: Radius.circular(90),
                      ),
                      color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10,right: 10,top: 40),
                        height: size.height*0.008,
                        width: size.width*0.4,
                        decoration: BoxDecoration(
                            color: Colors.green.shade300,
                            borderRadius: BorderRadius.circular(40)
                        ),
                      ),
                      SizedBox(height: size.height*0.02,),
                      const Text("Shop Online For \n Food, Grocery",
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            height: 1.4
                        ),),
                       SizedBox(height: size.height*0.02,),
                      const Text("Shop for Food,Grocery, Baby Care, Mobile \n "
                          "Phones,TVs, Electronics, Beauty & more \n"
                          "on Carrefour Pakistan. Up to 70% off \n"
                          "Free Shipping Available",
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          height: 1.4,

                        ),),
                      SizedBox(height: size.height*0.02,),
                      MaterialButtonBox(backgroundColor: Colors.green.shade300, title: "Shop Now",
                        widthsize: MediaQuery.of(context).size.width*0.6,
                        titleStyle:
                        const TextStyle(
                            fontFamily: "Montserrat",
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),
                        onTap: () => Navigator.pushNamed(context, Routes.welcomeScreen),
                      ),
                    ],
                  ),
                ),
              ),
              // Container(
              //   height: double.infinity,
              //   width: double.infinity,
              //   margin: EdgeInsets.only(top: 450),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.only(topLeft: Radius.circular(90)
              //       ),
              //       color: Colors.white
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //
              //     children: [
              //       Container(
              //         margin: EdgeInsets.only(left: 10,right: 10,top: 40),
              //         height: 8,
              //         width: 115,
              //         decoration: BoxDecoration(
              //             color: Colors.green.shade300,
              //             borderRadius: BorderRadius.circular(40)
              //         ),
              //       ),
              //       const SizedBox(height: 20,),
              //       const Text("Shop Online For \n Food, Grocery",
              //         textAlign: TextAlign.center,
              //         style:
              //         TextStyle(
              //             fontFamily: "Montserrat",
              //             fontSize: 35.0,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.black,
              //             height: 1.4
              //         ),),
              //       const SizedBox(height: 20,),
              //       const Text("Shop for Food,Grocery, Baby Care, Mobile \n "
              //           "Phones,TVs, Electronics, Beauty & more \n"
              //           "on Carrefour Pakistan. Up to 70% off \n"
              //           "Free Shipping Available",
              //         textAlign: TextAlign.center,
              //         style:
              //         TextStyle(
              //           fontFamily: "Montserrat",
              //           fontSize: 15.0,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.grey,
              //           height: 1.4,
              //
              //         ),),
              //       SizedBox(height: 20,),
              //       // MaterialButton(
              //       //   minWidth: 235,
              //       //   color: Colors.green.shade300,
              //       //   height: 70,
              //       //   onPressed: () {
              //       //     Navigator.push(
              //       //         context,
              //       //         MaterialPageRoute(
              //       //             builder: (context) => const MainScreen()));
              //       //   },
              //       //   shape: RoundedRectangleBorder(
              //       //       borderRadius: BorderRadius.circular(40)),
              //       //   child: Row(
              //       //     mainAxisSize: MainAxisSize.min,
              //       //     children: const <Widget>[
              //       //       Text("Shop Now",
              //       //         style: TextStyle(
              //       //           fontFamily: "Montserrat",
              //       //           color: Colors.white,
              //       //           fontSize: 20.0,
              //       //         fontWeight: FontWeight.bold
              //       //       ),),
              //       //       Icon(Icons.arrow_forward_ios,color: Colors.white,size: 25,)
              //       //     ],
              //       //   ),
              //       // ),
              //       MaterialButtonBox(backgroundColor: Colors.green.shade300, title: "Shop Now",
              //           size: 235,
              //           titleStyle:
              //           const TextStyle(
              //               fontFamily: "Montserrat",
              //               color: Colors.white,
              //               fontSize: 20.0,
              //               fontWeight: FontWeight.bold
              //           ),
              //           onTap: () => Navigator.pushNamed(context, Routes.welcomeScreen),
              //       ),
              //     ],
              //   ),
              // ),
            ]
        ),
      ),
    );
  }
}

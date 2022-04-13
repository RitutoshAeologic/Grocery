import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocery/components/countercart.dart';
import 'package:grocery/components/material_button.dart';
import 'package:grocery/components/ratingicon.dart';
import 'package:grocery/router.dart';
import 'package:grocery/utils/style.dart';


class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 5),
        child:
        Column(
            children: [
            Container(
            height: size.height*0.35,
            width: size.width*1,
            decoration: const  BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90),
                  bottomRight: Radius.circular(90)),
              image: DecorationImage(
                image: AssetImage("assets/image6.jpg"),
                fit: BoxFit.cover,
              ),
            ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
                      height: size.height*0.06,
                      width: size.width*0.12,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: const BorderRadius.all(Radius.circular(10) ),
                      ),
                      child:
                      IconButton(
                        onPressed: () =>
                          Navigator.pushNamed(
                              context,
                              Routes.welcomeScreen),

                        padding: const EdgeInsets.only(bottom: 5.0,top: 5),
                        icon: const Icon(
                          Icons.arrow_back_ios_outlined,color: Colors.white,size: 25,
                        ),
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
                      height: size.height*0.06,
                      width: size.width*0.12,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: const BorderRadius.all(Radius.circular(10) ),
                      ),
                      child:
                      IconButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.noInternetScreen),
                        padding: const EdgeInsets.only(bottom: 5.0,top: 5),
                        icon: const Icon( Icons.shopping_cart,color: Colors.white,size: 25,
                        ),
                      )
                  ),

                ],

              )
            ),
               SizedBox(height: size.height*0.040,),
              Padding(padding:  const EdgeInsets.only(left: 20,right: 20,),
              child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text("Delicious Avocado", style:
                  AppStyles.blackBoldFont,
                    textAlign: TextAlign.left,),
                  SizedBox(height: size.height*0.010,),
                ],
              ),),
              const SizedBox(height: 20,),
              Padding(padding:  const EdgeInsets.only(left: 20,right: 20,),

              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingIcon(),
                  Text("(4.9)", style: AppStyles.greySmallFont,),
                  SizedBox(width: 100,),
                  CounterCartState(),
                  // Container(
                  //     height: 40,
                  //     width: 40,
                  //     decoration: BoxDecoration(
                  //       color: Colors.green.shade200,
                  //       borderRadius: BorderRadius.circular(20),
                  //     ),
                  //     child: IconButton(
                  //       onPressed: ()
                  //       {
                  //
                  //       },
                  //       alignment: Alignment.topLeft,
                  //       padding: const EdgeInsets.only(left: 4.0,bottom: 20,top: 5),
                  //       icon: const Icon( Icons.remove,color: Colors.white,size: 30,
                  //       ),
                  //     )
                  // ),
                  // const SizedBox(width: 5,),
                  // Text("6", style: AppStyles.blackSmallBoldFont,),
                  // const SizedBox(width: 5,),
                  // Container(
                  //     height: 40,
                  //     width: 40,
                  //     decoration: BoxDecoration(
                  //       color: Colors.green.shade200,
                  //       borderRadius: BorderRadius.circular(20),
                  //     ),
                  //     child: IconButton(
                  //       onPressed: (){ },
                  //       padding: const EdgeInsets.only(right: 20.0,bottom: 10.0),
                  //       icon: const Icon( Icons.add,color: Colors.white,size: 40,
                  //       ),
                  //     )
                  // ),
                ],
              ), ),

               SizedBox(height: size.height*0.018,),
              Padding(padding: const EdgeInsets.only(left: 20,right: 20,),
              child: Row(
                children:  [
                  Text("Description", style: AppStyles.blackBoldFont,
                    textAlign: TextAlign.left,),
                ],),),

              SizedBox(height:size.height*0.018,),
              Padding(padding: const EdgeInsets.only(left: 20,right: 20,),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  const [
                      Text("The avocado is a tree originating in the Americas \n"
                          "which is likely native to the highland region of \n"
                          "south-central Mexico to Guatemala...",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          height: 1.7,

                        ),
                        textAlign: TextAlign.left,),
                    ],), ),

              SizedBox(height: size.height*0.028,),
              Padding(padding: const EdgeInsets.only(left: 20,right: 20,),
                  child:
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                        height: size.height*0.18,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Image.asset("assets/image7.png",fit: BoxFit.fitWidth,
                        )
                    ),
                  ),
              ),


              SizedBox(height: size.height*0.018,),
              Padding(padding: const EdgeInsets.only(left: 20,right: 20,),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Price",style: AppStyles.greySmallFont,),
                          const SizedBox(height: 10,),
                          Text("\$ 35,49",
                            style:
                            TextStyle(
                                color: Colors.green.shade200,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                                fontSize: 35),),

                        ],
                      ),
                      SizedBox(width: size.width*0.005,),
                      Column(
                        children: [
                          // MaterialButton(
                          //   color: Colors.green.shade300,
                          //   height: 70,
                          //   onPressed: () {
                          //   },
                          //   shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(40)),
                          //   child: Row(
                          //     mainAxisSize: MainAxisSize.min,
                          //     children: const <Widget>[
                          //       Text("Add to Card",
                          //         style: TextStyle(
                          //             fontFamily: "Montserrat",
                          //             color: Colors.white,
                          //             fontSize: 22.0,
                          //             fontWeight: FontWeight.bold
                          //         ),),
                          //       Icon(Icons.arrow_forward_ios,color: Colors.white,size: 25,)
                          //     ],
                          //   ),
                          // ),
                          MaterialButtonBox(
                              backgroundColor: Colors.green.shade300,
                              title: "Add to Card",
                            widthsize: MediaQuery.of(context).size.width*0.4,
                              titleStyle: const
                              TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold
                              ),
                              onTap: () => Navigator.pushNamed(context, Routes.noInternetScreen),
                          ),
                        ],
                      )

                    ],
                  ),),

            ]
        ),

      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocery/components/material_button.dart';
import 'package:grocery/components/ratingicon.dart';
import 'package:grocery/modules/welcome_page_screen/welcomescreen.dart';
import 'package:grocery/utils/style.dart';


class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 5),
        child:
        Column(
            children: [
            Container(
            height: 320.0,
            width: double.infinity,
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
                      margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: const BorderRadius.all(Radius.circular(10) ),
                      ),
                      child:
                      IconButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  const WelcomeScreen()));
                        },
                        padding: const EdgeInsets.only(bottom: 5.0,top: 5),
                        icon: const Icon(
                          Icons.arrow_back_ios_outlined,color: Colors.white,size: 25,
                        ),
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: const BorderRadius.all(Radius.circular(10) ),
                      ),
                      child:
                      IconButton(
                        onPressed: (){},
                        padding: const EdgeInsets.only(bottom: 5.0,top: 5),
                        icon: const Icon( Icons.shopping_cart,color: Colors.white,size: 25,
                        ),
                      )
                  ),

                ],

              )
            ),
              const SizedBox(height: 30,),
              Padding(padding:  const EdgeInsets.only(left: 20,right: 20,),
              child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text("Delicious Avocado", style:
                  AppStyles.blackBoldFont,
                    textAlign: TextAlign.left,),
                  const SizedBox(height: 10,),
                ],
              ),),
              const SizedBox(height: 20,),
              Padding(padding:  const EdgeInsets.only(left: 20,right: 20,),
              child:  Row(
                children: [
                  RatingIcon(),
                  Text("(4.9)", style: AppStyles.greySmallFont,),
                  const SizedBox(width: 110,),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        onPressed: (){ },
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 4.0,bottom: 20,top: 5),
                        icon: const Icon( Icons.remove,color: Colors.white,size: 30,
                        ),
                      )
                  ),
                  const SizedBox(width: 5,),
                  Text("6", style: AppStyles.blackSmallBoldFont,),
                  const SizedBox(width: 5,),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        onPressed: (){ },
                        padding: const EdgeInsets.only(right: 20.0,bottom: 10.0),
                        icon: const Icon( Icons.add,color: Colors.white,size: 40,
                        ),
                      )
                  ),
                ],
              ), ),

              const SizedBox(height:15,),
              Padding(padding: const EdgeInsets.only(left: 20,right: 20,),
              child: Row(
                children:  [
                  Text("Description", style: AppStyles.blackBoldFont,
                    textAlign: TextAlign.left,),
                ],),),

              const SizedBox(height:15,),
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

              const SizedBox(height: 25,),
              Padding(padding: const EdgeInsets.only(left: 20,right: 20,),
                  child:
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                        height: 150,
                        width: 350,
                        color: Colors.white,
                        child: Image.asset("assets/image7.png",fit: BoxFit.fitWidth,
                        )
                    ),
                  ),
              ),


              const SizedBox(height: 15,),
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
                      const SizedBox(width: 5,),
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
                              size: 130,
                              titleStyle: const
                              TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold
                              ),
                              onTap: (){}),
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

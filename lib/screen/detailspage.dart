import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocery/screen/ratingicon.dart';
import 'package:grocery/utils/style.dart';

import 'mainscreen.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20,right: 20,top:20),
        child:
        Column(
            children: [
            Container(
            height: 300.0,
            width: double.infinity,
            decoration: const  BoxDecoration(
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
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(10) ),
                      ),
                      child:
                      IconButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  const MainScreen()));
                        },
                        padding: EdgeInsets.only(bottom: 5.0,top: 5),
                        icon: Icon( Icons.arrow_back_ios_outlined,color: Colors.white,size: 25,
                        ),
                      )
                  ),
                  Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(10) ),
                      ),
                      child:
                      IconButton(
                        onPressed: (){},
                        padding: EdgeInsets.only(bottom: 5.0,top: 5),
                        icon: Icon( Icons.shopping_cart,color: Colors.white,size: 25,
                        ),
                      )
                  ),

                ],

              )
            ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text("Delicious Avocado", style:
                  AppStyles.blackBoldFont,
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  RatingIcon(),
                  Text("(4.9)", style: AppStyles.greySmallFont,),
                  SizedBox(width: 110,),
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
                        padding: EdgeInsets.only(left: 4.0,bottom: 70),
                        icon: Icon( Icons.minimize,color: Colors.white,size: 30,
                        ),
                      )
                  ),
                  SizedBox(width: 5,),
                  Text("6", style: AppStyles.blackSmallBoldFont,),
                  SizedBox(width: 5,),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        onPressed: (){ },
                        padding: EdgeInsets.only(right: 20.0,bottom: 10.0),
                        icon: Icon( Icons.add,color: Colors.white,size: 40,
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height:15,),
              Row(
                children:  [
                  Text("Description", style: AppStyles.blackBoldFont,
                    textAlign: TextAlign.left,),
                ],),
              SizedBox(height:15,),
              Row(
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
                ],),
              SizedBox(height: 25,),
              ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 150,
                    width: 350,
                    color: Colors.white,
                    child: Image.asset("assets/image7.jpg",fit: BoxFit.fitWidth,),
                  )
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Price",style: AppStyles.greySmallFont,),
                      SizedBox(height: 10,),
                      Text("\$ 35,49",
                        style:
                        TextStyle(
                            color: Colors.green.shade200,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            fontSize: 35),),

                    ],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: [
                      MaterialButton(
                        color: Colors.green.shade300,
                        height: 70,
                        onPressed: () {
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Text("Add to Card",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold
                              ),),
                            Icon(Icons.arrow_forward_ios,color: Colors.white,size: 25,)
                          ],
                        ),
                      ),
                    ],
                  )

                ],
              )
            ]
        ),

      ),
    );
  }
}

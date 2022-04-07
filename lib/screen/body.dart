import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/screen/category_list.dart';
import 'package:grocery/screen/detailspage.dart';
import 'package:grocery/utils/style.dart';

import 'category_item.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child:
          SafeArea(
            child:
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40,left: 20,right: 20),
                    child:
                    Row(
                      children: [
                        Expanded(child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text("Welcome", style: AppStyles.greyFont,),
                            SizedBox(height:5,),
                            Text("User Name",style: AppStyles.blackBoldFont,),
                          ],
                        ),
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 70,
                              width: 70,
                              color: Colors.black,
                              child: Image.asset("assets/person.png",),
                            )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,), 
                  Row(
                    verticalDirection: VerticalDirection.down,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white
                          ),
                          child: const TextField( textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(
                                  Icons.search,color: Colors.grey,size:35,
                                ),
                                hintText: "Search Products",
                              hintStyle: TextStyle(fontFamily: "Montserrat",color: Colors.grey)

                            ),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.all(Radius.circular(10) ),
                            ),
                            child:
                            IconButton(
                              onPressed: (){},
                              padding: EdgeInsets.only(right: 20.0,bottom: 10.0),
                              icon: Icon( Icons.short_text,color: Colors.white,size: 50,
                              ),
                            )
                        ),
                      ],
                    ),
                  const SizedBox(height: 20,),
                  const CategoryList(),
                  const SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 330,
                            width: 200,
                            padding: EdgeInsets.only(left: 10,),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 230,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset("assets/image2.jpeg"),
                                ),
                                Text("Fresh Apple",style: AppStyles.blackSmallBoldFont,),
                                SizedBox(height: 5,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Fruit",style: AppStyles.greySmallFont,),
                                        SizedBox(height: 5,),
                                        Text("\$ 11,49",
                                          style:
                                          TextStyle(
                                              color: Colors.blue.shade200,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),),

                                      ],
                                    ),
                                    SizedBox(width: 30,),
                                    Column(
                                      children: [
                                        Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.blue.shade200,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomLeft: Radius.circular(10) ),
                                            ),
                                            child: IconButton(
                                              onPressed: (){ Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>  const DetailsPage()));
                                              },
                                              padding: EdgeInsets.only(right: 20.0,bottom: 10.0),
                                              icon: Icon( Icons.add,color: Colors.white,size: 50,
                                              ),
                                            )
                                        )
                                      ],
                                    )

                                  ],
                                )

                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 330,
                            width: 200,
                            padding: EdgeInsets.only(left: 10,),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 230,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset("assets/image3.jpeg"),
                                ),
                                Text("Tomato",style: AppStyles.blackSmallBoldFont,),
                                SizedBox(height: 5,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Vegetables",style: AppStyles.greySmallFont,),
                                        SizedBox(height: 5,),
                                        Text("\$ 11,49",
                                          style:
                                          TextStyle(
                                              color: Colors.blue.shade200,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),),

                                      ],
                                    ),
                                    SizedBox(width: 30,),
                                    Column(
                                      children: [
                                        Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.blue.shade200,
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10) ),
                                            ),
                                            child:
                                            IconButton(
                                              onPressed: (){},
                                              padding: EdgeInsets.only(right: 20.0,bottom: 10.0),
                                              icon: Icon( Icons.add,color: Colors.white,size: 50,
                                              ),
                                            )
                                        )
                                      ],
                                    )

                                  ],
                                )

                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
                  SizedBox(height: 25,),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: 150,
                        width: 350,
                        color: Colors.white,
                        child: Image.asset("assets/image4.jpg",fit: BoxFit.fitWidth,),
                      )
                  ),
                ]
      ),
      ),
      );

  }
}

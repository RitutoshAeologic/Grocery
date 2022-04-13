import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/utils/style.dart';
import '../../router.dart';
import 'category/category_ui/category_list.dart';

class WelcomeBody extends StatelessWidget {
  var size,height,width;
   WelcomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return
      SingleChildScrollView(
        child:
          SafeArea(
            child:
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5,left: 20,right: 20),
                    child:
                    Row(
                      children: [
                        Expanded(child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text("Welcome", style: AppStyles.greyFont,),
                            SizedBox(
                              height: size.height*0.006,
                              ),
                            Text("User Name",style: AppStyles.blackBoldFont,),
                          ],
                        ),
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height:
                              size.height*0.08,
                              width:
                              size.width*0.18,
                              color: Colors.black,
                              child: Image.asset("assets/person.png",),
                            )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height*0.015,),
                  Row(
                    verticalDirection: VerticalDirection.down,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: size.height*0.07,
                          width: size.width*0.6,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white
                          ),
                          child: const TextField( textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(
                                  Icons.search,color: Colors.grey,size:40,
                                ),
                                hintText: "Search Products",
                              hintStyle: TextStyle(fontFamily: "Montserrat",color: Colors.grey,height: 1.8)

                            ),
                          ),
                        ),
                        SizedBox(width: size.width*0.12,),
                        Container(
                            height: size.height*0.07,
                            width:  size.width*0.15,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.all(Radius.circular(10) ),
                            ),
                            child:
                            IconButton(
                              onPressed: () => Navigator.pushNamed(context, Routes.noInternetScreen),
                              padding: EdgeInsets.only(right: 20.0,bottom: 10.0),
                              icon: Icon( Icons.short_text,color: Colors.white,size: 50,
                              ),
                            )
                        ),
                      ],
                    ),
                  SizedBox(height: size.height*0.022,),
                  CategoryList(),
                  SizedBox(height: size.height*0.022,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: size.height*0.4,
                            width: size.width*0.55,
                            padding: EdgeInsets.only(left: 10,),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: size.height*0.28,
                                  width: size.width*1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset("assets/image2.jpeg"),
                                ),
                                Text("Fresh Apple",style: AppStyles.blackSmallBoldFont,),
                                SizedBox(height: size.height*0.01,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Fruit",style: AppStyles.greySmallFont,),
                                        SizedBox(height: size.height*0.005,),
                                        Text("\$ 11,49",
                                          style:
                                          TextStyle(
                                              color: Colors.blue.shade200,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),),

                                      ],
                                    ),
                                    SizedBox(width: size.width*0.22,),
                                    Column(
                                      children: [
                                        Container(
                                            height: size.height*0.06,
                                            width: size.width*0.13,
                                            decoration: BoxDecoration(
                                              color: Colors.blue.shade200,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomLeft: Radius.circular(10) ),
                                            ),
                                            child: IconButton(
                                                onPressed: () =>
                                                    Navigator.pushNamed(
                                                        context,
                                                        Routes.detailscreen),
                                              padding: EdgeInsets.only(right: 20.0,bottom: 10.0),
                                              icon: Icon( Icons.add,color: Colors.white,size: 45,
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
                          SizedBox(width: size.width*0.05,),
                          Container(
                            height: size.height*0.4,
                            width: size.width*0.55,
                            padding: EdgeInsets.only(left: 10,),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: size.height*0.28,
                                  width: size.width*1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset("assets/image3.jpeg"),
                                ),
                                Text("Tomato",style: AppStyles.blackSmallBoldFont,),
                                SizedBox(height: size.height*0.01,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Vegetables",style: AppStyles.greySmallFont,),
                                        SizedBox(height: size.height*0.005,),
                                        Text("\$ 11,49",
                                          style:
                                          TextStyle(
                                              color: Colors.blue.shade200,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),),

                                      ],
                                    ),
                                    SizedBox(width: size.width*0.15,),
                                    Column(
                                      children: [
                                        Container(
                                            height: size.height*0.06,
                                            width: size.width*0.13,
                                            decoration: BoxDecoration(
                                              color: Colors.blue.shade200,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomLeft: Radius.circular(10) ),
                                            ),
                                            child: IconButton(
                                              onPressed: () =>
                                                  Navigator.pushNamed(
                                                      context,
                                                      Routes.detailscreen),
                                              padding: EdgeInsets.only(right: 20.0,bottom: 10.0),
                                              icon: Icon( Icons.add,color: Colors.white,size: 45,
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
                  SizedBox(height: size.height*0.025,),
                  Padding(padding: EdgeInsets.only(left: 20,right: 20),
                      child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: size.height*0.18,
                            width: MediaQuery.of(context).size.width*0.8,
                            color: Colors.white,
                            child: Image.asset("assets/image4.jpg",fit: BoxFit.fitWidth,),
                          )

                      ),)
                ]
      ),
      ),
      );

  }
}

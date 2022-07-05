import 'package:flutter/material.dart';
import 'package:helloworld/Home_page/item_detail_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 10,),
              child: Icon(
                 Icons.notifications_rounded,
                color: Colors.white,
                ),
            ),
          )
        ],
      ),

      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left:20),
              child: Text(
                "Hi jojo",
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  ),
              ),
              ),
            Container(
              margin: EdgeInsets.only(top: 5, left:20),
              child: Text(
                "Welcome back",
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  ),
              ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25,left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      offset: Offset(0, 10),
                      blurRadius: 15,
                      spreadRadius: 0
                    )
                  ]
                ),
                height: 68,
                width: size.width,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          maxLines: 1,
                          autofocus: false,
                          style: TextStyle(
                            color: Color(0xff107163),
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                          ),
                        ),
                        ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff107163),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        ),
                    ),
                  ],
                ),
              ),

              Container(
                width: size.width,
                 margin: EdgeInsets.only(top: 20, left: 20),
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      child: Text(
                        "Category",
                        style: TextStyle(
                          color: Color(0xff363636),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Container(
                width: size.width,
                
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                       margin: EdgeInsets.only(right: 20, top: 1),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "See all",
                          style: TextStyle(
                            color: Color(0xff363636),
                            fontSize: 19,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    ),    
                 ],
                ),
              ),         
          ],
          ),
      ),
      Container(
                      height: 120,
                      margin: EdgeInsets.only(top: 30, left: 10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          demoCategories("assets/images/tooth.png", "Tooth","10 Doctors"),
                          demoCategories("assets/images/brain.png", "Brain","15 Doctors"),
                          demoCategories("assets/images/heart.png", "Heart","16 Doctors"),
                          demoCategories("assets/images/bone.png", "Bone","18 Doctors"),
                        ],
                      ),
                    ),
                     Container(
                width: size.width,
                 margin: EdgeInsets.only(top: 20, left: 20),
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      child: Text(
                        "Top Rated",
                        style: TextStyle(
                          color: Color(0xff363636),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Container(
                       margin: EdgeInsets.only(right: 20, top: 1),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "See all",
                          style: TextStyle(
                            color: Color(0xff363636),
                            fontSize: 19,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    ),    
                 ],
                ),
              ),   

              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      demoTopRatedDr(
                        "assets/images/dr_1.png",
                        "Dr Fred Mask",
                        "Heart Surgeon",
                        "4.1",
                        ),
                        demoTopRatedDr(
                        "assets/images/dr_2.png",
                        "Dr Stella Kane",
                        "Bone Surgeon",
                        "4.5",
                        ),
                        demoTopRatedDr(
                        "assets/images/dr_3.png",
                        "Dr Zac wolfi",
                        "Eye Surgeon",
                        "4.1",
                        ),
                    ],
                  ),
                ),
                )
          ],
      ),
    ),
    );
    
  }

  Widget demoCategories(String image, String name, String drQuatity) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 100,
      decoration: BoxDecoration(
      color: Color(0xff107163),
      borderRadius: BorderRadius.circular(10),
      ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(image),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Color(0xffd9fffa).withOpacity(.07),

                    ),
                    child: Text(
                      drQuatity,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontFamily: 'Roboto',
                      ) ,
                    ),
                    )
              ],

      ),
    );
  }

 Widget  demoTopRatedDr(String image, String name, String speciality, String rating) {
  Size size = MediaQuery.of(context).size;
  return GestureDetector(
    onTap: () {Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){
                        return ItemDetailsPage();
                        },
                    ),
                        );

    },
    child: Container(
      height: 90,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 90,
            width: 50,
            child: Image.asset(image),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Color(0xff363636),
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          speciality,
                          style: TextStyle(
                            color: Color(0xffababab),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3, left: size.width * 0.25),
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                "Rating",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Roboto'
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                rating,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Roboto'
                                ),
                              ),
                            ),
                          ],
                        ),

                      )
                    ],
                  ),
                )

              ],
            ),
          )
        ],
      ),
    ),
  );
 }
}
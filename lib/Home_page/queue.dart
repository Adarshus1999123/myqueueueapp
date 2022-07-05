import 'package:flutter/material.dart';


class Queue extends StatefulWidget {
  @override
  State<Queue> createState() => _QueueState();
}

class _QueueState extends State<Queue> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        
        actions: [
          GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications_rounded,
              color: Colors.white,
            ),
          ),
        ),
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
        children:[ Container(
                              margin: EdgeInsets.only(left: 20, top: 30),
                              child: Text(
                                "Queue",
                                style: TextStyle(
                                  color: Color(0xff363636),
                                  fontSize: 22,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),

      Container(
                      height: 120,
                      margin: EdgeInsets.only(top: 30, left: 10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          demoQueue("A_110", "Caleb", "8:00"),
                          demoQueue("A_110", "Caleb", "8:00"),
                          demoQueue("A_110", "Caleb", "8:00"),
                          demoQueue("A_110", "Caleb", "8:00"),
                        ],
                      ),
                    ),
        ],
      ),
      ),
    );
  }


  Widget demoQueue(String token_no, String name, String time) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 100,
      decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(10),
      ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    token_no,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                      time,
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
}
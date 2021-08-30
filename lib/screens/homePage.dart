import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_control/screens/bedRoom.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.blue[900]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 30, right: 40),
              child: Container(
                height: size.height * 0.12,
                decoration: BoxDecoration(color: Colors.blue[900]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Control",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Panel",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                        height: 100,
                        child: SvgPicture.asset(
                          "assets/user.svg",
                        )),
                    // Container(
                    //     height: 100,
                    //     child: SvgPicture.asset("assets/kitchen.svg",)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20,right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "All Rooms",
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => BedRoom()),);
                            },
                            child: Container(
                              width: size.width * 0.37,
                              height: size.width * 0.37,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xfffe0e0e0),
                                      spreadRadius: 0,
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,top: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                        child: SvgPicture.asset(
                                          "assets/bed.svg",
                                        )),
                                    Text(
                                      "Bed Room",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      "4 lights",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: size.width * 0.37,
                            height: size.width * 0.37,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xfffe0e0e0),
                                    spreadRadius: 0,
                                    blurRadius: 6.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      child: SvgPicture.asset(
                                        "assets/room.svg",
                                      )),
                                  Text(
                                    "Living Room",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Text(
                                    "4 lights",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height*0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width * 0.37,
                            height: size.width * 0.37,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xfffe0e0e0),
                                    spreadRadius: 0,
                                    blurRadius: 6.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      child: SvgPicture.asset(
                                        "assets/kitchen.svg",
                                      )),
                                  Text(
                                    "Kitchen",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Text(
                                    "4 lights",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: size.width * 0.37,
                            height: size.width * 0.37,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xfffe0e0e0),
                                    spreadRadius: 0,
                                    blurRadius: 6.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      child: SvgPicture.asset(
                                        "assets/bathtube.svg",
                                      )),
                                  Text(
                                    "Bathroom",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Text(
                                    "4 lights",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height*0.02,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width * 0.37,
                            height: size.width * 0.37,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xfffe0e0e0),
                                    spreadRadius: 0,
                                    blurRadius: 6.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      child: SvgPicture.asset(
                                        "assets/house.svg",
                                      )),
                                  Text(
                                    "Outdoor",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Text(
                                    "4 lights",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: size.width * 0.37,
                            height: size.width * 0.37,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xfffe0e0e0),
                                    spreadRadius: 0,
                                    blurRadius: 6.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      child: SvgPicture.asset(
                                        "assets/balcony.svg",
                                      )),
                                  Text(
                                    "Balcony",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Text(
                                    "4 lights",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(label: "bulb",icon: Icons.(SvgPicture.asset("assets/bulb.svg"))),
      //   BottomNavigationBarItem(label:"home",icon: SvgPicture.asset("assets/Icon feather-house.svg")),
      //   BottomNavigationBarItem(label: "settings",icon: SvgPicture.asset("assets/Icon feather-settings.svg")),

      // ],),
    );
  }
}

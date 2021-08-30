import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BedRoom extends StatefulWidget {
  const BedRoom({Key? key}) : super(key: key);

  @override
  _BedRoomState createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {
  final List<String> entries = <String>['Main Light', 'Desk Light', 'Bed Time'];
  Color _color = Colors.orange;
  double _currentSliderValue = 0;
  int selected =0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.blue[900]),
        child: Column(
          children: [
            Container(
              height: size.height * 0.30,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 109,
                      ),
                      Text(
                        "Bed Room",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "4 Lights",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Stack(  //hiding the lower lamp to change the color
                    children: [
                      Opacity(
                        opacity: _currentSliderValue / 100,
                        child: SvgPicture.asset(
                          "assets/light bulb.svg",
                          color: _color,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/Group 38.svg",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5,left: 10),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            selected=index;
                          });
                        },
                        child: selected==index? //if it is selected then the color needs to be changed(code for that)
                        Container(
                          width: size.width * 0.34,
                          decoration: BoxDecoration(
                              color: Colors.indigo[900],
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                "assets/surface2.svg",
                              ),
                              Text(
                                entries[index],
                                style: TextStyle(
                                    fontSize: 12,
                                    color:Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                        )
                        :Container(
                          width: size.width * 0.34,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                "assets/surface1.svg",
                              ),
                              Text(
                                entries[index],
                                style: TextStyle(
                                    fontSize: 12,
                                    color:Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                        ),
                      ),
                    );
                  }),
            ),
            
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Intensity",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max, //CODE FOR SLIDER
                        children: [
                          Expanded(
                            flex: 1,
                            child: SvgPicture.asset(
                              "assets/solution2.svg",
                            ),
                          ),
                          Expanded(
                            flex: 9,
                            child: Slider(
                              activeColor: Colors.amber,
                              inactiveColor: Colors.grey[100],
                              value: _currentSliderValue,
                              min: 0,
                              max: 100,
                              onChanged: (double value) {
                                setState(() {
                                  _currentSliderValue = value;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SvgPicture.asset(
                              "assets/solution.svg",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Colors",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _color = Colors.pink;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.pink[200],
                                  borderRadius: BorderRadius.circular(23)),
                              width: 35,
                              height: 35,
                            ),
                          ),
                          InkWell(//DID NOT CREATE LISTVIEW CAUSE IT WASNT ALLOWING COLOR? FORMAT
                            onTap: () {
                              setState(() {
                                _color = Colors.green;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green[200],
                                  borderRadius: BorderRadius.circular(23)),
                              width: 35,
                              height: 35,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _color = Colors.blue;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[200],
                                  borderRadius: BorderRadius.circular(23)),
                              width: 35,
                              height: 35,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _color = Colors.purple;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.purple[200],
                                  borderRadius: BorderRadius.circular(23)),
                              width: 35,
                              height: 35,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _color = Colors.pink;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.pink[200],
                                  borderRadius: BorderRadius.circular(23)),
                              width: 35,
                              height: 35,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _color = Colors.yellow;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.yellow[200],
                                  borderRadius: BorderRadius.circular(23)),
                              width: 35,
                              height: 35,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(23)),
                            child: Icon(Icons.add),
                            width: 35,
                            height: 35,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Scenes",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                color: Colors.orange[200],
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  "assets/surface2.svg",
                                ),
                                Text(
                                  "Birthday",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                          ),
                          Container(
                            height: 50,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                color: Colors.purple[200],
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  "assets/surface2.svg",
                                ),
                                Center(
                                    child: Text(
                                  "Party",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  "assets/surface2.svg",
                                ),
                                Text(
                                  "Fun",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                          ),
                          Container(
                            height: 50,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                                color: Colors.green[200],
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  "assets/surface2.svg",
                                ),
                                Center(
                                    child: Text(
                                  "Relax",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

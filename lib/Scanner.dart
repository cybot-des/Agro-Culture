import 'package:farmsecure/detectApplePest.dart';
import 'package:farmsecure/detectCornPest.dart';
import 'package:farmsecure/detectGrapePest.dart';
import 'package:farmsecure/detectTomatoPest.dart';
import 'package:flutter/material.dart';
import 'package:farmsecure/detectPotatoPest.dart';

class ScannerPage extends StatefulWidget {
  @override
  _ScannerPageState createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color(0xFF673AB7),
        body:ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:5.0,left: 10.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_sharp),
                    color: Colors.white,
                    onPressed: (){
                      print("Icon pressed");
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                      width: 125.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                        ],
                      )
                  )
                ],
              ),
            ),
            SizedBox(height:2.0),
            Padding(
                padding: EdgeInsets.only(left:40.0),
                child: Row(
                  children: [
                    Text("Scanner Menu",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Cursive',
                            fontWeight: FontWeight.bold,
                            fontSize: 45.0
                        ))
                  ],
                )
            ),
            SizedBox(height: 20.0),
            Container(
              height: MediaQuery.of(context).size.height-155,
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(130.0)),
              ),
              child: ListView(

                padding: EdgeInsets.only(top:40,left:20.0,right: 20.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height-240,
                        child:ListView(
                          padding: EdgeInsets.all(10),
                          children: [

                            Container( //**********1st container starts***********
                              //color: Colors.teal,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20.0),

                                ),
                                child: Container(
                                    padding: EdgeInsets.all(15.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(color:Color(0xFF673AB7), spreadRadius: 2),
                                      ],
                                    ),
                                    child:GestureDetector(child:Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(

                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(180.0),
                                            ),
                                            child: ImageIcon(
                                                AssetImage('assets/potato_leaf.png'),
                                                size:120.0,
                                                color:Colors.black
                                            )
                                        ),
                                        Text("Potato",style:TextStyle(fontFamily: 'Calibri',fontSize: 30,fontWeight:FontWeight.bold))
                                      ],
                                    ),
                                      onTap: (){
                                        print("Tapped row container");
                                        Navigator.push(context,MaterialPageRoute(builder:  (context) => DetectPotatoPest()));
                                      },)
                                )
                            ), //**********1st container ends here**********

                            SizedBox(height:25.5),

                            // ******************2nd Container starts here**************
                            Container( //Main list container starts here
                          //color: Colors.teal,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20.0),

                            ),
                            child: Container(
                              padding: EdgeInsets.all(13.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(color:Color(0xFF673AB7), spreadRadius: 2),
                                ],
                              ),
                              child:GestureDetector(child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(

                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(180.0),
                                      ),
                                      child: ImageIcon(
                                          AssetImage('assets/corn.png'),
                                          size:120.0,
                                          color:Colors.black
                                      )
                                  ),
                                  Text("Maize",style:TextStyle(fontFamily: 'Calibri',fontSize: 30,fontWeight:FontWeight.bold))
                                ],
                              ),
                              onTap: (){
                                print("Tapped Maize container");
                                Navigator.push(context,MaterialPageRoute(builder:  (context) => DetectCornPest()));
                              },
                              )
                            )
                        ),
                        //*****************2nd container ends here***************
                         SizedBox(height: 25.5,),

                        //***************3rd Container starts here****************
                            Container( //Main list container starts here
                              //color: Colors.teal,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20.0),

                                ),
                                child: Container(
                                  padding: EdgeInsets.all(13.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(color:Color(0xFF673AB7), spreadRadius: 2),
                                    ],
                                  ),
                                  child:GestureDetector(child:Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(

                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.circular(180.0),
                                          ),
                                          child: ImageIcon(
                                              AssetImage('assets/Tomato_Model/tomato.png'),
                                              size:120.0,
                                              //color:Colors.black
                                          )
                                      ),
                                      Text("Tomato",style:TextStyle(fontFamily: 'Calibri',fontSize: 30,fontWeight:FontWeight.bold))
                                    ],
                                  ),
                                  onTap: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>DetectTomatoPest()));
                                  },
                                  )
                                )
                            ),

                        //****************3rd Container ends here*****************
                            SizedBox(height: 25.5,),


                            //**************************4th container starts here*********************8
                            Container( //Main list container starts here
                              //color: Colors.teal,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20.0),

                                ),
                                child: Container(
                                    padding: EdgeInsets.all(13.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(color:Color(0xFF673AB7), spreadRadius: 2),
                                      ],
                                    ),
                                    child:GestureDetector(child:Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(

                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(180.0),
                                            ),
                                            child: ImageIcon(
                                              AssetImage('assets/Apple_Model/apple.png'),
                                              size:120.0,
                                              //color:Colors.black
                                            )
                                        ),
                                        Text("Apple",style:TextStyle(fontFamily: 'Calibri',fontSize: 30,fontWeight:FontWeight.bold))
                                      ],
                                    ),
                                      onTap: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context)=>DetectApplePest()));
                                      },
                                    )
                                )
                            ),

                            //************************ 4th container ends here***********************

                            SizedBox(height:25.5),


                            //************************** 5th container starts here*********************8
                            Container( //Main list container starts here
                              //color: Colors.teal,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20.0),

                                ),
                                child: Container(
                                    padding: EdgeInsets.all(13.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(color:Color(0xFF673AB7), spreadRadius: 2),
                                      ],
                                    ),
                                    child:GestureDetector(child:Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(

                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius: BorderRadius.circular(180.0),
                                            ),
                                            child: ImageIcon(
                                              AssetImage('assets/Grape_Model/grapes.png'),
                                              size:120.0,
                                              //color:Colors.black
                                            )
                                        ),
                                        Text("Grape",style:TextStyle(fontFamily: 'Calibri',fontSize: 30,fontWeight:FontWeight.bold))
                                      ],
                                    ),
                                      onTap: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context)=>DetectGrapePest()));
                                      },
                                    )
                                )
                            ),

                            //************************ 5th container ends here***********************
                          ],
                        )
                    ),
                  )
                ],
              ),
            ),

          ],

        )
    );
  }
}

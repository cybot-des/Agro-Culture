import 'package:farmsecure/Scanner.dart';
import 'package:farmsecure/WeatherScreen.dart';
import 'package:farmsecure/YoutubeCareTips.dart';
import 'package:farmsecure/feedbackScreen.dart';
import 'package:farmsecure/krushiKendra.dart';
import 'package:farmsecure/soilclassification.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer:Drawer(

        child:ListView(
          children:[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),

          ]
        )
      ),
      backgroundColor: Color(0xFF388E3C),
      body:ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:5.0,left: 10.0),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.info_outline_rounded),
                  color: Colors.white,
                  onPressed: (){
                    print("Icon pressed");
                    //Navigator.pop(context);
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => _buildPopupDialog(context)
                    );
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
                Text("Agro Culture",
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
                    height: MediaQuery.of(context).size.height-240.0,
                    child:ListView(
                      padding: EdgeInsets.all(10),
                      children: [
                        //*************************1st container****************************************
                        Container(
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
                                BoxShadow(color:Color(0xFF388E3C), spreadRadius: 2),
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
                                    AssetImage('assets/pest_2.png'),
                                    size:120.0,
                                    color:Colors.black
                                  )
                                ),
                                Text("Detect Pest",style:TextStyle(fontFamily: 'Calibri',fontSize: 30,fontWeight:FontWeight.bold))
                              ],
                            ),
                            onTap: (){
                              print("Tapped row container");
                              Navigator.push(context,MaterialPageRoute(builder: (context) => ScannerPage()));
                            },)
                          )
                        ), //*****1st container ends here*******



                        SizedBox(height: 25.5,), //_SPACER HERE



                        //************************** 2nd Container starts here**********************************
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
                                  BoxShadow(color:Color(0xFF388E3C), spreadRadius: 2),
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
                                          AssetImage('assets/growth.png'),
                                          size:120.0,
                                          color:Colors.black
                                      )
                                  ),
                                  Text("Classify Soil",style:TextStyle(fontFamily: 'Calibri',fontSize: 30,fontWeight:FontWeight.bold))
                                ],
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => ClassifySoilType()));
                              },
                              )
                            )
                        ),
                        //*********************2nd container ends here**************************



                        SizedBox(height: 25.5,), //_SPACER HERE



                        //************************** 3rd Container starts here**********************************
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
                                  BoxShadow(color:Color(0xFF388E3C), spreadRadius: 2),
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
                                          AssetImage('assets/sun.png'),
                                          size:120.0,
                                          color:Colors.black
                                      )
                                  ),
                                  Text("Weather",style:TextStyle(fontFamily: 'Calibri',fontSize: 30,fontWeight:FontWeight.bold))
                                ],
                              ),
                              onTap:() {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => WeatherScreen()));
                              })
                            )
                        ),

                        //****************************** 3rd container ends here***********************************



                        SizedBox(height:25.5),

                        // ********** 4th container starts here *******************
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
                                  BoxShadow(color:Color(0xFF388E3C), spreadRadius: 2),
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
                                          AssetImage('assets/speech.png'),
                                          size:120.0,
                                          color:Colors.black
                                      )
                                  ),
                                  Text("Feedback",style:TextStyle(fontFamily: 'Calibri',fontSize: 30,fontWeight:FontWeight.bold))
                                ],
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => feedbackScreen()));
                              },
                              )
                            )
                        ),
                        // ********** 4th container ends here *******************

                        SizedBox(height:25.5),

                        // ****************** 5th Container ******************************
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
                                    BoxShadow(color:Color(0xFF388E3C), spreadRadius: 2),
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
                                            AssetImage('assets/location.png'),
                                            size:120.0,
                                            color:Colors.black
                                        )
                                    ),
                                    Text("KrushiKendra",style:TextStyle(fontFamily: 'Calibri',fontSize: 30,fontWeight:FontWeight.bold))
                                  ],
                                ),
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => KrushiKendraMap()));
                                  },
                                )
                            )
                        ),
                        // ****************** 5th container ends here *********************
                      ],
                    )
                  ),
                )
              ],
            ),
          ),

        ],

      ),

    );
  }
}
Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('About App'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Agro Culture is a smart app equipped "
            "to provide all knowledge based information"
            " for farming"),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: Text('Close'),
      ),
    ],
  );
}
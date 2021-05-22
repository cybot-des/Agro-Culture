import 'package:flutter/material.dart';

class TomatoBacterialSpot extends StatefulWidget {
  @override
  _TomatoBacterialSpotState createState() => _TomatoBacterialSpotState();
}

class _TomatoBacterialSpotState extends State<TomatoBacterialSpot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFc62828),
      body:ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:5.0,left: 10.0),     //+++++++++++++++++++++++++++ Changes for lifting up (top)
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
          SizedBox(height:2.0),                                 //+++++++++++++++++++++++++++ Changes for lifting up (height)
          Padding(
              padding: EdgeInsets.only(left:40.0),
              child: Row(
                children: [
                  Text("Bacterial Leaf Spot",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Cursive',
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0
                      ))
                ],
              )
          ),
          SizedBox(height: 25.0),

          Container(
            height: MediaQuery.of(context).size.height-155,     //+++++++++++++++++++++++++++ Changes for lifting up (155)
            decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(130.0)),
            ),
            child: ListView(

              padding: EdgeInsets.only(left:20.0,right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Container(
                      height: MediaQuery.of(context).size.height-240.0, //+++++++++++++++++++++++++++ Changes for lifting up (260 se 240)
                      child:ListView(
                        padding: EdgeInsets.all(10),
                        children: [
                          //*************************1st container****************************************
                          Image(image:AssetImage('assets/Tomato_Model/tomato_bacterial_spot.JPG'),height: 250,width: 250, ),
                          SizedBox(height: 20,),
                          Text("Symptoms:\n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text('Bacterial spot of tomato is a potentially devastating disease that, in '
                              'severe cases, can lead to unmarketable fruit and even plant death.'
                              'Bacterial spot can occur wherever tomatoes are grown, but is found '
                              'most frequently in warm, wet climates, as well as in greenhouses. '
                              'Bacterial spot of tomato is caused by Xanthomonas vesicatoria, '
                              'Xanthomonas euvesicatoria, Xanthomonas gardneri, and Xanthomonas perforans.'
                              '  These bacterial pathogens can be introduced into a garden on contaminated'
                              ' seed and transplants, which may or may not show symptoms.\n\n',

                            style: TextStyle(fontSize: 18),   ),


                          Text("Prevention:\n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                          //Read more at Gardening Know How: Potato Early Blight Treatment – Managing Potatoes With Early Blight https://www.gardeningknowhow.com/edible/vegetables/potato/potato-early-blight-treatment.htm'),
                          Text('A plant with bacterial spot cannot be cured.Remove symptomatic plants from '
                              'the field or greenhouse to prevent the spread of bacteria to healthy plants.'
                              'Burn, bury or hot compost the affected plants and DO NOT eat symptomatic fruit.'
                              ' Although bacterial spot pathogens are not human pathogens, the fruit blemishes '
                              'that they cause can provide entry points for human pathogens that could cause '
                              'illness.Plant pathogen-free seed or transplants to prevent the introduction of'
                              ' bacterial spot pathogens on contaminated seed or seedlings.If a clean seed '
                              'source is not available or you suspect that your seed is contaminated, soak seeds'
                              ' in water at 122°F for 25 min. to kill the pathogens. ',
                            style: TextStyle(fontSize: 18),
                          )

                          //Read more at Gardening Know How: Potato Early Blight Treatment – Managing Potatoes With Early Blight https://www.gardeningknowhow.com/edible/vegetables/potato/potato-early-blight-treatment.htm')

                          //Read more at Gardening Know How: Potato Early Blight Treatment – Managing Potatoes With Early Blight https://www.gardeningknowhow.com/edible/vegetables/potato/potato-early-blight-treatment.htm')

                          //Read more at Gardening Know How: Potato Early Blight Treatment – Managing Potatoes With Early Blight https://www.gardeningknowhow.com/edible/vegetables/potato/potato-early-blight-treatment.htm')

                          //Read more at Gardening Know How: Potato Early Blight Treatment – Managing Potatoes With Early Blight https://www.gardeningknowhow.com/edible/vegetables/potato/potato-early-blight-treatment.htm')


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

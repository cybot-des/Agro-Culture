import 'package:flutter/material.dart';

class TomatoYellowCurl extends StatefulWidget {
  @override
  _TomatoYellowCurlState createState() => _TomatoYellowCurlState();
}

class _TomatoYellowCurlState extends State<TomatoYellowCurl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF48FB1),
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
                  Text("Yellow Leaf Curl Virus",
                      style: TextStyle(
                          color: Colors.black,
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
                          Image(image:AssetImage('assets/Tomato_Model/yellow_leaf_curl.JPG'),height: 250,width: 250, ),
                          SizedBox(height: 20,),
                          Text("Symptoms:\n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text('Early blight rarely affects young plants. Symptoms first occur on the lower or oldest '
                              'leaves of the plant. Dark, brown spots appear on this older foliage and, '
                              'as the disease progresses, enlarge, taking on an angular shape.'
                              '\nThese lesions often look like a target and, in fact, the disease '
                              'is sometimes referred to as target spot.As the spots enlarge, '
                              'they may cause the entire leaf to yellow and die, but remain on '
                              'the plant. Dark brown to black spots may also occur on the stems of the plant.\n\n',

                            style: TextStyle(fontSize: 18),   ),


                          Text("Prevention:\n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                          //Read more at Gardening Know How: Potato Early Blight Treatment – Managing Potatoes With Early Blight https://www.gardeningknowhow.com/edible/vegetables/potato/potato-early-blight-treatment.htm'),
                          Text('Treatment of early blight includes prevention by planting potato varieties that '
                              'are resistant to the disease; late maturing are more resistant than early maturing'
                              ' varieties.\nAvoid overhead irrigation and allow for sufficient aeration between plants '
                              'to allow the foliage to dry as quickly as possible.\nPractice a 2-year crop rotation. That'
                              ' is, do not replant potatoes or other crops in this family for 2 years after a potato '
                              'crop has been harvested.Keep the potato plants healthy and stress free by providing adequate'
                              ' nutrition and sufficient irrigation, especially later in the growing season after flowering'
                              ' when plants are most susceptible to the disease.',
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

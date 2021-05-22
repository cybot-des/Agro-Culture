import 'package:flutter/material.dart';

class TomatoTwoSpotted extends StatefulWidget {
  @override
  _TomatoTwoSpottedState createState() => _TomatoTwoSpottedState();
}

class _TomatoTwoSpottedState extends State<TomatoTwoSpotted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF81D4FA),
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
                  Text("Two Spotted Spider",
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
                          Image(image:AssetImage('assets/Tomato_Model/two_spotted_spider.JPG'),height: 250,width: 250, ),
                          SizedBox(height: 20,),
                          Text("Symptoms:\n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text('Tomato Spotted Wilt Virus is a plant disease that is now quite common in'
                              ' any temperate, subtropical, and tropical environments. Tomato spotted wilt '
                              'is caused by thrips, which are actually common garden pests. The small '
                              'insects feed on a number of plants by puncturing the leaves and sucking '
                              'out the plant’s contents. Thrips get the virus when they are in the '
                              'larval stage while feeding on infected plants, such as weeds. Once '
                              'contracted, they transmit the virus to adult thrips which fly from infected'
                              ' plants to healthy plants.\n\n',

                            style: TextStyle(fontSize: 18),   ),


                          Text("Prevention:\n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                          //Read more at Gardening Know How: Potato Early Blight Treatment – Managing Potatoes With Early Blight https://www.gardeningknowhow.com/edible/vegetables/potato/potato-early-blight-treatment.htm'),
                          Text('Once spotted wilt has infected a plant, there is no treatment options that '
                              'will save the plant.Before the growing season begins, plant disease resistant '
                              'tomato varieties with the Sw-5 gene. These varieties do not require insecticide '
                              'applications for thrips in order to control tomato spotted wilt. Use virus and'
                              ' thrips-free transplants from greenhouses that inspect transplants and actively'
                              ' manage thrips.During the growing season, avoid planting near any crops that '
                              'are infected with the virus and continue to monitor for thrips and tomato spotted'
                              ' wilt symptoms. If thrips are spotted or symptoms observed, manage thrips to '
                              'minimize the spread within the field by removing all infected plants and seedlings'
                              ', and by controlling weeds in and around the fields.  ',
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

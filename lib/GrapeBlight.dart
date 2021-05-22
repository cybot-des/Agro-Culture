import 'package:flutter/material.dart';

class GrapeBlight extends StatefulWidget {
  @override
  _GrapeBlightState createState() => _GrapeBlightState();
}

class _GrapeBlightState extends State<GrapeBlight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF795548),
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
                  Text("Grape Blight",
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
                          Image(image:AssetImage('assets/Grape_Model/grape_blight.JPG'),height: 250,width: 250, ),
                          SizedBox(height: 20,),
                          Text("Symptoms:\n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text('Prior to fruit ripening, early-season shoot blight may occur following prolonged'
                              ' warm moist conditions caused by frequent spring rains. Patches of soft brown '
                              'tissue develop resulting in the death of the infected plant part. Infections '
                              'often occur in leaf axils causing shoots to wilt or break off. At veraison, '
                              'individually infected berries in a cluster turn brown on white cultivars or '
                              'reddish in red and black cultivars. If temperatures are moderate, moisture is '
                              'high, and wind speed is low, epidermal cracks will form in which fungal growth '
                              'produces mycelium and spores, resulting in the char­acteristic gray, velvety '
                              'appearance of infected berries.\n\n',

                            style: TextStyle(fontSize: 18),   ),


                          Text("Prevention:\n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                          //Read more at Gardening Know How: Potato Early Blight Treatment – Managing Potatoes With Early Blight https://www.gardeningknowhow.com/edible/vegetables/potato/potato-early-blight-treatment.htm'),
                          Text('Successful management of Botrytis bunch rot can be achieved through the use of '
                              'several strategies. By employing cultural control methods, properly applying '
                              'fungicides, and using resistant cultivars when practical, the disease can be '
                              'managed.Canopy management and other cultural control methods along with sprays '
                              'of Organic JMS Stylet Oil and Serenade are organically acceptable methods ',
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

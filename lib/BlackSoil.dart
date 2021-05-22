import 'package:flutter/material.dart';

class BlackSoil extends StatefulWidget {
  @override
  _BlackSoilState createState() => _BlackSoilState();
}

class _BlackSoilState extends State<BlackSoil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
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
                  Text("Black Soil Type",
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
                          Image(image:AssetImage('assets/Soil_Type/Black.JPG'),height: 250,width: 250, ),
                          SizedBox(height: 20,),
                          Text("Nutrients:\n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text('Black soils are rich in aluminum, iron, lime, magnesium.'
                              ' Their phosphorus, nitrogen, and humus (organic matter) are weak '
                              'though. Typically during soil formation, this soil gets its black '
                              'color from various salts or from humus. Black soils contain a '
                              'significant quantity of clay but are often sandy in the country’s '
                              'hills.\n\n',
                            style: TextStyle(fontSize: 18),   ),


                          Text("Crop Suggestions:\n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                          //Read more at Gardening Know How: Potato Early Blight Treatment – Managing Potatoes With Early Blight https://www.gardeningknowhow.com/edible/vegetables/potato/potato-early-blight-treatment.htm'),
                          Text('In these soils under ideal irrigation, '
                              'tobacco, cotton, rice, wheat, bajra, sorghum (jowar),'
                              ' pea, pigeon pea, chickpea, black gram, green gram, soya, '
                              'groundnut, mustard, linseed, sesame, barley, jute, maize,'
                              ' all oilseeds, vegetables, and fruits are suitable.',
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

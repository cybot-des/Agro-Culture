//import 'dart:html';
import 'package:farmsecure/constants.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_api_availability/google_api_availability.dart';
import 'package:google_place/google_place.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart'as loc;

class KrushiKendraMap extends StatefulWidget {
  @override
  _KrushiKendraMapState createState() => _KrushiKendraMapState();
}

class _KrushiKendraMapState extends State<KrushiKendraMap> {

  LatLng _initialcameraposition = LatLng(20.5937,78.9629);
  GoogleMapController _controller;
  loc.Location _location = loc.Location();



  void _onMapCreated(GoogleMapController _cntlr)
  {
    _controller = _cntlr;
    _location.onLocationChanged.listen((l) {
      _controller.animateCamera(
          CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(l.latitude,l.longitude),zoom: 5))

      );
    });

    //print(_location.getLocation());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A237E),
      body:ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:15.0,left: 10.0),     //+++++++++++++++++++++++++++ Changes for lifting up (top)
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
                  Text("Krushi Kendra",
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
            height: MediaQuery.of(context).size.height-155,     //+++++++++++++++++++++++++++ Changes for lifting up (155)
            decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(130.0)),
            ),
            child: ListView(

              padding: EdgeInsets.only(left:20.0,right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child: Container(
                      height: MediaQuery.of(context).size.height-240.0, //+++++++++++++++++++++++++++ Changes for lifting up (260 se 240)
                      child:ListView(
                        //padding: EdgeInsets.
                        children: [
                          //*************************1st container****************************************
                          Center(
                            child:Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width-50,
                              child:GoogleMap(
                                initialCameraPosition: CameraPosition(
                                  target: _initialcameraposition,
                                  zoom: 5
                                ),
                                mapType: MapType.normal,
                                onMapCreated: _onMapCreated,
                                myLocationEnabled: true,
                                //zoomControlsEnabled: true,
                                scrollGesturesEnabled: true,
                                buildingsEnabled: true,
                                trafficEnabled: true,
                                zoomGesturesEnabled: true,
                                zoomControlsEnabled: true,
//                                onCameraMove: (CameraPosition cameraposition){
//                                  print(cameraposition.zoom);
//                                },
                                markers: {
                                  Marker(
                                    markerId: MarkerId("kendra1"),
                                    position: LatLng(19.70629205766188, 72.8453313512267),
                                    infoWindow: InfoWindow(title: 'Om Agro Center'),
                                    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet)
                                  ),
                                  Marker(
                                      markerId: MarkerId("kendra2"),
                                      position: LatLng(19.59295668525974, 72.82007616084992),
                                      infoWindow: InfoWindow(title: 'Ankur krushi kendra'),
                                      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet)
                                  ),
                                  Marker(
                                      markerId: MarkerId("kendra3"),
                                      position: LatLng(19.460626977014076, 73.33233561943992),
                                      infoWindow: InfoWindow(title: 'Krushi Seva Kendra'),
                                      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet)
                                  ),
                                  Marker(
                                      markerId: MarkerId("kendra4"),
                                      position: LatLng(19.084126068691752, 73.01277931943991),
                                      infoWindow: InfoWindow(title: 'Siddhivinayak krushi kendra'),
                                      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet)
                                  ),
                                  Marker(
                                      markerId: MarkerId("kendra5"),
                                      position: LatLng(19.17362534514587, 72.86515467396445),
                                      infoWindow: InfoWindow(title: 'Maharashtra krushi udyog'),
                                      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet)
                                  ),
                                },
                              )
                            )
                          )



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

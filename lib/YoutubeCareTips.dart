//import 'package:cached_network_image/cached_network_image.dart';
//import 'package:farmsecure/YouTubeCareTipsVideo.dart';
//import 'package:farmsecure/PlaylistInfo.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//import 'package:farmsecure/services.dart';
//
//class YoutubeCareTips extends StatefulWidget {
//  @override
//  _YoutubeCareTipsState createState() => _YoutubeCareTipsState();
//}
//
//class _YoutubeCareTipsState extends State<YoutubeCareTips> {
//
//  YouTubeCareTipsVideo _channelInfo;
//  PlaylistInfo _playlistInfo;
//  Item _item;
//  bool _loading;
//  String _playlistId;
//  String _nextPageToken;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    _loading=true;
//    _playlistInfo = PlaylistInfo();
//    _playlistInfo.videos = List();
//    _nextPageToken = '';
//    _getChannelInfo();
//    //loadVideos();
//  }
//
//  _getChannelInfo()async{
//    _channelInfo = await services.getChannelInfo();
//    _item = _channelInfo.items[0];
//    _playlistId = _item.contentDetails.relatedPlaylists.uploads;
//    //print(_playlistId);
//    setState(() {
//      _loading = false;
//    });
//  }
//
//  loadVideos()async{
//    PlaylistInfo tempVideoList = await services.getVideoList(
//        _playlistId,
//        _nextPageToken);
//    _nextPageToken = tempVideoList.nextPageToken;
//    _playlistInfo.videos.addAll(tempVideoList.videos);
//    print(_playlistInfo.videos.length);
//    setState(() {
//
//    });
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Color(0xFFC2185B),
//      body:ListView(
//        children: <Widget>[
//          Padding(
//            padding: EdgeInsets.only(top:5.0,left: 10.0),     //+++++++++++++++++++++++++++ Changes for lifting up (top)
//            child:Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: [
//                IconButton(
//                  icon: Icon(Icons.menu),
//                  color: Colors.white,
//                  onPressed: (){
//                    print("Icon pressed");
//                    //Navigator.pop(context);
//                  },
//                ),
//                Container(
//                    width: 125.0,
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                      children: <Widget>[
//                        IconButton(
//                          icon:Icon(Icons.filter_list_rounded),
//                          color:Colors.white,
//                          onPressed: (){print("Icon filter Pressed");},
//                        ),
//                        IconButton(
//                            icon:Icon(Icons.translate),
//                            color:Colors.white,
//                            onPressed: (){print("Icon Menu Pressed");}
//                        )
//                      ],
//                    )
//                )
//              ],
//            ),
//          ),
//          SizedBox(height:2.0),                                 //+++++++++++++++++++++++++++ Changes for lifting up (height)
//          Padding(
//              padding: EdgeInsets.only(left:40.0),
//              child: Row(
//                children: [
//                  Text("feedback...",
//                      style: TextStyle(
//                          color: Colors.white,
//                          fontFamily: 'Cursive',
//                          fontWeight: FontWeight.bold,
//                          fontSize: 45.0
//                      ))
//                ],
//              )
//          ),
//          SizedBox(height: 20.0),
//          Container(
//            height: MediaQuery.of(context).size.height-155,     //+++++++++++++++++++++++++++ Changes for lifting up (155)
//            decoration:BoxDecoration(
//              color: Colors.white,
//              borderRadius: BorderRadius.only(topLeft: Radius.circular(130.0)),
//            ),
//            child: ListView(
//
//              padding: EdgeInsets.only(left:20.0,right: 20.0),
//              children: <Widget>[
//                Padding(
//                  padding: EdgeInsets.only(top: 50.0),
//                  child: Container(
//                      height: MediaQuery.of(context).size.height-240.0, //+++++++++++++++++++++++++++ Changes for lifting up (260 se 240)
//                      child:ListView(
//                        padding: EdgeInsets.all(10),
//                        children: [
//                          //*************************1st container****************************************
//                          SizedBox(height:20),
//                          _buildInfoView(),
//
//                          ListView.builder(
//                            //controller: _scrollController,
//                            //itemCount: _videosList.videos.length,
//                            itemBuilder: (context, index) {
//                              //VideoItem videoItem = _videosList.videos[index];
//                              return InkWell(
//                                onTap: () async {
//                                  Navigator.push(context,
//                                      MaterialPageRoute(builder: (context) {
//                                        //return VideoPlayerScreen(
//                                          //videoItem: videoItem,
//                                        );
//                                      }));
//                                },
//                                child: Container(
//                                  padding: EdgeInsets.all(20.0),
//                                  child: Row(
//                                    children: [
//                                      CachedNetworkImage(
//                                        imageUrl: videoItem
//                                            .video.thumbnails.thumbnailsDefault.url,
//                                      ),
//                                      SizedBox(width: 20),
//                                      Flexible(child: Text(videoItem.video.title)),
//                                    ],
//                                  ),
//                                ),
//                              );
//                            },
//                          ),
//
//
//
//                        ],
//                      )
//                  ),
//                )
//              ],
//            ),
//          ),
//
//        ],
//
//      ),
//    );
//  }
//
//  _buildInfoView(){
//    return _loading ? CircularProgressIndicator():Container(
//      child:Card(
//        child:Row(
//          children:[
//
//            CircleAvatar(
//            backgroundImage: CachedNetworkImageProvider(
//              _item.snippet.thumbnails.medium.url,
//            ),
//          ),
//          SizedBox(width: 20,),
//          Expanded(
//            child: Text(
//              _item.snippet.title,
//              style:TextStyle(
//                fontSize: 25,
//                fontWeight: FontWeight.bold,
//              )
//            ),
//          )
//        ])
//      )
//    );
//  }
//
//
//}

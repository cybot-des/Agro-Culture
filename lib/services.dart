import 'dart:io';
import 'dart:convert';
import 'package:farmsecure/YouTubeCareTipsVideo.dart';
import 'package:farmsecure/PlaylistInfo.dart';
import 'package:farmsecure/constants.dart';
import 'package:http/http.dart' as http;
//import 'package:http/http.dart';

class services{
  static const CHANNEL_ID ='UCRnt3WDhjHT30Xs5h9w3gqg';
  static const _baseUrl = 'youtube.googleapis.com';


  /*basic url: curl \
  'https://youtube.googleapis.com/youtube/v3/channels?part=snippet%2CcontentDetails%2Cstatistics&id=UCRnt3WDhjHT30Xs5h9w3gqg&access_token=AIzaSyDIgVRn-PzDVXZ2q2d6gZCwpdZFttg6H9w&key=[YOUR_API_KEY]' \
  --header 'Authorization: Bearer [YOUR_ACCESS_TOKEN]' \
  --header 'Accept: application/json' \
  --compressed*/


  static Future<YouTubeCareTipsVideo> getChannelInfo()async{
    Map<String,String>parameters = {
      'part':'snippet,contentDetails,statistics',
      'id':CHANNEL_ID,
      'key':constants.KEY
    };
    Map<String,String> headers = {
      HttpHeaders.contentTypeHeader:'application/json'
    };
    Uri uri = Uri.https(_baseUrl, 'youtube/v3/channels',parameters);
    http.Response res = await http.get(uri,headers:headers);
    print(res.body);
    YouTubeCareTipsVideo channelInfo = YouTubeCareTipsVideo.fromJson(json.decode(res.body));
    return channelInfo;
  }

  static Future<PlaylistInfo>getVideoList(String playlistId,String pageToken)async{
    Map<String,String>parameters = {
      'part':'snippet',
      'playlistId':playlistId,
      'maxResults':'8',
      'pageToken':pageToken,
      'key':constants.KEY,
    };

    Map<String,String> headers = {
      HttpHeaders.contentTypeHeader:'application/json'
    };
    Uri uri2 = Uri.https(_baseUrl, 'youtube/v3/playlistItems',parameters);
    http.Response result = await http.get(uri2,headers:headers);
    print(result.body);
    PlaylistInfo playlistInfo = PlaylistInfo.fromJson(json.decode(result.body));
    return playlistInfo;
}
}
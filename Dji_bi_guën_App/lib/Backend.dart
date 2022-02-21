
//a inclure dans le fichier backend.dart
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;


sendRequest() async {
  var headers = {'Content-Type': 'application/json'};
  var request = http.Request('GET', Uri.parse('https://dji-bi-guen-api.herokuapp.com/var'));
  request.body = convert.jsonEncode({"cle": "nafiapi"});
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
   var jsonResponse = convert.jsonDecode(await response.stream.bytesToString())
        as List<dynamic>;
    // ignore: avoid_init_to_null
    var lastPostedData = null;
    if (jsonResponse.length != 0) {
      lastPostedData = jsonResponse[jsonResponse.length - 1];
      // ignore: avoid_print
      print(lastPostedData);
    }
      //extraire les les date
    return lastPostedData; 	//format
    				//{
    				// "hs" : (humidite au sol)
    				// "ha" : (humidite de l'air)
    				// "temp" : (temperature)
    				// "lum" : (humidite)
    				//}
  }
}
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);

  var url;

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jasonDecode(data);

      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}

jasonDecode(String data) {}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jsonse/modal/data.dart';

class RemoteApi {
  static Future<List<Data>> getCharacterList(int offset, int limit) async {
    List<Data> alldata = [];

    http.Response response =
        await http.get(Uri.parse('https://api.ibaity.com/v1/realestate/?limit=$limit' '&skip=$offset'));

    if (response.statusCode == 200 || response.statusCode == 201) {
      Map<String, dynamic> body = jsonDecode(response.body);

      int len = body['results'].length;
      int i;
      for (i = 0; i < len; i++) {
        Data add = Data.fromJson(body['results'][i]);
        alldata.add(add);
      }
    }
    return alldata;
  }
}

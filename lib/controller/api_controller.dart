import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../modal/data.dart';



class ApiControllerWithGetx extends GetxController {

  
  var alldata = <Data>[].obs;


  void index() async {

    Map<String,String> headers = {
      'Accept' : 'application/json'
    };

    http.Response response = await http.get(Uri.parse('https://api.ibaity.com/v1/realestate/')  , headers: headers );

    if(response.statusCode == 200 ||  response.statusCode == 201){
      
      Map<String,dynamic> body = jsonDecode(response.body);

      int len = body['results'].length;
      int i;
      for(i = 0;  i < len ; i++){
        Data add =  Data.fromJson(body['results'][i]);
        alldata.add(add);
      }

      

    

    }


  
  }

}





class ApiController{

  Future<List<Data>> getAllPost() async{
    List<Data> alldata = [];

    Map<String,String> headers = {
      'Accept' : 'application/json'
    };

    http.Response response = await http.get(Uri.parse('https://api.ibaity.com/v1/realestate/')  , headers: headers );

    if(response.statusCode == 200 ||  response.statusCode == 201){
      
      Map<String,dynamic> body = jsonDecode(response.body);

      int len = body['results'].length;
      int i;
      for(i = 0;  i < len ; i++){
        Data add =  Data.fromJson(body['results'][i]);
        alldata.add(add);
      }

      

    

    }
    return alldata;
  }
}
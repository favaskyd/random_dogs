import 'dart:convert';

import 'package:http/http.dart';
import 'package:random_dogs/src/services/models/dogs.dart';

class ApiHelper{

  static final ApiHelper _apiHelper=ApiHelper.internal();
  factory ApiHelper()=>_apiHelper;
  ApiHelper.internal();

  static const _baseurl="https://dog.ceo/api/breeds/";
  
  Future <dynamic>getRequest(String routeUrl)async{
    String url=_baseurl+routeUrl;

   try{
     Response response=await get(Uri.parse(url));
     if(response.statusCode==200){
       return Dogs.fromJson(jsonDecode(response.body));
     }
   }catch(ex){
     throw Exception();
   }
  }
  
  

}
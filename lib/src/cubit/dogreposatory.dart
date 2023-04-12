import 'package:random_dogs/src/services/api_helper.dart';
import 'package:random_dogs/src/services/models/dogs.dart';

class Repository{
  Future fetData()async{
    const routeUrl="image/random";
    var response=ApiHelper.internal().getRequest(routeUrl);
    return response;
  }
}
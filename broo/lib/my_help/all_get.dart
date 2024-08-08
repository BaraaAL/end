

import 'package:broo/model/accisoreDetales_model.dart';
import 'package:broo/helper/api.dart';
import 'package:broo/model/foodDetailes_model.dart';

import '../model/Locationdeatails_model.dart';
import '../model/potographyDetales_model.dart';
import 'Api_link.dart';
class GetAll{

  Future<foodDetailes_modelResponse> getFoodOne()async{


    var data= Api().get(url: '$FoodDetiles',);
    foodDetailes_modelResponse foodCategoryList =foodDetailes_modelResponse.fromJson(data as Map<String, dynamic>);
    return foodCategoryList;


  }
}
    //accisoresss



//import 'package:broo/helper/api.dart';
//import 'package:broo/model/foodDetailes_model.dart';

//import '../model/accisoreDetales_model.dart';

class GetAllaccisores{

  Future<accisoreDetales_modelResponse> getaccisoreOne()async{


    var data= Api().get(url: '$AccisoresDetails',);
    accisoreDetales_modelResponse accisoresList =accisoreDetales_modelResponse.fromJson(data as Map<String, dynamic>);
    return accisoresList;


  }
}
//location
class GetAlllocation{

  Future<Locationdeatails_modelResponse> getaccisoresOne()async{


    var data= Api().get(url: '$LocationDetails',);
    Locationdeatails_modelResponse LocationList =Locationdeatails_modelResponse.fromJson(data as Map<String, dynamic>);
    return LocationList;


  }
}
//photographyyyyyyyyyyyyyyyyyyyyyyyyyy
class GetAllphotography{

  Future<potographyDetales_modelResponse> getphotographyOne()async{


    var data= Api().get(url: '$PhotogrifDetails',);
    potographyDetales_modelResponse photographyList =potographyDetales_modelResponse.fromJson(data as Map<String, dynamic>);
    return photographyList;


  }
}











class Locationdeatails_model{
  final double price;
  final String name;
  final String description;
  Locationdeatails_model({required this.name,required this.description,required this.price
  });
  factory Locationdeatails_model.fromJson(jsonData){
    return Locationdeatails_model(
      name: jsonData['name'],
      description: jsonData['description'],
      price:jsonData['price'],
    );

  }
}




class Locationdeatails_modelResponse {
  final List<Locationdeatails_model> location; // تغيير الاسم إلى authors

  Locationdeatails_modelResponse({required this.location});

  factory Locationdeatails_modelResponse.fromJson(Map<String, dynamic> json) {
    var authorsJson = json['data'] as List; // تغيير المفتاح إلى data
    List<Locationdeatails_model> locationList =
    authorsJson.map((authorJson) => Locationdeatails_model.fromJson(authorJson)).toList();
    return Locationdeatails_modelResponse(location: locationList);
  }
}



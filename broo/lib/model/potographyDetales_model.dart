class potographyDetales_model{
  final double price;
  final String name;
  final String description;
  potographyDetales_model({required this.name,required this.description,required this.price
  });
  factory potographyDetales_model.fromJson(jsonData){
    return potographyDetales_model(
      name: jsonData['name'],
      description: jsonData['description'],
      price:jsonData['price'],
    );

  }
}




class potographyDetales_modelResponse {
  final List<potographyDetales_model> photography; // تغيير الاسم إلى authors

  potographyDetales_modelResponse({required this.photography});

  factory potographyDetales_modelResponse.fromJson(Map<String, dynamic> json) {
    var authorsJson = json['data'] as List; // تغيير المفتاح إلى data
    List<potographyDetales_model> photographyList =
    authorsJson.map((authorJson) => potographyDetales_model.fromJson(authorJson)).toList();
    return potographyDetales_modelResponse(photography: photographyList);
  }
}



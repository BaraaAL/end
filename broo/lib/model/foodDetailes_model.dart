class foodDetailes_model{
  final double price;
  final String name;
  final String description;
  foodDetailes_model({required this.name,required this.description,required this.price
  });
  factory foodDetailes_model.fromJson(jsonData){
    return foodDetailes_model(
      name: jsonData['name'],
      description: jsonData['description'],
        price:jsonData['price'],
    );

  }
}




class foodDetailes_modelResponse {
  final List<foodDetailes_model> food; // تغيير الاسم إلى authors

  foodDetailes_modelResponse({required this.food});

  factory foodDetailes_modelResponse.fromJson(Map<String, dynamic> json) {
    var authorsJson = json['data'] as List; // تغيير المفتاح إلى data
    List<foodDetailes_model> foodList =
    authorsJson.map((authorJson) => foodDetailes_model.fromJson(authorJson)).toList();
    return foodDetailes_modelResponse(food: foodList);
  }
}



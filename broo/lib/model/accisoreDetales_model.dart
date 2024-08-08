class accisoreDetales_model{
  final double price;
  final String name;
  final String description;
  accisoreDetales_model({required this.name,required this.description,required this.price
  });
  factory accisoreDetales_model.fromJson(jsonData){
    return accisoreDetales_model(
      name: jsonData['name'],
      description: jsonData['description'],
      price:jsonData['price'],
    );

  }
}




class accisoreDetales_modelResponse {
  final List<accisoreDetales_model> accisore; // تغيير الاسم إلى authors

  accisoreDetales_modelResponse({required this.accisore});

  factory accisoreDetales_modelResponse.fromJson(Map<String, dynamic> json) {
    var authorsJson = json['data'] as List; // تغيير المفتاح إلى data
    List<accisoreDetales_model> accisoreList =
    authorsJson.map((authorJson) => accisoreDetales_model.fromJson(authorJson)).toList();
    return accisoreDetales_modelResponse(accisore: accisoreList);
  }
}



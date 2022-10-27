class Productmodel {
  num? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  Productmodel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });
  factory Productmodel.fromJson(Map<String, dynamic> json) {
    return Productmodel(
      id: json['id'],
      image: json['image'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      category: json['category'],
    );
  }
}

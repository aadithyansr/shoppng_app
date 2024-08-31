class Product {
  final String imageUrl;
  final String title;
  final double price;

  Product({
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],
      price: json['price'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'price': price,
      'imageUrl': imageUrl,
    };
  }
}

class Category {
  final String title, image;

  Category({required this.title, required this.image});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      title: json['title'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'image': image,
    };
  }
}

class Carou {
  final String image;

  Carou({required this.image});

  factory Carou.fromJson(Map<String, dynamic> json) {
    return Carou(
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
    };
  }
}

class payment {
  final String option;

  payment({required this.option});
}

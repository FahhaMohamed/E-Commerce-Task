class Product {
  final String title;
  final String thumbnail;
  final double price;
  final double rating;
  final String brand;
  final String description;
  final List images;

  Product(
      {required this.title,
      required this.thumbnail,
      required this.brand,
      required this.price,
      required this.description,
      required this.rating,
      required this.images});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'] ?? 'Product',
      thumbnail: json['thumbnail'] ?? '',
      description: json['description'] ?? '',
      brand: json['brand'] ?? 'Brand',
      price: (json['price'] != null) ? json['price'].toDouble() : 0.0,
      rating: (json['rating'] != null) ? json['rating'].toDouble() : 0.0,
      images: json['images'] ?? [],
    );
  }
}

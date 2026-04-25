class Product {
  final String id;
  final String name;
  final String category;
  final double price;
  final String image;
  final double rating;
  final int reviews;
  final List<String> sizes;
  final List<ProductColor> colors;
  bool isFavorite;
  int quantity;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.image,
    required this.rating,
    required this.reviews,
    required this.sizes,
    required this.colors,
    this.isFavorite = false,
    this.quantity = 1,
  });
}

class ProductColor {
  final String name;
  final String hex;

  ProductColor({required this.name, required this.hex});
}

class CartItem {
  final Product product;
  final String selectedSize;
  final String selectedColor;
  int quantity;

  CartItem({
    required this.product,
    required this.selectedSize,
    required this.selectedColor,
    required this.quantity,
  });

  double get subtotal => product.price * quantity;
}

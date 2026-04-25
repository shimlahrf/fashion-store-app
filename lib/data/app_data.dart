import '../models/product.dart';

class AppData {
  static final List<Product> products = [
    Product(
      id: '1',
      name: 'Cotton shalwar',
      category: 'Women',
      price: 4999.99,
      image:
          'https://images.unsplash.com/photo-1512436991641-6745cdb1723f?w=400&h=500&fit=crop',
      rating: 5.0,
      reviews: 125,
      sizes: ['S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'Green', hex: '#4DD0B1'),
        ProductColor(name: 'Pink', hex: '#F5A9C1'),
        ProductColor(name: 'Brown', hex: '#8B7355'),
      ],
    ),
    Product(
      id: '2',
      name: 'Sarara set',
      category: 'Women',
      price: 3990.99,
      image:
          'https://images.unsplash.com/photo-1595777457583-95e059d581b8?w=400&h=500&fit=crop',
      rating: 4.5,
      reviews: 98,
      sizes: ['S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'Red', hex: '#D32F2F'),
        ProductColor(name: 'Teal', hex: '#00897B'),
        ProductColor(name: 'Brown', hex: '#8B7355'),
      ],
    ),
    Product(
      id: '3',
      name: 'Bridel lehanga',
      category: 'Women',
      price: 10999.99,
      image:
          'https://images.unsplash.com/photo-1517841905240-472988babdf9?w=400&h=500&fit=crop',
      rating: 5.0,
      reviews: 156,
      sizes: ['S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'Black', hex: '#000000'),
        ProductColor(name: 'Red', hex: '#FF6B6B'),
        ProductColor(name: 'Purple', hex: '#9C27B0'),
      ],
    ),
    Product(
      id: '4',
      name: 'Linen Shirt',
      category: 'Men',
      price: 3500.00,
      image:
          'https://images.unsplash.com/photo-1607345366928-199ea26cfe3e?w=400&h=500&fit=crop',
      rating: 3.5,
      reviews: 45,
      sizes: ['S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'Light Blue', hex: '#87CEEB'),
        ProductColor(name: 'Green', hex: '#90EE90'),
        ProductColor(name: 'Pink', hex: '#FFB6C1'),
      ],
    ),
    Product(
      id: '5',
      name: 'Trending Shirt',
      category: 'Men',
      price: 1999.99,
      image:
          'https://images.unsplash.com/photo-1596755094514-f87e34085b2c?w=400&h=500&fit=crop',
      rating: 4.0,
      reviews: 72,
      sizes: ['S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'Green', hex: '#4DD0B1'),
        ProductColor(name: 'Red', hex: '#D32F2F'),
        ProductColor(name: 'Blue', hex: '#1976D2'),
      ],
    ),
    Product(
      id: '6',
      name: 'Wedding coat',
      category: 'Men',
      price: 7999.99,
      image:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=500&fit=crop',
      rating: 5.0,
      reviews: 88,
      sizes: ['S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'Dark Blue', hex: '#1A237E'),
        ProductColor(name: 'Black', hex: '#000000'),
        ProductColor(name: 'Green', hex: '#00695C'),
      ],
    ),
    Product(
      id: '7',
      name: 'Boady fit T Shirt',
      category: 'Men',
      price: 5199.99,
      image:
          'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400&h=500&fit=crop',
      rating: 5.0,
      reviews: 203,
      sizes: ['S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'Maroon', hex: '#800000'),
        ProductColor(name: 'Teal', hex: '#008080'),
        ProductColor(name: 'Black', hex: '#000000'),
      ],
    ),
    Product(
      id: '8',
      name: 'Bangles set',
      category: 'Accessories',
      price: 999.99,
      image:
          'https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?w=400&h=500&fit=crop',
      rating: 4.5,
      reviews: 651,
      sizes: ['S', 'M', 'L'],
      colors: [
        ProductColor(name: 'Gold', hex: '#FFD700'),
      ],
    ),
    Product(
      id: '9',
      name: 'Neck Chain',
      category: 'Accessories',
      price: 199.99,
      image:
          'https://images.unsplash.com/photo-1605100804763-247f67b3557e?w=400&h=500&fit=crop',
      rating: 5.0,
      reviews: 189,
      sizes: ['One Size'],
      colors: [
        ProductColor(name: 'Gold', hex: '#FFD700'),
      ],
    ),
    Product(
      id: '10',
      name: 'Green platted chain',
      category: 'Accessories',
      price: 199.99,
      image:
          'https://images.unsplash.com/photo-1605100804763-247f67b3557e?w=400&h=500&fit=crop',
      rating: 4.0,
      reviews: 92,
      sizes: ['One Size'],
      colors: [
        ProductColor(name: 'Gold', hex: '#FFD700'),
      ],
    ),
    Product(
      id: '11',
      name: 'Girls Ears Accesori Gold Earings',
      category: 'Accessories',
      price: 299.99,
      image:
          'https://images.unsplash.com/photo-1535632066927-ab7c9ab60908?w=400&h=500&fit=crop',
      rating: 5.0,
      reviews: 234,
      sizes: ['One Size'],
      colors: [
        ProductColor(name: 'Gold', hex: '#FFD700'),
      ],
    ),
    // Additional Women Products
    Product(
      id: '12',
      name: 'Embroidered Kurti',
      category: 'Women',
      price: 3499.99,
      image:
          'https://images.unsplash.com/photo-1583391733956-3750e0ff4e8b?w=400&h=500&fit=crop',
      rating: 4.8,
      reviews: 89,
      sizes: ['S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'Blue', hex: '#1976D2'),
        ProductColor(name: 'White', hex: '#FFFFFF'),
        ProductColor(name: 'Pink', hex: '#E91E63'),
      ],
    ),
    Product(
      id: '13',
      name: 'Anarkali Suit',
      category: 'Women',
      price: 7999.99,
      image:
          'https://images.unsplash.com/photo-1594736797933-d0401ba2fe65?w=400&h=500&fit=crop',
      rating: 4.9,
      reviews: 167,
      sizes: ['S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'Maroon', hex: '#800000'),
        ProductColor(name: 'Gold', hex: '#FFD700'),
        ProductColor(name: 'Cream', hex: '#FFF8DC'),
      ],
    ),
    Product(
      id: '14',
      name: 'Chiffon Dupatta',
      category: 'Women',
      price: 1299.99,
      image:
          'https://images.unsplash.com/photo-1610030469983-98e550d6193c?w=400&h=500&fit=crop',
      rating: 4.6,
      reviews: 134,
      sizes: ['One Size'],
      colors: [
        ProductColor(name: 'Pastel Pink', hex: '#FFB6C1'),
        ProductColor(name: 'Light Blue', hex: '#87CEEB'),
        ProductColor(name: 'Mint Green', hex: '#98FB98'),
      ],
    ),
    // Additional Men Products
    Product(
      id: '15',
      name: 'Casual Denim Jacket',
      category: 'Men',
      price: 5999.99,
      image:
          'https://images.unsplash.com/photo-1551028719-00167b16eac5?w=400&h=500&fit=crop',
      rating: 4.7,
      reviews: 203,
      sizes: ['S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'Dark Blue', hex: '#1A237E'),
        ProductColor(name: 'Black', hex: '#000000'),
        ProductColor(name: 'Light Blue', hex: '#42A5F5'),
      ],
    ),
    Product(
      id: '16',
      name: 'Formal Blazer',
      category: 'Men',
      price: 8999.99,
      image:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=500&fit=crop',
      rating: 4.8,
      reviews: 145,
      sizes: ['S', 'M', 'L', 'XL'],
      colors: [
        ProductColor(name: 'Navy Blue', hex: '#000080'),
        ProductColor(name: 'Charcoal', hex: '#36454F'),
        ProductColor(name: 'Gray', hex: '#808080'),
      ],
    ),
    // Additional Accessories
    Product(
      id: '17',
      name: 'Silver Bracelet',
      category: 'Accessories',
      price: 799.99,
      image:
          'https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?w=400&h=500&fit=crop',
      rating: 4.5,
      reviews: 178,
      sizes: ['S', 'M', 'L'],
      colors: [
        ProductColor(name: 'Silver', hex: '#C0C0C0'),
      ],
    ),
    Product(
      id: '18',
      name: 'Designer Handbag',
      category: 'Accessories',
      price: 4599.99,
      image:
          'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=400&h=500&fit=crop',
      rating: 4.9,
      reviews: 267,
      sizes: ['One Size'],
      colors: [
        ProductColor(name: 'Black', hex: '#000000'),
        ProductColor(name: 'Brown', hex: '#8B4513'),
        ProductColor(name: 'Beige', hex: '#F5F5DC'),
      ],
    ),
  ];

  static List<Product> getProductsByCategory(String category) {
    if (category == 'New') {
      // Show 6 featured products from different categories for "New"
      return products.sublist(0, 6);
    }
    return products.where((p) => p.category == category).toList();
  }
}

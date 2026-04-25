# ClothZia - Flutter E-commerce App

A beautiful fashion e-commerce Flutter application based on your Figma design. Features product browsing, cart management, and checkout functionality.

## Features

- 🎨 Modern UI matching your Figma design
- 👕 Product browsing with categories (New, Men, Women, Accessories)
- 🛒 Shopping cart with quantity management
- 💳 Checkout with payment method selection
- ⭐ Product ratings and reviews
- 🔍 Search functionality
- 📱 Bottom navigation bar
- 🎯 Product filtering by size and color
- 🖼️ **Complete image coverage** - All visual spaces filled with high-quality images

## Project Structure

```
lib/
├── main.dart                 # App entry point with routing
├── models/
│   └── product.dart         # Product and CartItem models
├── data/
│   └── app_data.dart        # Sample product data (18 products total)
├── providers/
│   └── cart_provider.dart        # Cart state management
└── screens/
    ├── splash_screen.dart
    ├── signup_screen.dart
    ├── home_screen.dart
    ├── product_detail_screen.dart
    ├── cart_screen.dart
    └── checkout_screen.dart
```

## Getting Started

### Prerequisites
- Flutter SDK (>=3.0.0)
- Dart SDK (>=3.0.0)

### Installation

1. Clone the repository
```bash
git clone <repository-url>
cd clothzia
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the app
```bash
flutter run
```

## Dependencies

- **provider** (^6.0.0) - State management for the shopping cart
- **cupertino_icons** (^1.0.2) - iOS-style icons

## Build for Release

### Android
```bash
flutter build apk --release
```

### iOS
```bash
flutter build ios --release
```

## Key Screens

1. **Splash Screen** - Welcome screen with app branding
2. **Sign Up Screen** - User authentication with email/password
3. **Home Screen** - Product browsing with category filters
4. **Product Detail Screen** - Product details with size/color selection
5. **Cart Screen** - View and manage shopping cart items
6. **Checkout Screen** - Payment method selection and order confirmation

## Color Scheme

- Primary Green: `#4DD0B1`
- Dark Text: `#000000`
- Light Gray: `#F5F5F5`
- Red (Prices): `#E53935`

## Customization

### Adding Products
Edit `lib/data/app_data.dart` to add more products:

```dart
Product(
  id: 'id',
  name: 'Product Name',
  category: 'Category',
  price: 999.99,
  image: 'image_url',
  rating: 5.0,
  reviews: 100,
  sizes: ['S', 'M', 'L', 'XL'],
  colors: [
    Color(name: 'Color Name', hex: '#HexCode'),
  ],
),
```

### Changing Theme Colors
Update the primary color in `main.dart`:

```dart
primaryColor: const Color(0xFF4DD0B1), // Change this hex code
```

## Future Enhancements

- User authentication backend integration
- Real product database
- Payment gateway integration
- User profile and order history
- Wishlist functionality
- Product reviews and ratings
- Search and advanced filtering

## Support

For issues or questions, please open an issue in the repository.

## License

This project is licensed under the MIT License - see LICENSE file for details.

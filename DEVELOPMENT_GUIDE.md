# ClothZia Flutter App - Development Guide

## Project Overview

ClothZia is a fully functional Flutter e-commerce app built from your Figma design. The app features a complete shopping experience including product browsing, cart management, and checkout flow.

## Quick Start

### 1. Prerequisites
Ensure you have Flutter installed:
```bash
flutter --version
```

If not installed, follow: https://flutter.dev/docs/get-started/install

### 2. Get Dependencies
```bash
cd c:\Users\moham\Desktop\Figma
flutter pub get
```

### 3. Run the App
```bash
flutter run
```

For a specific device:
```bash
flutter run -d chrome      # Web
flutter run -d <device-id> # Mobile
```

## Architecture

### State Management
The app uses **Provider** for state management, specifically:
- **CartProvider** - Manages shopping cart operations (add, remove, update quantity)

### Data Flow
```
Product Model (product.dart)
       ↓
App Data (app_data.dart) - Product catalog
       ↓
Screens - Display & User interaction
       ↓
CartProvider - Maintains cart state
```

### Screen Navigation
```
Splash Screen
    ↓
Sign Up Screen
    ↓
Home Screen (Browse Products)
    ├→ Product Detail Screen → Add to Cart
    └→ Cart Screen → Checkout Screen
```

## File Structure Explained

### `lib/main.dart`
- App entry point
- Theme configuration
- Route setup with named routes
- Provider initialization

### `lib/models/product.dart`
```dart
Product - Main product model with:
  - id, name, category, price, image
  - rating, reviews count
  - sizes and colors arrays
  - favorite and quantity flags

CartItem - Shopping cart item with:
  - product reference
  - selected size and color
  - quantity
```

### `lib/data/app_data.dart`
- Hardcoded product catalog
- `AppData.products` - Full product list
- `AppData.getProductsByCategory()` - Filter by category

### `lib/providers/cart_provider.dart`
**Key Methods:**
- `addToCart(product, size, color)` - Add items to cart
- `removeFromCart(index)` - Remove items
- `updateQuantity(index, quantity)` - Modify quantity
- `clearCart()` - Empty cart

**Computed Properties:**
- `items` - List of cart items
- `subtotal` - Sum of all items
- `tax` - 10% of subtotal
- `total` - subtotal + tax

### `lib/screens/`

#### `splash_screen.dart`
- Welcome/branding screen
- Auto-navigates to signup after 3 seconds
- Shows app tagline

#### `signup_screen.dart`
- Email and password fields
- Social login buttons (Facebook, Google)
- Forgot password link
- Navigates to home on signup

#### `home_screen.dart`
- Welcome message with greeting
- Search bar
- Category filter buttons (New, Men, Women, Accessories)
- Product grid display (2 columns)
- Bottom navigation bar with cart badge
- Tap products to view details

#### `product_detail_screen.dart`
- Full product image
- Product name, price, rating
- Size selection (pill buttons)
- Color selection (circular indicators)
- "Add to cart" button with snackbar feedback

#### `cart_screen.dart`
- List all cart items with images
- Quantity controls (±)
- Item removal
- Subtotal, tax, total calculation
- Checkout button

#### `checkout_screen.dart`
- Order summary with all items
- Payment method selection (Credit Card, Google Pay)
- Total amount display
- Complete Purchase button
- Success dialog with order confirmation

## Customization Guide

### 1. Change Theme Colors
**File:** `lib/main.dart`
```dart
primaryColor: const Color(0xFF4DD0B1), // Change to your color
```

### 2. Add Products
**File:** `lib/data/app_data.dart`
```dart
Product(
  id: '12',
  name: 'Product Name',
  category: 'Category', // New, Men, Women, Accessories
  price: 1999.99,
  image: 'https://example.com/image.jpg',
  rating: 4.5,
  reviews: 50,
  sizes: ['S', 'M', 'L', 'XL'],
  colors: [
    Color(name: 'Blue', hex: '#1976D2'),
    Color(name: 'Red', hex: '#D32F2F'),
  ],
),
```

### 3. Change App Name
Edit `pubspec.yaml`:
```yaml
name: your_app_name
```

### 4. Change Theme Font
Add to `pubspec.yaml`:
```yaml
google_fonts: ^6.0.0
```

Then update `main.dart`:
```dart
import 'package:google_fonts/google_fonts.dart';

textTheme: GoogleFonts.latoTextTheme(),
```

### 5. Integrate Real Backend

Replace `lib/data/app_data.dart` with API calls:
```dart
Future<List<Product>> fetchProducts() async {
  final response = await http.get(Uri.parse('your_api_url'));
  return productListFromJson(response.body);
}
```

## Common Tasks

### Add Cart Badge Count
Already implemented! See `lib/screens/home_screen.dart`:
```dart
Consumer<CartProvider>(
  builder: (context, cartProvider, child) {
    return BottomNavigationBarItem(
      icon: Badge(
        label: Text(cartProvider.items.length.toString()),
        child: const Icon(Icons.shopping_cart),
      ),
      label: 'Cart',
    );
  },
),
```

### Add Favorites/Wishlist
1. Add to `CartProvider`:
```dart
List<String> favoriteIds = [];
void toggleFavorite(String productId) {
  if(favoriteIds.contains(productId)) {
    favoriteIds.remove(productId);
  } else {
    favoriteIds.add(productId);
  }
  notifyListeners();
}
```

2. Use heart icon in product cards:
```dart
IconButton(
  icon: Icon(
    cartProvider.favoriteIds.contains(product.id)
      ? Icons.favorite
      : Icons.favorite_outline,
  ),
  onPressed: () => cartProvider.toggleFavorite(product.id),
)
```

### Add Search Functionality
Create `search_provider.dart`:
```dart
class SearchProvider extends ChangeNotifier {
  List<Product> filteredProducts = [];
  
  void search(String query) {
    filteredProducts = AppData.products
      .where((p) => p.name.toLowerCase().contains(query.toLowerCase()))
      .toList();
    notifyListeners();
  }
}
```

## Build & Deploy

### Android APK
```bash
flutter build apk --release
# Output: build/app/outputs/flutter-apk/app-release.apk
```

### Android App Bundle
```bash
flutter build appbundle --release
# For Google Play Store
```

### iOS IPA
```bash
flutter build ios --release
# Then use Xcode to upload to App Store
```

### Web
```bash
flutter build web --release
# Output: build/web/
```

## Troubleshooting

### Assets not loading
Ensure images are valid URLs or add local assets to `pubspec.yaml`:
```yaml
flutter:
  assets:
    - assets/images/
```

### Cart not updating
Check `Consumer<CartProvider>` widget is rebuilding:
```dart
Consumer<CartProvider>(
  builder: (context, cart, child) {
    // Your UI here - rebuilds when cart changes
  },
)
```

### Navigation issues
Verify route names in `main.dart` match navigation calls:
```dart
Navigator.pushNamed(context, '/cart');
```

## Performance Tips

1. **Image Optimization** - Use smaller image sizes or implement lazy loading
2. **Pagination** - Load products in chunks for large catalogs
3. **Caching** - Cache product images locally
4. **Lazy Loading** - Load product details on demand

## Next Steps

1. **Backend Integration** - Connect to real API
2. **Authentication** - Implement proper user login
3. **Payment Gateway** - Add Stripe, PayPal, or Google Pay
4. **Local Storage** - Save cart & user data with `sqflite`
5. **Notifications** - Add Firebase Cloud Messaging
6. **Reviews & Ratings** - Let users rate products

## Resources

- Flutter Docs: https://flutter.dev/docs
- Provider Package: https://pub.dev/packages/provider
- Material Design: https://material.io/design

---

**Need help?** Check the inline code comments or refer to Flutter documentation.

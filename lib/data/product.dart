import 'package:flutter/material.dart';
import '../models/product.dart';

// Small helper to make a placeholder image link for each product.
// Replace these with your own image links or local assets if you want.
String makeImage(String text, String bgColor, String textColor) {
  return 'https://placehold.co/400x400/$bgColor/$textColor/png?text=$text';
}

// Categories shown in the horizontal list on the home page
final List<Map<String, dynamic>> categories = [
  {'name': 'Electronics', 'icon': Icons.headphones},
  {'name': 'Fashion', 'icon': Icons.checkroom},
  {'name': 'Shoes', 'icon': Icons.directions_run},
  {'name': 'Beauty', 'icon': Icons.face_retouching_natural},
  {'name': 'Accessories', 'icon': Icons.watch},
  {'name': 'Home', 'icon': Icons.home},
];

// All products (static data, no backend needed)
final List<Product> products = [
  // Electronics
  Product(
    name: 'Wireless Headphones',
    category: 'Electronics',
    image: makeImage('Headphones', 'E3F2FD', '1565C0'),
    price: 3500,
    rating: 4.5,
    description:
    'Wireless headphones with high-quality sound and long battery life.',
  ),
  Product(
    name: 'Smart Watch',
    category: 'Electronics',
    image: makeImage('Smart+Watch', 'E8EAF6', '283593'),
    price: 5500,
    rating: 4.3,
    description:
    'Smart watch with heart rate monitor, step counter and phone notifications.',
  ),

  // Fashion
  Product(
    name: 'Cotton T-Shirt',
    category: 'Fashion',
    image: makeImage('T-Shirt', 'FFF3E0', 'E65100'),
    price: 1200,
    rating: 4.2,
    description: 'Soft and comfortable cotton t-shirt for everyday use.',
  ),
  Product(
    name: 'Denim Jacket',
    category: 'Fashion',
    image: makeImage('Denim+Jacket', 'E1F5FE', '01579B'),
    price: 3200,
    rating: 4.6,
    description: 'Stylish denim jacket that goes well with any outfit.',
  ),

  // Shoes
  Product(
    name: 'Running Sneakers',
    category: 'Shoes',
    image: makeImage('Sneakers', 'E8F5E9', '2E7D32'),
    price: 4500,
    rating: 4.7,
    description:
    'Lightweight sneakers with a cushioned sole, perfect for running and walking.',
  ),
  Product(
    name: 'Leather Sandals',
    category: 'Shoes',
    image: makeImage('Sandals', 'EFEBE9', '4E342E'),
    price: 2200,
    rating: 4.0,
    description: 'Comfortable leather sandals for summer days.',
  ),

  // Beauty
  Product(
    name: 'Face Cream',
    category: 'Beauty',
    image: makeImage('Face+Cream', 'FCE4EC', 'AD1457'),
    price: 900,
    rating: 4.4,
    description: 'Moisturizing face cream that keeps your skin soft all day.',
  ),
  Product(
    name: 'Lipstick Set',
    category: 'Beauty',
    image: makeImage('Lipstick', 'F3E5F5', '6A1B9A'),
    price: 1500,
    rating: 4.1,
    description: 'Set of 4 long-lasting lipsticks in popular shades.',
  ),

  // Accessories
  Product(
    name: 'Sunglasses',
    category: 'Accessories',
    image: makeImage('Sunglasses', 'FFFDE7', 'F57F17'),
    price: 1800,
    rating: 4.3,
    description: 'UV-protected sunglasses with a modern lightweight frame.',
  ),
  Product(
    name: 'Travel Backpack',
    category: 'Accessories',
    image: makeImage('Backpack', 'ECEFF1', '37474F'),
    price: 2800,
    rating: 4.6,
    description:
    'Water-resistant backpack with a laptop pocket and many compartments.',
  ),

  // Home
  Product(
    name: 'Table Lamp',
    category: 'Home',
    image: makeImage('Table+Lamp', 'FFF8E1', 'FF8F00'),
    price: 2000,
    rating: 4.2,
    description: 'Simple table lamp that gives a warm light for your room.',
  ),
  Product(
    name: 'Coffee Mug Set',
    category: 'Home',
    image: makeImage('Mug+Set', 'EFEBE9', '5D4037'),
    price: 800,
    rating: 4.5,
    description: 'Set of 4 ceramic coffee mugs.',
  ),
];

import 'package:flutter/material.dart';
import '../data/product.dart';
import '../widgets/banner_carousel.dart';
import '../widgets/category_item.dart';
import '../widgets/product_card.dart';
import 'category_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 2)),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Popular products = products with a high rating
    final popularProducts = products.where((p) => p.rating >= 4.5).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.shopping_bag),
            SizedBox(width: 8),
            Text('MyShop', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => showMessage(context, 'Search coming soon'),
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => showMessage(context, 'Your cart is empty'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),

            // Banner carousel
            const BannerCarousel(),

            // Categories (horizontal scroll)
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 20, 16, 8),
              child: Text(
                'Shop by Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  for (final category in categories)
                    CategoryItem(
                      name: category['name'] as String,
                      icon: category['icon'] as IconData,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryPage(
                              categoryName: category['name'] as String,
                            ),
                          ),
                        );
                      },
                    ),
                ],
              ),
            ),

            // Popular products
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Products',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const CategoryPage(categoryName: 'All'),
                        ),
                      );
                    },
                    child: const Text('See All →'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: popularProducts.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 170,
                    child: ProductCard(product: popularProducts[index]),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

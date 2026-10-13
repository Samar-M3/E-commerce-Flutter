import 'package:flutter/material.dart';
import '../data/product.dart';
import '../widgets/product_card.dart';

class CategoryPage extends StatelessWidget {
  final String categoryName;

  const CategoryPage({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    final filteredProducts = categoryName == 'All'
        ? products
        : products.where((p) => p.category.toLowerCase() == categoryName.toLowerCase()).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName == 'All' ? 'All Products' : categoryName),
      ),
      body: filteredProducts.isEmpty
          ? Center(
              child: Text(
                'No products found in $categoryName',
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                return ProductCard(product: filteredProducts[index]);
              },
            ),
    );
  }
}

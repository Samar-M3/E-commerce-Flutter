import 'package:flutter/material.dart';

// Shows an image from the internet.
// If the image fails to load, it shows an icon instead of crashing.
class SafeImage extends StatelessWidget {
  final String url;
  final BoxFit fit;

  const SafeImage({super.key, required this.url, this.fit = BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: fit,
      width: double.infinity,
      height: double.infinity,
      errorBuilder: (context, error, stackTrace) {
        return const Center(
          child: Icon(Icons.image_not_supported, size: 40, color: Colors.grey),
        );
      },
    );
  }
}

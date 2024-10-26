import 'package:flutter/material.dart';

class PopularRecentItem extends StatelessWidget {
  const PopularRecentItem({
    super.key,

    required this.title,
  });
      final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const Text("Show All", style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}

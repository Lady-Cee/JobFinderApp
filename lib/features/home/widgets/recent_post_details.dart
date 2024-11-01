import 'package:flutter/material.dart';

class RecentPostDetails extends StatelessWidget {
  const RecentPostDetails({
    super.key,
    required this.image,
    required this.title,
  });

  final Widget image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              child: image,

            ),
            title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
            subtitle: const Text("Full Time", style: TextStyle(color: Colors.grey, fontSize: 12),),
            trailing: const Text("\$4500/m", style: TextStyle(color: Colors.grey, fontSize: 12),),
          )
        ],
      ),
    );
  }
}

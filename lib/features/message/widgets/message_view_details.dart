import 'package:flutter/material.dart';

class MessageViewDetails extends StatelessWidget {
  const MessageViewDetails({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
    this.trailingIcon,
    this.onTap,

  });

  final String title;
  final String subtitle;
  final Widget leadingIcon;
  final Widget? trailingIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: onTap,
        child:
          ListTile(
            leading: leadingIcon,

            title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey),),
            trailing: trailingIcon,
              // padding: EdgeInsets.all(12),
              // child: Text(title1!, style: TextStyle(color: Colors.white),),
            ),
         // )
      ),

    );
  }
}

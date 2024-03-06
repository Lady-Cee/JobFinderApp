import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSearchItems extends StatelessWidget {
  const HomeSearchItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
          ),
          
          child: ListTile(
            leading: Container(
              child: Image.asset("assets/images/register_images/fbLogo.png"),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Facebook", style:
                TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  "UI/UX Designer", style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text("\$4500/m Toronto Canada", style: TextStyle(color: Colors.grey, fontSize: 12),),
              ],
            ),
            trailing: Column(
              children: [
                Image.asset("assets/images/home_images/heart.png", width: 20, ),
                SizedBox(height: 15,),
                Text("06h", style: TextStyle(color: Colors.grey, fontSize: 13),),
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8)
          ),

          child: ListTile(
            leading: Container(
              child: Image.asset("assets/images/home_images/dribble.png"),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dribble", style:
                TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  "Product Designer", style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text("\$6500/m Toronto Canada", style: TextStyle(color: Colors.grey, fontSize: 12),),
              ],
            ),
            trailing: Column(
              children: [
                Image.asset("assets/images/home_images/heart.png", width: 20, ),
                SizedBox(height: 15,),
                Text("12h", style: TextStyle(color: Colors.grey, fontSize: 13),),
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8)
          ),

          child: ListTile(
            leading: Container(
              child: Image.asset("assets/images/register_images/googleLogo.png"),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Google", style:
                TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  "Senior UX Designer", style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text("\$4500/m New York USA", style: TextStyle(color: Colors.grey, fontSize: 12),),
              ],
            ),
            trailing: Column(
              children: [
                Image.asset("assets/images/home_images/heart.png", width: 20, ),
                SizedBox(height: 15,),
                Text("24h", style: TextStyle(color: Colors.grey, fontSize: 13),),
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8)
          ),

          child: ListTile(
            leading: Container(
              child: Image.asset("assets/images/home_images/netflix.png"),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Netflix", style:
                TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  "Visual Designer", style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text("\$5500/m Manchester UK", style: TextStyle(color: Colors.grey, fontSize: 12),),
              ],
            ),
            trailing: Column(
              children: [
                Image.asset("assets/images/home_images/heart.png", width: 20, ),
                SizedBox(height: 15,),
                Text("12h", style: TextStyle(color: Colors.grey, fontSize: 13),),
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8)
          ),

          child: ListTile(
            leading: Container(
              child: Image.asset("assets/images/home_images/shopify.png"),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Netflix", style:
                TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  "Visual Designer", style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text("\$1200/m Manchester UK", style: TextStyle(color: Colors.grey, fontSize: 12),),
              ],
            ),
            trailing: Column(
              children: [
                Image.asset("assets/images/home_images/heart.png", width: 20, ),
                SizedBox(height: 15,),
                Text("12h", style: TextStyle(color: Colors.grey, fontSize: 13),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

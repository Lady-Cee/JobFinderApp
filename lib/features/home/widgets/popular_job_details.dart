import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularJobDetails extends StatelessWidget {
  const PopularJobDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topStart,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: EdgeInsets.all(8.0),
            height: 160,
            width: 250,
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 0,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/register_images/googleLogo.png", height: 40, width: 40,),
                      Text("Google", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 10,),
                      Text("Lead Product Manager", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),

                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text("\$2500/m ", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Toronto, Canada", style: TextStyle(color: Colors.grey),)
                        ],
                      )

                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 0,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/home_images/heart.png",  height: 20, width: 20),

                    ],
                  ),
                ),

              ],
            ),
          ),

          SizedBox(width: 20,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: EdgeInsets.all(8.0),
            height: 160,
            width: 250,
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 0,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/home_images/shopify.png", height: 40, width: 40,),
                      Text("Shopify", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 10,),
                      Text("Senior UX/UI Designer", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text("\$2500/m ", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Toronto, Canada", style: TextStyle(color: Colors.grey),)
                        ],
                      )

                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 0,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/home_images/heart.png",  height: 20, width: 20),

                    ],
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
      ),
    );
  }
}

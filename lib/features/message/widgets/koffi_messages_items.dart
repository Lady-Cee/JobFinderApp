import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KoffiMessagesItems extends StatelessWidget {
  const KoffiMessagesItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:240.0, top:20),
          child: Container(
            height:70,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:16.0, top:8.0),
                  child: Text("Hello", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left:35.0),
                  child: Text("4.34PM"),
                ),
              ],
            ),
          ),

        ),
        Padding(
          padding: const EdgeInsets.only(right: 200),
          child: Container(
            height:70,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:16.0, top:8.0),
                  child: Text("Hi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left:35.0),
                  child: Text("4.34PM"),
                ),
              ],
            ),
          ),

        ),
        Padding(
          padding: const EdgeInsets.only(left:190.0,),
          child: Container(
            height:70,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:16.0, top:8.0),
                  child: Text("How are you?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left:85.0),
                  child: Text("4.35PM"),
                ),
              ],
            ),
          ),

        ),
        Padding(
          padding: const EdgeInsets.only(right: 200),
          child: Container(
            height:70,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:16.0, top:8.0),
                  child: Text("Nice, bro", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left:35.0),
                  child: Text("4.34PM"),
                ),
              ],
            ),
          ),

        ),
        Padding(
          padding: const EdgeInsets.only(left:110.0, top:5),
          child: Container(
            height:90,
            width: 230,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:16.0, top:8.0),
                  child: Text("I heard you guys are launching new product?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left:150.0),
                  child: Text("4.35PM"),
                ),
              ],
            ),
          ),

        ),
        Padding(
          padding: const EdgeInsets.only(right: 80, top:5),
          child: Container(
            height:70,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:16.0, top:8.0),
                  child: Text("Yes, it is called JobFinder", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left:140.0),
                  child: Text("4.34PM"),
                ),
              ],
            ),
          ),

        ),
        Padding(
          padding: const EdgeInsets.only(left:140.0, top:10),
          child: Container(
            height:70,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:16.0, top:8.0),
                  child: Text("That's awesome", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                ),
                // SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left:130.0),
                  child: Text("4.34PM"),
                ),
              ],
            ),
          ),

        ),

      ],
    );
  }
}

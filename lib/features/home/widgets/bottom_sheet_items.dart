import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetItems extends StatelessWidget {
  const BottomSheetItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 150,
                height: 60,
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.grey),
                  //  SizedBox(width: 10),
                    Text("Canada", style: TextStyle(color: Colors.grey, fontSize: 16),),
                    Icon(Icons.arrow_drop_down, color: Colors.grey),
                  ],
                ),
              ),
              SizedBox(width: 15,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 150,
                height: 60,
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.satellite, color: Colors.grey),
                    //  SizedBox(widt(h: 10),
                    Text("\$2k - \$5k", style: TextStyle(color: Colors.grey, fontSize: 16),),
                    Icon(Icons.arrow_drop_down, color: Colors.grey),
                  ],
                ),
              ),
            ]
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 16),
            child: Row(
             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                child:Text(
                  "Job Type",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                ),
              //  SizedBox(width: 90,),
                Text(
                  "....",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

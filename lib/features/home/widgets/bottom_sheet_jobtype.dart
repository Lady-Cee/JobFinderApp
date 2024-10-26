import 'package:flutter/material.dart';

class BottomSheetJobtype extends StatelessWidget {
  const BottomSheetJobtype({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 1, // Adjust the width as needed
                  ),

                ),
                width: 110,
                height: 50,
               // padding: EdgeInsets.all(10),
                child: const Center(child: Text("Full Time", style: TextStyle(color: Colors.grey),)),
              ),
              const SizedBox(width: 5,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 110,
                height: 50,
               // padding: EdgeInsets.all(20),
                child: const Center(
                  child: Text("Part Time", style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 1, // Adjust the width as needed
                  ),
                ),
                width: 110,
                height: 50,
               // padding: EdgeInsets.all(20),
                child: const Center(child: Text("Contract", style: TextStyle(color: Colors.grey),)),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 110,
                height: 50,
                //padding: EdgeInsets.all(20),
                child: const Center(child: Text("Freelance", style: TextStyle(color: Colors.white),)),
              ),
              const SizedBox(width: 5,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 1, // Adjust the width as needed
                  ),
                ),
                width: 110,
                height: 50,
                // padding: EdgeInsets.all(20),
                child: const Center(
                  child: Text("Remote", style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 110,
                height: 50,
                // padding: EdgeInsets.all(20),
                child: const Center(child: Text("Show All Type", style: TextStyle(color: Colors.grey),)),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
              child: ElevatedButton(
                onPressed: () {
                  // Add your login logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Border radius
                  ),

                ),
                child: const Text("Apply Filters", style: TextStyle(fontSize: 18),),
              ),
              ),

            ],
          ),
          const SizedBox(height: 20,),
        ],
      ),

    );

  }
}

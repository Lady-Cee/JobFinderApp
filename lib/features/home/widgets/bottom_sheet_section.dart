import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/features/home/widgets/bottom_sheet_jobtype.dart';

import 'bottom_sheet_items.dart';

class BottomSheetSection extends StatelessWidget {
  const BottomSheetSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    //  height: MediaQuery.of(context).size.height - 100,
         child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Set Filters", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(right:240.0),
            child: Text("Category", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                           "UI/UX Design",
                style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      ),
                  Icon(Icons.arrow_drop_down),


                ],
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(right:200.0),
                child: Text("Sub Category", style: TextStyle(fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Graphics Design",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                    child: Row(
                    children: [
                         Text(
                          "Location",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        SizedBox(width: 90,),
                      Text(
                        "Salary",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),

                    ],
                  ),
                ),
              BottomSheetItems(),
              BottomSheetJobtype(),
            ],

          ),
        ],

      ),

    );
  }
}

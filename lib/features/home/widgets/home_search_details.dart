import 'package:flutter/material.dart';
import 'package:job_finder_app/features/home/widgets/bottom_sheet_section.dart';

import 'home_search_items.dart';

class HomeSearchDetails extends StatelessWidget {
  const HomeSearchDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Padding(
          padding: EdgeInsets.only(left: 60.0),
          child: Text("Search"),
        ),
      ),
      body: SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "UI Design",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: GestureDetector(
                      onTap: (){
                        // showModalBottomSheet(
                        //     context: context,
                        //     showDragHandle: true,
                        //     builder: (context){
                        //   //    MediaQuery.of(context).size.height - 100;
                        //       return BottomSheetSection();
                        //     },
                        // );
                        showModalBottomSheet(
                          context: context,
                          showDragHandle: true,
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24.0),
                              topRight: Radius.circular(24.0),
                            ),
                          ),
                          isScrollControlled: true,
                          constraints: BoxConstraints.tight(
                            Size(
                              MediaQuery.of(context).size.width,
                              MediaQuery.of(context).size.height * .9,
                            ),
                          ),
                          builder: (ctx) {
                            return const SingleChildScrollView(
                              child: BottomSheetSection()
                            );
                          },
                        );
                      },
                      child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.lightBlue.withOpacity(0.7),
                        BlendMode.srcATop,
                      ),
                      child: Image.asset(
                        "assets/images/home_images/filter.png",
                        height: 30,
                        width: 30,
                      ),
                    ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left:8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "35 Job Opportunities",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                                    ],
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                        width: 150,
                        height: 60,
                        padding: const EdgeInsets.all(20),
                      child: const Text("Most Relevant", style: TextStyle(color: Colors.white),),
                    ),
                    const SizedBox(width: 25,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 150,
                      height: 60,
                      padding: const EdgeInsets.all(20),
                      child: const Text("Most Recent", style: TextStyle(color: Colors.grey),
                    ),
                    ),
                  ],
                ),
              ),

               const SizedBox(height: 15,),
               const HomeSearchItems()
            ],
          ),
        ),

      )
    );
  }
}


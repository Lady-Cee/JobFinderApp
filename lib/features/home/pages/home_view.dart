import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/features/home/widgets/home_search_details.dart';
import 'package:job_finder_app/features/home/widgets/popular_job_details.dart';
import 'package:job_finder_app/features/home/widgets/recent_post_details.dart';

import '../widgets/popular_recent_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            children: [
              SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.lightBlue.withOpacity(0.7),
                    BlendMode.srcATop,
                  ),
                  child: Image.asset(
                    "assets/images/home_images/more.png",
                    height: 40,
                    width: 50,
                  ),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    "assets/images/home_images/mypix.jpg",
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Search here...",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                      MaterialPageRoute(builder: (context){
                        return  HomeSearchDetails();
                      }),

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
              ],
            ),
           SizedBox(height: 20),
            PopularRecentItem(title: 'Popular Job',),
          SizedBox(height: 20),
            PopularJobDetails(),
              SizedBox(height: 20),
              PopularRecentItem(title: 'Recent Post',),
              RecentPostDetails(
                title: "UI/UX Designer",
                image: Image.asset("assets/images/register_images/fbLogo.png"),

              ),
              RecentPostDetails(
                title: "Product Designer",
                image: Image.asset("assets/images/home_images/shopify.png"),

              ),
              RecentPostDetails(
                title: "Visual Designer",
                image: Image.asset("assets/images/home_images/visual.png"),

              ),
          ],
        ),
      ),
      ),
    );
  }
}


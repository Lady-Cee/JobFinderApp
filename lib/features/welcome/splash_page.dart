import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:job_finder_app/register/register_view.dart';

import '../register/register_view.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 100),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/splash_icon.jpg",),
          SizedBox(height: 24,),
          Text("Find a Perfect", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text("Job Match", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text("Finding your dream job is easier", style: TextStyle(color:Colors.grey, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Text("and faster with job_finder", style: TextStyle(color:Colors.grey, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40,),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context){
                    return RegisterPage();
                  })
              );
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0), // Adjust padding as needed
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade800),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                 // side: BorderSide(color: Colors.black, width: 1), // Adjust border color and width as needed
                ),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,

              children: [
                Text("Let's Get Started", style: TextStyle(color: Colors.white, fontSize:16)),
                SizedBox(width: 28,),
                Image.asset("assets/images/right-arrow.png", width:30, height: 30, color: Colors.white)
              ],
            ),
          )
          
        ],
      )
        ),
    );
  }
}

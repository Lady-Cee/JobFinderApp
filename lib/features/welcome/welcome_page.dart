import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/pages/home_page.dart';
//import '../jobs/home_page.dart';
import '../register/register_view.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome Back!", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
            Text("Fill your details or continue"),
            Text("with social media"),
            SizedBox(height: 16),

            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter your email ",
                labelText:"Email Address",
                // border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                // border: OutlineInputBorder(),
                border: OutlineInputBorder( // Define border appearance
                  borderSide: BorderSide.none, // Remove outline border
                  borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                ),
                prefixIcon: Icon(Icons.email),
                contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                labelStyle: TextStyle(color: Colors.grey),
                hintStyle: TextStyle(color: Colors.lightBlue),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                hintText: "Enter your password",
                labelText: "Password",
                //   border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                // border: OutlineInputBorder(),
                border: OutlineInputBorder( // Define border appearance
                  borderSide: BorderSide.none, // Remove outline border
                  borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                ),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
                contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                labelStyle: TextStyle(color: Colors.grey),
                hintStyle: TextStyle(color: Colors.lightBlue),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot Password?", style: TextStyle(color: Colors.grey, fontSize: 16),),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children:[
                Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context){
                              return HomePage();
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
                      child:  Text("LOG IN", style: TextStyle(color: Colors.white, fontSize:18)),
                    )
                ),
              ],
            ),
            SizedBox(height: 20,),
            Center(
                child:
                Text("- or continue with -  ", style: (TextStyle(fontSize: 18, color: Colors.grey)),)),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Image.asset("assets/images/register_images/googleLogo.png", width: 50, height: 50,),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset("assets/images/register_images/fbLogo.png", width: 50, height: 50,),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New User?", style: TextStyle(fontSize: 16),),
                SizedBox(width: 5,),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context){
                          return RegisterPage();
                        })
                    );
                  },
                  child: Text(
                    "Create Account", style: TextStyle(fontSize: 18, color: Colors.black),),),
              ],
            ),



          ],

        ),
      ),
      ),
        );

  }
}

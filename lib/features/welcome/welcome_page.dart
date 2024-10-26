import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../global/toast.dart';
import '../../global/toast_success.dart';
import '../home/pages/home_page.dart';
//import '../jobs/home_page.dart';
import '../register/register_view.dart';
import '../user_auth/firebase_auth_implemetation/firebase_auth_services.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
            const Text("Welcome Back!", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
            const Text("Fill your details or continue"),
            const Text("with social media"),
            const SizedBox(height: 16),

            TextField(
              controller: _emailController,
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
                prefixIcon: const Icon(Icons.email),
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                labelStyle: const TextStyle(color: Colors.grey),
                hintStyle: const TextStyle(color: Colors.lightBlue),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
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
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Icons.visibility_off),
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                labelStyle: const TextStyle(color: Colors.grey),
                hintStyle: const TextStyle(color: Colors.lightBlue),
              ),
            ),
            const SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot Password?", style: TextStyle(color: Colors.grey, fontSize: 16),),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children:[
                Expanded(
                    child: TextButton(
                      onPressed: _signIn,
                        //   () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder:(context){
                        //       return const HomePage();
                        //     })
                        // );
                      //},
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0), // Adjust padding as needed
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade800),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                            // side: BorderSide(color: Colors.black, width: 1), // Adjust border color and width as needed
                          ),
                        ),
                      ),
                      child:  const Text("LOG IN", style: TextStyle(color: Colors.white, fontSize:18)),
                    )
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const Center(
                child:
                Text("- or continue with -  ", style: (TextStyle(fontSize: 18, color: Colors.grey)),)),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Image.asset("assets/images/register_images/googleLogo.png", width: 50, height: 50,),
                ),
                const SizedBox(width: 20,),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset("assets/images/register_images/fbLogo.png", width: 50, height: 50,),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("New User?", style: TextStyle(fontSize: 16),),
                const SizedBox(width: 5,),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context){
                          return const RegisterPage();
                        })
                    );
                  },
                  child: const Text(
                    "Create Account", style: TextStyle(fontSize: 18, color: Colors.black),),),
              ],
            ),



          ],

        ),
      ),
      ),
        );

  }

  void _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
    //  print("user is successfully");
      toastSuccess(message: "Your account is successfully signed in");
      // Navigator.pushNamed(context, "/home");
      Navigator.push(
          context,
          MaterialPageRoute(builder:(context){
            return const HomePage();
          })
      );
    } else {
      showToast(message: "Login to continue ");
     // print("Some error occured");
    }


  }

}

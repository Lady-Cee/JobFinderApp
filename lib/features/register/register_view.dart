import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/features/user_auth/firebase_auth_implemetation/firebase_auth_services.dart';
//import 'package:job_finder_app/features/jobs/home_page.dart';
import 'package:job_finder_app/features/welcome/welcome_page.dart';
import 'package:job_finder_app/global/toast_success.dart';

import '../../global/toast.dart';
import '../home/pages/home_page.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _userNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose(){
    _userNameController.dispose();
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
            const Text("Register Account!", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
            const Text("Fill your details or continue"),
            const Text("with social media"),
            const SizedBox(height: 20),
            TextField(
              controller: _userNameController,
              decoration: InputDecoration(
                  hintText: "Enter your user name ",
                  labelText:"User Name",
                filled: true,
                fillColor: Colors.white,
                 // border: OutlineInputBorder(),
                border: OutlineInputBorder( // Define border appearance
                  borderSide: BorderSide.none, // Remove outline border
                  borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                ),
                  prefixIcon: const Icon(Icons.person),
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  labelStyle: const TextStyle(color: Colors.grey),
                hintStyle: const TextStyle(color: Colors.lightBlue),
              ),
            ),
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
            const SizedBox(height: 30,),
            Row(
              children:[
              Expanded(
                child: TextButton(
              onPressed: _signUp,
              //     () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(builder:(context){
              //         return const HomePage();
              //       })
              //   );
              // },
              //
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
              child:  const Text("SIGN UP", style: TextStyle(color: Colors.white, fontSize:18)),
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
                const Text("Already Have Account?", style: TextStyle(fontSize: 16),),
                const SizedBox(width: 5,),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context){
                          return const WelcomePage();
                        })
                    );
                  },
                  child: const Text(
                  "Log in", style: TextStyle(fontSize: 18, color: Colors.black),),),
              ],
            ),


          ],

      ),
    ),
      ),
    );
  }

  void _signUp() async {
    String userName = _userNameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print("user is successfully");
      toastSuccess(message: "Your account is successfully created");
      // Navigator.pushNamed(context, "/home");
      Navigator.push(
          context,
          MaterialPageRoute(builder:(context){
            return const WelcomePage();
          })
      );
    } else {
     showToast(message: "Fill in your details");
      print("Some error occured");
    }


  }
}

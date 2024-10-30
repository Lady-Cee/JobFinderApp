import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //method for authentication
Future<User?> signUpWithEmailAndPassword(String email, String password) async {

  try {
    UserCredential credential = await _auth.createUserWithEmailAndPassword(email:email, password:password);
    return credential.user;

  } catch (e) {
    print("There is an error signing up");
    // print("There is an error");
  }
  return null;
}

  Future<User?> signInWithEmailAndPassword(String email, String password) async {

    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(email:email, password:password);
      return credential.user;

    } catch (e) {
      print("There is an error");
    }
    return null;
  }
}
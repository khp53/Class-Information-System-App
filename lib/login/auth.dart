import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //create user obj based on FirebaseUser
  // User _userFromFirebaseUser(FirebaseUser user){

  // }

  //auth change user stream
  Stream<FirebaseUser> get user {
    // ignore: deprecated_member_use
    return _auth.onAuthStateChanged;
  }
  //sign in with email and password

  //sign out
}

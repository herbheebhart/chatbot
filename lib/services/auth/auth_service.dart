import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authservice  extends ChangeNotifier{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // sign in user
  Future<UserCredential> signInWithEmailandPassword(String email, String password) async {
    try{
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
         password: password,
         );
         return userCredential;
    }
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }  
  }
  // signout
  Future<void> signOut() async{
    return await FirebaseAuth.instance.signOut();
  }
}

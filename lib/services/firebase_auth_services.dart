import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Firebase user a realtime stream
  Stream<User?> get user => _auth.authStateChanges();

  //Sign out
  Future<void> signOut() {
    return _auth.signOut();
  }

  //Sign in using email and password
  Future<void> signInWithEmailAndPassword({required String email, required password}) async {
    try {
        await _auth.signInWithEmailAndPassword(email: email, password: password)
    } catch (e) {
      log("$e");
    }
  }

  //User registration with email and password
  Future<void> resgisterWithEmailAndPassword ({required String email, required password}) async {
    try{
        await _auth.createUserWithEmailAndPassword(email: email, password: password)
    } on FirebaseAuthException catch (e){
        log("$e");
    }
  }

  //Password reset email
  Future<void> sendPasswordResetEmail({required String email}) async {
    try{
        await _auth.sendPasswordResetEmail(email: email);
    }catch(e){
        log("$e");
    }
  }  
}

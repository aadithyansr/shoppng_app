import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<String?> signUpUser({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      await FirebaseFirestore.instance
          .collection("users")
          .doc(credential.user!.uid)
          .set({
        'name': name,
        'email': email,
        'uid': credential.user!.uid,
      });
      return 'Success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      } else {
        return e.message;
      }
    } catch (e) {
      return e.toString();
    }
  }

  Future<String?> login({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential user =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final SharedPreferences _pref = await SharedPreferences.getInstance();

      var snap = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.user!.uid)
          .get();
      await _pref.setString('name', snap['name']);
      await _pref.setString('email', snap['email']);
      await _pref.setString('uid', snap['uid']);

      return 'Success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      } else {
        return e.message;
      }
    } catch (e) {
      return e.toString();
    }
  }
}

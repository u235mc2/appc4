import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseApi {

  Future<String?> registerUser(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user?.uid;
    } on FirebaseException catch (e) {
      print("FirebaseAuthException ${e.code}");
      return e.code;
    }
  }

  Future<String?> logInUser(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      return credential.user?.uid;
    } on FirebaseException catch (e) {
      print("FirebaseAuthException ${e.code}");
      return e.code;
    }
  }

}
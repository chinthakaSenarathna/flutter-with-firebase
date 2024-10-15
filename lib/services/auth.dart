import 'package:firebase_auth/firebase_auth.dart';

class AuthServices{
  // firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sign in anonymously
  Future signInAnonymously () async{
    try{
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch(err){
      print(err.toString());
      return null;
    }
  }

  // register using email and password
  // sign in using email and password
  // sign in using gmail
  // sign out
  
}
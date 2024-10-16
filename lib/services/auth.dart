import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_with_firebase/models/UserModel.dart';

class AuthServices{
  // firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user from firebase with uid
  UserModel? _userWithFirebaseUserId( User? user ){
    return user != null ? UserModel(uid: user.uid) : null;
  }

  // create the stream for checking the auth changes in the user
  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userWithFirebaseUserId);
  }

  // sign in anonymously
  Future signInAnonymously() async{
    try{
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      dynamic userModel = _userWithFirebaseUserId(user);
      return userModel;
    } catch(err){
      print(err.toString());
      return null;
    }
  }

  // register using email and password
  // sign in using email and password
  // sign in using gmail
  // sign out
  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(err){
      print(err.toString());
      return null;
    }
  }
  
}
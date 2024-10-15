import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/models/UserModel.dart';
import 'package:flutter_with_firebase/services/auth.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  final AuthServices _authServices = AuthServices();

  // create user from firebase with uid
  UserModel? _userWithFirebaseUserId( User? user ){
    return user != null ? UserModel(uid: user.uid) : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white30,
        elevation: 10,
        title:const Text(
          "SignIn",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 30
          ),
        ),
      ),
      body: ElevatedButton(
        onPressed: () async{
          dynamic result = await _authServices.signInAnonymously();
          if(result == null){
            print("error in sign in anonymously");
          }else{
            print("sign in anonymously");
            dynamic user = _userWithFirebaseUserId(result);
            print(user.uid);
          }
        }, 
        child:const Text(
          "Sign In Anonymously",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0)
          ),
          )
        ),
    );
  }
}
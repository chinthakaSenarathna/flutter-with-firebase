import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/constants/colors.dart';
import 'package:flutter_with_firebase/models/UserModel.dart';
import 'package:flutter_with_firebase/services/auth.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  final AuthServices _authServices = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgBlack,
      appBar: AppBar(
        backgroundColor: bgBlack,
        shadowColor: textLight,
        elevation: 10,
        title:const Text(
          "SignIn",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 30,
            fontWeight: FontWeight.w900
          ),
        ),
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20)
          )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text("I am a highly competent and enthusiastic undergraduate with a strong academic background and"
              "exceptional technical skills. Possessing a passion for continuous learning, I have cultivated"
              "my self-learning capabilities and adaptability to stay at the forefront of advancements in the field of software engineering.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textLight,
              ),
            ),
            ElevatedButton(
              onPressed: () async{
                dynamic result = await _authServices.signInAnonymously();
                if(result == null){
                  print("error in sign in anonymously");
                }else{
                  print("sign in anonymously");
                  print(result.uid);
                }
              },
              child:const Text(
                "Sign In Anonymously",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0)
                ),
                )
              ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/constants/colors.dart';
import 'package:flutter_with_firebase/constants/styles.dart';
import 'package:flutter_with_firebase/models/UserModel.dart';
import 'package:flutter_with_firebase/services/auth.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthServices _authServices = AuthServices();

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<UserModel?>(context);

    return Scaffold(
      backgroundColor: bgBlack,
      appBar: AppBar(
        backgroundColor: bgBlack,
        shadowColor: textLight,
        elevation: 10,
        title:const Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w900
          ),
        ),
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20)
          )
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ElevatedButton(
              onPressed: () async{
                await _authServices.signOut();
              }, 
              child:const Icon(Icons.logout)
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Hello ${user?.uid}",
                textAlign: TextAlign.center,
                style:const TextStyle(
                  color: mainBlue,
                  fontSize: 30,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "I am a highly competent and enthusiastic undergraduate with a strong academic background and"
                "exceptional technical skills. Possessing a passion for continuous learning, I have cultivated",
                textAlign: TextAlign.center,
                style: signInDescription,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                "assets/man.jpg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
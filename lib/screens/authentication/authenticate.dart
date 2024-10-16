import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/screens/authentication/login.dart';
import 'package:flutter_with_firebase/screens/authentication/register.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool signInPage = true;

  // switching the login & register page
  void switchPage(){
    setState(() {
      signInPage = !signInPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return signInPage == true ? Sign_In(toggle: switchPage) : Register(toggle: switchPage,);
  }
}
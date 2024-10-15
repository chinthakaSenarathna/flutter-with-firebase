import "package:flutter/material.dart";
import "package:flutter_with_firebase/screens/authentication/authenticate.dart";
import "package:flutter_with_firebase/screens/home/home.dart";

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Authenticate();
  }
}
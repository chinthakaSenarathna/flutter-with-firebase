import "package:flutter/material.dart";
import "package:flutter_with_firebase/models/UserModel.dart";
import "package:flutter_with_firebase/screens/authentication/authenticate.dart";
import "package:flutter_with_firebase/screens/home/home.dart";
import "package:provider/provider.dart";

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    // the user data that the provider provides this can be a user data or can be null.
    final user =  Provider.of<UserModel?>(context);

    return user == null ? Authenticate() : Home();
  }
}
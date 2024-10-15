import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:flutter_with_firebase/models/UserModel.dart";
import "package:flutter_with_firebase/screens/wrapper.dart";
import "package:flutter_with_firebase/services/auth.dart";
import "package:provider/provider.dart";

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
      initialData: UserModel(uid: ""),
      value: AuthServices().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "flutter with firebase",
        home: Wrapper(),
      ),
    );
  }
}
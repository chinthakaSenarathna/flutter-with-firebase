import "package:flutter/material.dart";
import "package:flutter_with_firebase/screens/wrapper.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper();
  }
}
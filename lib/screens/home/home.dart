import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/services/auth.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthServices _authServices = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        shadowColor: Colors.blue,
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
                dynamic result = await _authServices.signOut();
                if(result == null){
                  print("error in sign out");
                }else{
                  print("sign out");
                  print(result);
                }
              }, 
              child:const Icon(Icons.logout)
            ),
          )
        ],
      ),
    );
  }
}
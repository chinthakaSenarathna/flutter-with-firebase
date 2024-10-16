import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/constants/colors.dart';
import 'package:flutter_with_firebase/constants/styles.dart';
import 'package:flutter_with_firebase/services/auth.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  final AuthServices _authServices = AuthServices();

  // form key
  final _formKey = GlobalKey<FormState>();

  // email password state
  String email = "";
  String password = "";

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                child: Text("I am a highly competent and enthusiastic undergraduate with a strong academic background and"
                  "exceptional technical skills. Possessing a passion for continuous learning, I have cultivated"
                  "my self-learning capabilities and adaptability to stay at the forefront of advancements in the field of software engineering.",
                  textAlign: TextAlign.center,
                  style: signInDescription
                ),
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/man.jpg",
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // email
                    TextFormField(
                      validator: (value) => value?.isEmpty == true ? "Enter a valid email" : null,
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                    ),
                    // password
                    TextFormField(
                      validator: (value) => value!.length < 6 ? "Enter a valid password" : null,
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // sign in with google
                    const Text(
                      "Login with social accounts",
                      style: signInDescription,
                    ),
                    Image.asset(
                      "assets/google.png",
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // register
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Do not have an account",
                          style: signInDescription,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          // go to the Register page 
                          onTap: () {},
                          child:const Text(
                            "Register",
                            style: TextStyle(
                              color: mainBlue
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // button
                    ElevatedButton(
                      onPressed: () {}, 
                      child:const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.black
                        ),
                      )
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // sign in anonymously
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
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
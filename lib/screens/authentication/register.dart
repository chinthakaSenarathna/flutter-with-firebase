import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/constants/colors.dart';
import 'package:flutter_with_firebase/constants/styles.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
          "Register",
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // email
                      TextFormField(
                        decoration: textInputDecoration,
                        style:const TextStyle(
                          color: Colors.white
                        ),

                        validator: (value) => value?.isEmpty == true ? "Enter a valid email" : null,

                        onChanged: (value) => {
                          setState(() {
                            email = value;
                          })
                        },

                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // password
                      TextFormField(
                        decoration: textInputDecoration.copyWith(hintText: "password"),
                        style:const TextStyle(
                          color: Colors.white
                        ),

                        validator: (value) => value!.length < 6 ? "Enter a valid password" : null,

                        onChanged: (value) => {
                          setState(() {
                            password = value;
                          })
                        },

                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // register with social account
                      const Text(
                        "Register with social accounts",
                        textAlign: TextAlign.center,
                        style: signInDescription,
                      ),
                      GestureDetector(
                        // method
                        onTap: () {},

                        child: Image.asset(
                          "assets/google.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // already have an account
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account",
                            style: signInDescription,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            // method
                            onTap: () {},

                            child:const Text(
                              "Login",
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
                      GestureDetector(
                        // method
                        onTap: () {},

                        child: Container(
                          height: 45,
                          width: 200,
                          decoration: BoxDecoration(
                            color: bgBlack,
                            border: Border.all(width: 2,color: mainBlue),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child:const Center(
                            child: Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 17
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}
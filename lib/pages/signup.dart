import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:giftify/pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name=TextEditingController();
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController confirmPass=TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
     name.dispose();
     username.dispose();
     password.dispose();
     confirmPass.dispose();
  }


   //final FirebaseFirestore _firestore = FirebaseFirestore.instance;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration:const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover),
          ),

          child:Form(
            child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const Gap(150),

                const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),
                ),

                const Gap(20),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child:TextField(
                    controller: name,
                    decoration: InputDecoration(
                      labelText: "Full Name",
                      prefixIcon: Icon(Icons.person),
                        
                      prefixIconColor: Colors.amber[500],
                      fillColor: Colors.white, 
                      filled: true,
                      border: OutlineInputBorder(
                          
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),

                const Gap(20),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child:TextField(
                    controller: name,
                    decoration: InputDecoration(
                      labelText: "Username",
                      prefixIcon: Icon(Icons.person),
                        
                      prefixIconColor: Colors.amber[500],
                      fillColor: Colors.white, 
                      filled: true,
                      border: OutlineInputBorder(
                          
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),

                
                const Gap(20),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child:TextField(
                    controller: name,
                    decoration: InputDecoration(
                      labelText: "Phone no.",
                      prefixIcon: Icon(Icons.call),
                        
                      prefixIconColor: Colors.amber[500],
                      fillColor: Colors.white, 
                      filled: true,
                      border: OutlineInputBorder(
                          
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),

                
                const Gap(20),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child:TextField(
                    controller: name,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                        
                      prefixIconColor: Colors.amber[500],
                      fillColor: Colors.white, 
                      filled: true,
                      border: OutlineInputBorder(
                          
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),

                
                const Gap(20),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child:TextField(
                    controller: name,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock),
                        
                      prefixIconColor: Colors.amber[500],
                      fillColor: Colors.white, 
                      filled: true,
                      border: OutlineInputBorder(
                          
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                
                SizedBox(
                  width: (MediaQuery.of(context).size.width / 2) - 60,
                  height: (MediaQuery.of(context).size.height / 2) - 310,
                    
                  child: ElevatedButton(
                    onPressed:(){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context)=>HomePage())
                      );
                    }, 
                    child:const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),                   
                  )
                ),

              ],
            )
          ),

        )
      )
        
    );
  }
}

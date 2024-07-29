import 'package:anon_betting_app/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ANON BETTING APP",style: TextStyle(color: Colors.blue[1000],fontWeight: FontWeight.bold),),centerTitle: true,backgroundColor: Colors.blue[300],), backgroundColor: Colors.grey[200],
        body: Center(
          child: Column(
            children: [
              Text("WELCOME TO ANON",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue[900]),),

              Text("SIGNUP", style: GoogleFonts.pacifico(fontSize: 40,fontWeight: FontWeight.bold, color:  Colors.blue[900])),

              Padding(
                padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: ("012345678"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      prefixIcon: Icon(Icons.phone_android)
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(50,20,50,0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: ("email"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    prefixIcon: Icon(Icons.email)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: ("password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),
              
              Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: ("confirm password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    prefixIcon: Icon(Icons.password)
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){}, child: Text("SIGNUP")),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Row(children: [
                  Text("If you have an account click here"),
                  IconButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Loginpage()));
                  }, icon: Icon(Icons.account_circle_outlined), )
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}

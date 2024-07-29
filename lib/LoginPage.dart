import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("ANON BETTING APP",style: TextStyle(fontWeight: FontWeight.bold),),centerTitle: true,backgroundColor: Colors.blue[300],),
        backgroundColor: Colors.yellow,
        body: Center(
          child: Column(
            children: [
              Text("WELCOME TO ANON",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
              Text("LOGIN", style: GoogleFonts.aBeeZee(fontSize: 40,fontWeight: FontWeight.bold))
            ],
          ),
        ),

      ),
    );
  }
}

import 'package:anon_betting_app/SignupPage.dart';
import 'package:anon_betting_app/UserDashoard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
        appBar: AppBar(
          title: Text("ANON BETTING APP",style: TextStyle(color: Colors.blue[1000],fontWeight: FontWeight.bold),),centerTitle: true,backgroundColor: Colors.blue[300],), backgroundColor: Colors.grey[200],

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text("WELCOME TO ANON",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue[900]),),
          
                Text("LOGIN", style: GoogleFonts.pacifico(fontSize: 40,fontWeight: FontWeight.bold, color:  Colors.blue[900])),
          
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 70, 50, 10),
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
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
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
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => Userdashboard()));
                      }, child: Text("LOGIN")),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Row(children: [
                    Text("If you dont have an account click here"),
                    IconButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Signuppage()));
                    }, icon: Icon(Icons.account_circle_outlined), )
                  ],),
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}

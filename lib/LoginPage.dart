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
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  Future<void> _login() async {
    setState(() {
      isLoading = true; // Show loader
    });

    final email = emailController.text;
    final password = passwordController.text;

    try {
      final response = await Supabase.instance.client.auth.signInWithPassword(
        email: email,
        password: password,
      );
      if (response.user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Userdashboard()),
        );
      } else {
        showErrorSnackBar('Login failed');
      }
    } catch (e) {
      showErrorSnackBar(e.toString());
    } finally {
      setState(() {
        isLoading = false; // Hide loader
      });
    }
  }

  void showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ANON BETTING APP",
            style: TextStyle(
              color: Colors.blue[1000],
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[300],
        ),
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  "WELCOME TO ANON",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                  ),
                ),
                Text(
                  "LOGIN",
                  style: GoogleFonts.pacifico(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 70, 50, 10),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "me@mail.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: isLoading ? null : _login, // Disable button when loading
                    child: isLoading
                        ? CircularProgressIndicator(
                      color: Colors.red,
                    )
                        : Text("LOGIN"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Row(
                    children: [
                      Text("If you don't have an account click here"),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Signuppage()),
                          );
                        },
                        icon: Icon(Icons.account_circle_outlined),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

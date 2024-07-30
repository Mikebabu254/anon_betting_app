import 'package:flutter/material.dart';

class Userdashoard extends StatefulWidget {
  const Userdashoard({super.key});

  @override
  State<Userdashoard> createState() => _UserdashoardState();
}

class _UserdashoardState extends State<Userdashoard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Dashboard", style: TextStyle(color: Colors.blue[1000],fontWeight: FontWeight.bold),),centerTitle: true,backgroundColor: Colors.blue[300],),
      ),
    );
  }
}

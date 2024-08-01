import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ksh_anon_Conversion extends StatefulWidget {
  const ksh_anon_Conversion({super.key});

  @override
  State<ksh_anon_Conversion> createState() => _ksh_anon_ConversionState();
}

class _ksh_anon_ConversionState extends State<ksh_anon_Conversion> {
  final TextEditingController ksh = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("ksh - Anon conversion"),centerTitle: true,backgroundColor: Colors.blue[300],),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: ksh,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText:("ksh you want to convert"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),prefixIcon: Icon(Icons.monetization_on),

                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class anon_cash_conversion extends StatefulWidget {
  const anon_cash_conversion({super.key});

  @override
  State<anon_cash_conversion> createState() => _anon_cash_conversionState();
}

class _anon_cash_conversionState extends State<anon_cash_conversion> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("anon - ksh conversion"),),
      ),
    );
  }
}

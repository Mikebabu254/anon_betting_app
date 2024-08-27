import 'package:flutter/material.dart';

class ksh_anon_Conversion extends StatefulWidget {
  const ksh_anon_Conversion({super.key});

  @override
  State<ksh_anon_Conversion> createState() => _ksh_anon_ConversionState();
}
  class _ksh_anon_ConversionState extends State<ksh_anon_Conversion> {

  final TextEditingController ksh = TextEditingController();
  double cash = 10;
  double chip = 100.0;

  void convertKsh_chip(){
    setState(() {
      double kshValue = double.tryParse(ksh.text)??0;
      if(kshValue>cash){
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Text("Insufficient Fund"),
            content: Text("You dont have enough cash to convert"),
            actions: [
              TextButton(
                child: Text("OK"),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),],
          );
        },);
      }else if(kshValue<=0){
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Text("Error converting"),
            content: Text("You cant convert less than ksh: 0"),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text("OK"))
            ],
          );
        });
      } else{
        double conv = kshValue *10;
        cash = cash-kshValue ;
        chip = chip +conv;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("ksh - Anon conversion"),centerTitle: true,backgroundColor: Colors.blue[300],),
        body: Center(
          child: Column(
            children: [
              Text("ksh $cash", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              Text("Chip : $chip", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
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
              ),
              ElevatedButton(onPressed: convertKsh_chip, child: Text("convert"))
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

import 'package:anon_betting_app/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: 'https://yfiabsfpnaxyaxhbycrd.supabase.co/',
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlmaWFic2ZwbmF4eWF4aGJ5Y3JkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ4MzMzNzMsImV4cCI6MjA0MDQwOTM3M30.FFkIJ_k515LKLA4-8edrXgJ1dC-9cl-aou9hk9UALEQ');
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Loginpage()));
}
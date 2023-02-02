import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_2023_test/screens/login.dart';
import 'screens/home.dart';
void main() async{
  
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
  home: AuthScreen(),),);
}
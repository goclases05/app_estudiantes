import 'package:app_estudiantes/screen/Escritorio_screen/escritorio_screen.dart';
import 'package:app_estudiantes/screen/data_dom_screen.dart';
import 'package:app_estudiantes/screen/home_screen.dart';
import 'package:app_estudiantes/screen/login_screen/login_screen.dart';
import 'package:app_estudiantes/screen/screen.dart';
import 'package:app_estudiantes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light
    ));
  runApp(MyApp());

}


class MyApp extends StatefulWidget {
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Goclases Estudiantes',
      initialRoute: 'Login',
      routes: {
        'Login':   (_)=>const LoginScreen(),
        'Splash':(_)=>DataDom(),
        'Escritorio':(_)=>EscritorioScreen(),
        
      },
      theme:theme(), 
      
    );
  }
}


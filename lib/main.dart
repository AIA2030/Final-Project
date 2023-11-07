import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:final_project/View_model/view_model.dart';
import 'package:final_project/login_screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(

    ChangeNotifierProvider(create: (context)=> TodoModelApp(), child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.cyan.shade50,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black54),
        useMaterial3: true,
      ),

      home: AnimatedSplashScreen(splash:
          Icon(Icons.list_alt,size: 200, color: Colors.white,),
          duration: 2000,
          splashTransition: SplashTransition.rotationTransition,
          backgroundColor: Colors.cyanAccent.shade700,
          nextScreen: LoginScreen()),
    );
  }
}

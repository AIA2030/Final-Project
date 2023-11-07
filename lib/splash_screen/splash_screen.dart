import 'package:final_project/login_screens/sign_in.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override

  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  child: Icon(Icons.calendar_view_day_outlined,size: 200, color: Colors.cyanAccent.shade700,),
                ),
                Container(child: Text("My Daily List"),),
              ]
          )
      ),
    );
  }
}

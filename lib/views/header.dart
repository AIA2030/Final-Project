import 'package:final_project/View_model/view_model.dart';
import 'package:final_project/dashboard_screen/dashboard_screen.dart';
import 'package:final_project/login_screens/sign_in.dart';
import 'package:final_project/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarview extends StatelessWidget {
  const AppBarview({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer <TodoModelApp> (builder: (context, viewmodel, child) {

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,


          title: SizedBox(
            child: Center(
              child: Text("Welcome Aya Ibrahim", style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade100),),
            ),
          ),


          leading: IconButton(icon: Icon(Icons.dashboard, size: 30, color: Colors.cyanAccent.shade700,) , onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const DashboardScreen()),);

          },),

          actions: <Widget> [

            IconButton(icon: Icon(Icons.account_circle_rounded, size: 35, color: Colors.cyan.shade100,) , onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));

            },),

            //IconButton(icon: Icon(Icons.diamond, size: 35, color: Colors.cyan.shade100,) , onPressed: (){

             // Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));

          //  },),

          ],

        ),
      );



    });
  }
}

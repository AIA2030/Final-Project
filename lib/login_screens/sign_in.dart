import 'package:final_project/View_model/view_model.dart';
import 'package:final_project/login_screens/sign_up.dart';
import 'package:final_project/views/todolist_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();
    final password = TextEditingController();

    return Consumer <TodoModelApp> (builder: (context, viewmodel, child) {

      return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,

            title: SizedBox(
              child: Center(
                child: Text("SIGN IN", style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade100),),
              ),
            ),
            leading: IconButton(icon: Icon(Icons.arrow_back_sharp, size: 30, color: Colors.white,) , onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> TodoListScreen()),);

            },),
            actions: <Widget> [

              IconButton(icon: Icon(Icons.account_circle_rounded, size: 35, color: Colors.black87,) , onPressed: (){},),

            ],

            automaticallyImplyLeading:false   ),

        body: SafeArea(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                children: <Widget>[
                  SizedBox(height: 80,),
                 Column(
                   children: <Widget>[
                     Icon(Icons.calendar_view_day_outlined, size: 100, color: Colors.cyanAccent.shade700,),
                     SizedBox(height: 10,),
                     Text("SIGN IN", style: TextStyle(color: Colors.black87, fontSize: 30, fontWeight: FontWeight.bold,),),
                     SizedBox(height: 50.0,),
                     TextField(
                       controller: username,
                       decoration: const InputDecoration(
                         border: OutlineInputBorder(),
                         focusedBorder: OutlineInputBorder(
                           borderRadius : const BorderRadius.all(Radius.circular(12)) ,
                           borderSide: BorderSide(
                             width: 3.0,
                             color: Colors.cyan,
                           ),
                         ),
                         floatingLabelStyle: TextStyle(color: Colors.cyan),
                         labelText: 'Username',
                       ),

                     ),

                     const SizedBox(height: 12.0,),

                     Container(
                       child:  TextField(
                         controller: password,
                         decoration: const InputDecoration(
                           border: OutlineInputBorder(),
                           focusedBorder: OutlineInputBorder(
                             borderRadius : const BorderRadius.all(Radius.circular(12)) ,
                             borderSide: BorderSide(
                               width: 2.0,
                               color: Colors.cyan,
                             ),
                           ),
                           floatingLabelStyle: TextStyle(color: Colors.cyan),
                           labelText: 'Password',
                         ),

                         obscureText: true,

                       ),
                     ),

                     SizedBox(height: 40.0,),

                     OverflowBar(
                       alignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Column(
                           children: [

                             ElevatedButton(onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=> TodoListScreen()));
                             },style: ElevatedButton.styleFrom(
                               fixedSize: Size(400, 60),
                               backgroundColor: Colors.black,
                             ),
                               child:  const Text("SIGN IN",style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.w900,
                                 fontSize: 17,
                                 letterSpacing: 0.8,
                               ),),
                             ),

                             SizedBox(height: 10.0,),

                             ElevatedButton(onPressed: (){
                               username.clear();
                               password.clear();
                             },style: ElevatedButton.styleFrom(
                               fixedSize: Size(400, 60),
                               backgroundColor: Colors.black,
                             ),
                               child:  const Text("CANCEL",style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.w900,
                                 fontSize: 17,
                                 letterSpacing: 0.8,
                               ),),
                             ),



                           ],
                         )


                       ],
                     ),

                     SizedBox(height: 25.0,),

                     OverflowBar(
                       alignment: MainAxisAlignment.center,
                       children: <Widget>[

                         Text("Don’t have account yet? ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,color: Colors.black87),),

                         TextButton(child: const Text("SIGN UP",
                           style: TextStyle(color:Colors.cyan,fontWeight: FontWeight.w900, letterSpacing: 0.8, fontSize: 17,  ),),
                             onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));

                             } ),

                       ],
                     ),


                   ],
                 )
                ],
              ),

            ),
          );
    });
  }
}

import 'package:final_project/View_model/view_model.dart';
import 'package:final_project/views/todolist_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController = TextEditingController();
    return Consumer <TodoModelApp> (builder: (context, viewmodel, child) {

      return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,

            title: SizedBox(
              child: Center(
                child: Text("Profile", style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),),
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
              Center(
                child: Padding(padding: EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.cyan.shade400,borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children:<Widget> [

                          SizedBox(height: 10.0,),

                          Center(
                            child: Column(
                              children: [
                                ClipRRect(
                                  child: Image.asset('assets/1.png', height: 100, width: 100, fit: BoxFit.fill,),
                                  clipBehavior: Clip.antiAlias,
                                  borderRadius: BorderRadius.all(Radius.circular(100)),

                                ),

                                SizedBox(width: 40.0,),

                                Text("Aya Ibrahim", style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 18,),)
                              ],
                            ),
                          ),

                          SizedBox(height: 10.0,),

                          Container(
                            padding: EdgeInsets.all(10),
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12), color: Colors.grey.shade100),

                            child: ListTile(
                                leading: Icon(Icons.person, size: 30, color: Colors.cyanAccent.shade700,),

                                title: Text("User Name : ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),),
                                subtitle: Text(" AYA IBRAHIM ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black87),),

                                trailing: FittedBox(

                                  fit: BoxFit.fill,

                                  child: Row(
                                    children: <Widget>[

                                      IconButton(icon: Icon(Icons.edit), color: Colors.cyanAccent.shade700, iconSize: 22,
                                        onPressed: (){

                                        },
                                      ),
                                    ],
                                  ),

                                )
                            ),
                          ),

                          SizedBox(height: 10.0,),

                          Container(
                            padding: EdgeInsets.all(10),
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12), color: Colors.grey.shade100),

                            child: ListTile(
                                leading: Icon(Icons.lock_outline, size: 30, color: Colors.cyanAccent.shade700),

                                title: Text("Password : ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),),
                                subtitle: Text(" ************  ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black87),),

                                trailing: FittedBox(

                                  fit: BoxFit.fill,

                                  child: Row(
                                    children: <Widget>[

                                      IconButton(icon: Icon(Icons.edit), color: Colors.cyanAccent.shade700, iconSize: 22,
                                        onPressed: (){},
                                      ),
                                    ],
                                  ),

                                )
                            ),
                          ),

                          SizedBox(height: 10.0,),

                          Container(
                            padding: EdgeInsets.all(10),
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12), color: Colors.grey.shade100),

                            child: ListTile(
                                leading: Icon(Icons.email_outlined, size: 30, color: Colors.cyanAccent.shade700,),

                                title: Text("Email : ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),),
                                subtitle: Text(" AIA92@yahoo.com ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black87),),

                                trailing: FittedBox(

                                  fit: BoxFit.fill,

                                  child: Row(
                                    children: <Widget>[

                                      IconButton(icon: Icon(Icons.edit), color: Colors.cyanAccent.shade700, iconSize: 22,
                                        onPressed: (){},
                                      ),
                                    ],
                                  ),

                                )
                            ),
                          ),
                          
                          SizedBox(height: 10.0,),

                          Container(
                            padding: EdgeInsets.all(10),
                            height: 95,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12), color: Colors.grey.shade100),

                            child: ListTile(
                                leading: Icon(Icons.local_phone_outlined, size: 30, color: Colors.cyanAccent.shade700,),

                                title: Text("Mobile Number: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),),
                                subtitle: Text(" 0100000000 ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black87),),

                                trailing: FittedBox(

                                  fit: BoxFit.fill,

                                  child: Row(
                                    children: <Widget>[

                                      IconButton(icon: Icon(Icons.edit), color: Colors.cyanAccent.shade700, iconSize: 22,
                                        onPressed: (){},
                                      ),
                                    ],
                                  ),

                                )
                            ),
                          ),



                          SizedBox(height: 30.0,),

                          OverflowBar(
                            alignment: MainAxisAlignment.center,
                            children: <Widget>[

                              ElevatedButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> TodoListScreen()));
                              },style: ElevatedButton.styleFrom(
                                fixedSize: Size(120, 60),
                                backgroundColor: Colors.black,
                              ),
                                child:  const Text("SAVE",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17,
                                  letterSpacing: 0.8,
                                ),),
                              ),

                              SizedBox(width: 20.0,),

                              ElevatedButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> TodoListScreen()));
                              },style: ElevatedButton.styleFrom(
                                fixedSize: Size(120, 60),
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
                          ),
                        ],
                      ),)
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}



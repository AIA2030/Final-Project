import 'package:final_project/View_model/view_model.dart';
import 'package:final_project/views/todolist_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer <TodoModelApp> (builder: (context, viewmodel, child) {

      return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,

            title: SizedBox(
              child: Center(
                child: Text("Dashboard", style: TextStyle(fontSize: 20,
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

        body:SafeArea(
          child:ListView(
            children: <Widget> [
              Center(
                  child:Padding ( padding: EdgeInsets.all(20),
                    child: Column(

                      children: <Widget>[

                      //  Text("Dashboard", style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold,),),
                        SizedBox(height: 20,),

                        Card(
                          color: Colors.cyan.shade400,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.black87,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(12))
                          ),
                          child: Container(
                            child: SizedBox(
                                width: 300,
                                height: 150,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: <Widget>[
                                      Center(child: Text("Total Task",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),

                                      SizedBox(height: 20,),

                                      Center(child: Container(
                                          width: 130,
                                          height: 50,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.grey.shade200,  ) ,
                                          child: Center(child: Text(" ${viewmodel.getlengthtask()}",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black87,),),))),
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.cyan.shade400,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.black87,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(12))
                          ),
                          child: Container(
                            child: SizedBox(
                                width: 300,
                                height: 150,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: <Widget>[
                                      Center(child: Text("Completed Task",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),

                                      SizedBox(height: 20,),

                                      Center(child: Container(
                                          width: 130,
                                          height: 50,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.grey.shade200,  ) ,
                                          child: Center(child: Text(" ${viewmodel.numofcompletetask()}",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black87,),),))),
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.cyan.shade400,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.black87,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(12))
                          ),
                          child: Container(
                            child: SizedBox(
                                width: 300,
                                height: 150,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: <Widget>[
                                      Center(child: Text("Non-Completed Task",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),

                                      SizedBox(height: 20,),

                                      Center(child: Container(
                                          width: 130,
                                          height: 50,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.grey.shade200,  ) ,
                                          child: Center(child: Text(" ${viewmodel.numofnotcompletetask()}",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black87,),),))),
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),



                        SizedBox(height: 40.0,),

                        OverflowBar(
                          alignment: MainAxisAlignment.center,
                          children: <Widget>[

                            ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> TodoListScreen()));
                            },style: ElevatedButton.styleFrom(
                              fixedSize: Size(120, 60),
                              backgroundColor: Colors.black,
                            ),
                              child:  const Text("Done",style: TextStyle(
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
            ],
          ),
        ),
      );
    });
  }

}
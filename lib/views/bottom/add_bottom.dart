
import 'package:final_project/View_model/view_model.dart';
import 'package:final_project/model/task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskBottomView extends StatelessWidget {
  const AddTaskBottomView({super.key});


  @override
  Widget build(BuildContext context) {

    final TextEditingController entryController = TextEditingController();

    return Consumer<TodoModelApp>(builder: (context, viewmodel, child){

      return Container(

        height: 250,
        width: 400,

        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.cyanAccent.shade700,),
        child:Center
        (child: Column(
              children:<Widget> [

                SizedBox( height: 15,),


                Title( color: Colors.cyan,
                  child: Text("Add Task",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize:18,),
                  ), ),

                SizedBox( height: 20,),

                Container(
                  height: 80,
                  width: 300,
                  color: Colors.cyanAccent.shade700,
                  child: Center(
                    child: SizedBox(

                      height: 400,
                      width: 300,

                      child: TextField(
                        onSubmitted: (value){

                          if(entryController.text.isNotEmpty){

                            Task newtask = Task(entryController.text, false);
                            viewmodel.addtask(newtask);
                            entryController.clear();

                          }

                          Navigator.of(context).pop();

                        },


                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 20),
                            filled: true,
                            fillColor: Colors.grey.shade50,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: const BorderSide(
                                    width: 0, style: BorderStyle.none))),

                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,

                        autofocus: true,
                        autocorrect: false,
                        controller: entryController,
                        style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
                      ),

                    ),
                  ),


                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    SizedBox(
                      height: 60,
                      width: 100,

                      child:  ElevatedButton(onPressed: (){
                        Task newtask = Task(entryController.text, false);
                        viewmodel.addtask(newtask);
                        entryController.clear();
                        Navigator.of(context).pop();
                      },

                          style: ElevatedButton.styleFrom(

                              textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: Text("Save",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black))),
                    ),

                    SizedBox( width: 20,),

                    SizedBox(
                      height: 60,
                      width: 100,

                      child:  ElevatedButton(onPressed: (){

                        entryController.clear();
                        Navigator.of(context).pop();
                      },

                          style: ElevatedButton.styleFrom(

                              textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: Text("Cancel",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black))),
                    ),
                  ],
                )
              ],
            ),
)
        );

    });
  }
}



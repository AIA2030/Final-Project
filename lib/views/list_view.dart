import 'package:final_project/View_model/view_model.dart';
import 'package:final_project/views/bottom/delete_bottom.dart';
import 'package:final_project/views/bottom/edit_bottom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoModelApp>(builder: (context, viewmodel, child){

      return
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))
          ),

          child: ListView.separated(

            padding: EdgeInsets.all(15),
            separatorBuilder: (context , index){

              return SizedBox(height: 10,);
            },

            itemCount: viewmodel.getlengthtask(),
            itemBuilder: (context, index) {

              return Dismissible(key: UniqueKey(), onDismissed: (direction) {

                Expanded(flex:1, child: IconButton(icon: Icon(Icons.delete) , onPressed: (){

                  viewmodel.bottomsheetbuild(DeleteBottom(), context);

                },));

                viewmodel.deletetask(index);

                Expanded(flex:1, child: IconButton(icon: Icon(Icons.edit_document) , onPressed: (){

                  viewmodel.bottomsheetbuild(EditBottom(), context);

                },));

              },


                background: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),


                ),


                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: Colors.white),

                  child: ListTile(
                      leading: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),

                        side: BorderSide(width: 2),
                        checkColor: Colors.black87,
                        activeColor: Colors.cyan,
                        value:viewmodel.getvalueoftask(index),
                        onChanged: (value){
                          viewmodel.settaskvalue(index, value!);

                        },
                      ),

                      title: Text(viewmodel.gettakeoftask(index), style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold, color: Colors.black87)),
                      trailing: FittedBox(

                        fit: BoxFit.fill,

                        child: Row(
                          children: <Widget>[
                            IconButton(icon: Icon(Icons.delete), color: Colors.cyanAccent.shade700, iconSize: 23 ,
                              onPressed: (){
                                viewmodel.deletetask(index);
                              },
                            ),

                            IconButton(icon: Icon(Icons.edit_document), color: Colors.cyanAccent.shade700, iconSize: 22,
                              onPressed: (){
                                viewmodel.bottomsheetbuild(EditBottom(task: viewmodel.gettakeoftask(index),index: index,), context);
                              },
                            ),
                          ],
                        ),

                      )
                  ),
                ),
              );
            },



          ),

        );

    } );
  }
}
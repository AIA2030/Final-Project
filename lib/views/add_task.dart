import 'package:final_project/View_model/view_model.dart';
import 'package:final_project/views/bottom/add_bottom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer <TodoModelApp> (builder: (context, viewmodel, child) {

      return SizedBox(
        height: 90,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.grey.shade50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80)
              )),

          onPressed: (){
            viewmodel.bottomsheetbuild(AddTaskBottomView(), context);
          },
          child: Icon(Icons.add, size: 40,),
        ),
      );
    });
  }
}


import 'package:final_project/View_model/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeleteBottom extends StatelessWidget {
  const DeleteBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoModelApp>(builder: (context, viewmodel, child){

      return Container(
        height: 200,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(onPressed: (){
              viewmodel.deletealltask();
              Navigator.of(context).pop();
            },
                style: ElevatedButton.styleFrom(

                    textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text("Delete")),

          ],
        ),
      );

    });
  }
}

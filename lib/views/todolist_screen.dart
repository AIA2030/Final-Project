import 'package:final_project/views/add_task.dart';
import 'package:final_project/views/header.dart';
import 'package:final_project/views/list_view.dart';
import 'package:flutter/material.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Column(
          children: [
            
            Expanded(flex: 1, child: AppBarview()),
            Expanded(flex: 6, child: Listview()),

          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AddTask(),
    );
  }
}

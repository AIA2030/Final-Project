import 'package:final_project/model/task.dart';
import 'package:flutter/material.dart';


class TodoModelApp extends ChangeNotifier{

List<Task> task = <Task>[];


void addtask(Task newtask){

  task.add(newtask);
  notifyListeners();
}


void edittask(int index, String edittask){

  task[index].title = edittask ;

  notifyListeners();
}


  int numofnotcompletetask(){
  return task.where((tasks) => !tasks.complete).length;
}

  int numofcompletetask(){
    return task.where((tasks) => tasks.complete).length;
}

  int getlengthtask(){
  return task.length;
}

void settaskvalue(int taskindex, bool taskvalue){
  task[taskindex].complete = taskvalue;
  notifyListeners();
}

void deletetask(int taskindex){
  task.removeAt(taskindex);
  notifyListeners();
}

void deletealltask(){
  task.clear();
  notifyListeners();
}

void deletecompletetask(){
  task = task.where((tasks) => !tasks.complete).toList();
  notifyListeners();
}

String gettakeoftask(int index){
  return task[index].title;
}

bool getvalueoftask(int index){
  return task[index].complete;
}

void bottomsheetbuild(Widget bottomsheet , BuildContext context){
  showBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      context: context, builder: (context){
    return bottomsheet;
  });
}
}
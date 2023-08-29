import 'package:flutter/material.dart';

import 'classtask.dart';

class Taskdata extends ChangeNotifier{
List<Taskk> tasks=
[
  Taskk(name:"aaaaaaaaa"),
];
void addnewTask(String newTitileTask){
  tasks.add(Taskk(name: newTitileTask));
  notifyListeners();
}
void updateTask(Taskk task){
  task.changeStateTask();
  notifyListeners();
}

void deleteTask(Taskk task){
  tasks.remove(task);
  notifyListeners();
}
}
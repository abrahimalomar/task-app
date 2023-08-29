import 'package:flutter/material.dart';
import 'package:tasks/modles/task_data.dart';
import 'listTitlePage.dart';
import 'package:provider/provider.dart';

class listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Consumer<Taskdata>(
      builder: (context,taskdata,child) {
        return      ListView.builder(
      itemCount:taskdata.tasks.length,
      itemBuilder:(context,index ){
        return lisTitle(
          isCheckd:taskdata.tasks[index].isDone,
          TaskTitle:taskdata .tasks[index].name,


          checkhboxChang:(
            (value){
           taskdata.updateTask(taskdata.tasks[index]);
            }
            
            ),
            listTileDelete: (){
            taskdata.deleteTask(taskdata.tasks[index]);  
            }
            );
},
);

      });
  }
}


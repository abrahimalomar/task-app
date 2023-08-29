
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/modles/task_data.dart';


class addtask extends StatelessWidget {
    final Function addTaskCallback;
   addtask(this.addTaskCallback);
 

  @override
  Widget build(BuildContext context) {
     String? newtext;
     
    return Container(
      
      padding: EdgeInsets.all(20),

      child: Column(
        //Button width wdouble infinity
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: 
        [
          Text("Add Task",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize:30,
            color: Colors.indigo[400],
            fontWeight: FontWeight.bold,
          ),),

          TextField(
            //show keybord
            autofocus: true,
            //write in the Center
            textAlign: TextAlign.center,

            onChanged: (value){
               newtext=value;
            },
          ),

          SizedBox(height: 20,),

          TextButton(onPressed:(){
           // print(newtext);
            Provider.of<Taskdata>(context,listen: false).addnewTask(newtext!);

            Navigator.pop(context);
          },
        
           child:Text("Add"),
          style: TextButton.styleFrom(
            backgroundColor: Colors.teal[400],
            primary: Colors.white,
          ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'addTask.dart';
import 'listsView.dart';
import 'package:provider/provider.dart';
import 'modles/task_data.dart';

class mainScreenn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(onPressed: (){
          
          
          //show Screen add press on Iconadd
          showModalBottomSheet(
          
            context: context,
             builder:(context)=>SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom:MediaQuery.of(context).viewInsets.bottom ),
                  child: addtask((){}),
                  ),));},
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
        ),
        backgroundColor: Colors.teal,
      body:Container(

      child:Container(
        padding: EdgeInsets.all(20),
        child:
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
         [
          Row(
            children: 
            [
              
              Icon(Icons.playlist_add_check,size: 37,color: Colors.amber,),
              SizedBox(width: 20,),
              Text("daily Tasks",style: TextStyle(color: Colors.amber,fontSize: 40),),
            ],
          ),
          SizedBox(height: 20,),
          Center(
            child:Text("${Provider.of<Taskdata>(context).tasks.length} Number of Task",style: TextStyle(color: Colors.amber,fontSize:15),), 
          ),
          

          SizedBox(height: 20,),

          Expanded(
            child:Container(
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              
              child:listview(),
            ),
            ),
   
         ],
         
      ),
      ),
    ),
    );
  }
}


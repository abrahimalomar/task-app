import 'package:flutter/material.dart';
class lisTitle extends StatelessWidget {
final String TaskTitle;

 final bool isCheckd;
 
 final void Function(bool?) checkhboxChang;
final void Function() listTileDelete;

 lisTitle({required this.isCheckd,required this.TaskTitle, required this.checkhboxChang,required this.listTileDelete});


  @override
  Widget build(BuildContext context) {

 
    
    return Container(

      child: Column(
      children: 
        [
          ListTile(
            title: Text(TaskTitle,
            style: TextStyle(
              decoration: isCheckd ? TextDecoration.lineThrough:null,

            ),
            
            ),

           // trailing:taskcheckbox
           trailing: Checkbox(
            value: isCheckd, 
            onChanged: checkhboxChang,
            //onChanged:checkhboxChange);,
          ),
       onLongPress:listTileDelete,
          ),
        ],
      ),
    );
    
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/modles/task_data.dart';
import 'mainScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
        return ChangeNotifierProvider(
          create:(context) => Taskdata(),
     child:   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainScreenn(),
        ),
    );
    
  }
}


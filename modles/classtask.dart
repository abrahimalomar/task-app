
class Taskk{

  final String name;
  bool isDone;

  Taskk({required this.name,this.isDone=false});

  void changeStateTask(){
    isDone= !isDone;
  }
}

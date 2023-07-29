import 'package:hive/hive.dart';

class ToDoDataBase{
  List toDoList = [];
  
  
  //* reference our box
  final _myBox = Hive.box('mybox');
  
  
  //*Run this method if this is the 1st time ever opening this app
  void createInitialData(){
    ["Make Tutorial",false];
    ["Do Exercise",false];
    
  }
  
  //*load the date from the databse
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }
  //*update the databse
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}
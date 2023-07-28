import 'package:flutter/material.dart';
import 'package:to_do_list/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List toDoList = [
    ["Make Tutorial", false,],
    ["DO exercise", false]
  ];
  
  
  //checkbox was tapped
  void checkBoxChanged( bool? value, int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('TO DO'),
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){}
       
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder:(context, index) {
          return ToDoTile(
            taskname: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        }, 
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:todo_list/components/dialogBox.dart';

import '../components/todo_tile.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List toDoList = [
    ["Write your assignments", false],
    ["Go to school by 7am", false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = value ?? false;
    });
  }

  void createNewTask(){
    showDialog(
      context: context,
      builder: (context){
        return  dialogBox(controller: null,);
      },

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Center(
            child: Text("TO DO LIST",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
        backgroundColor: Colors.blue[100],
      ),

      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index){
          return ToDoTile(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}

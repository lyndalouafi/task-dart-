import 'Task.dart';
import 'dart:io';

class TaskManager {
  List<Task> taskList = [];

  void addTask() {
    String? title;
    String? description;
    DateTime createdAt;
    bool isDone;

    print("Enter Title:");
    title = stdin.readLineSync();

    print("Enter Description:");
    description = stdin.readLineSync();

    createdAt = DateTime.now();

    print("Is the task done? (Yes/No):");
    String? doneInput = stdin.readLineSync()?.trim().toLowerCase();

    isDone = doneInput == 'yes';
    print("isDone = $isDone");
    
    Task task = Task(
         title:title,
         description:description,
         createdAt:createdAt,
         isDone:isDone,
    );

    taskList.add(task);
    
    print("Task added successfully!");
  }

  void showTasks() {
    int i = 0 ;
    print("Tasks :");
    for(var task in taskList) {
      print("task number ${i} is ${task}");
      i++ ;
    }
  }

  void markTaskDone(int index){
    if(index >= 0 && index < taskList.length) {
      if(taskList[index].isDone != true) {
        taskList[index].isDone = true;
      }
    }
  }

  void deleteTask(int index) {
      if(index >= 0 &&  index<taskList.length) {
          taskList.removeAt(index);
      }
  }


}
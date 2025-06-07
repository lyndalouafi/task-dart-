import 'dart:io';
import 'manager.dart';
void main() {
  TaskManager manager = TaskManager();
  int? number ;
  do {
    print("-------------------------");
    print("1: Add Task");
    print("2: Show Task");
    print("3: Finish Task");
    print("4: Delete Task");
    print("0: Exit");
    print("-------------------------");
    print("choose 1 , 2 , 3 , 4 or 0 :");
    number = int.parse(stdin.readLineSync()!);

    switch (number) {
      case 1:
        manager.addTask();
        break;
      case 2:
        manager.showTasks();
        break;
      case 3:
        print("task finished :");
        int? index = int.parse(stdin.readLineSync()!);
        manager.markTaskDone(index);
        break;
      case 4:
        print("task deleted :");
        int? index = int.parse(stdin.readLineSync()!);
        manager.deleteTask(index);
        break;
      case 0:
        exit(0);
      default:
        print("Invalid choice.");
    }
  }while(number != 0);
}
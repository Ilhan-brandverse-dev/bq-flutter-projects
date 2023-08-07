import 'package:fifth_class/models/todo_model.dart';
import 'package:flutter/material.dart';

class ToDoProvider extends ChangeNotifier {
  List<ToDoModel> _todoList = [];

  List<ToDoModel> get toDoList => _todoList;

  addToDo(ToDoModel toDoModel) {
    _todoList.add(toDoModel);
    notifyListeners();
  }

  
}

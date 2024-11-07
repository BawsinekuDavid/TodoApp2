import 'package:flutter/material.dart';
import 'package:grocery_app/models/save_task.dart';
import 'package:grocery_app/pages/add_todo.dart';
import 'package:grocery_app/pages/todo_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
     ChangeNotifierProvider(
      create: (context) => SaveTask(),
      child: const MyApp())
      );
}

 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
    initialRoute: '/',
    routes: {
      '/': (_) => const TodoList(),
      '/add-todo-screen': (_) => AddTodo(),
    },
  ); 
  }
}
 
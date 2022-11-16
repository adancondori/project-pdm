import 'package:equatable/equatable.dart';
import 'package:project_pdm/src/ToDoApp/models/to_do_model.dart';

abstract class TodoEvents extends Equatable {
  const TodoEvents();

  @override
  List<Object> get props => [];
}

class LoadTodo extends TodoEvents {
  final List<Todo> todos;

  const LoadTodo({this.todos = const <Todo>[]});

  @override
  List<Object> get props => [todos];
}

class AddTodo extends TodoEvents {
  final Todo todo;

  const AddTodo({required this.todo});

  @override
  List<Object> get props => [todo];
}

class UpdateTodo extends TodoEvents {
  final Todo todo;

  const UpdateTodo({required this.todo});

  @override
  List<Object> get props => [todo];
}

class RemoveTodo extends TodoEvents {
  final Todo todo;

  const RemoveTodo({required this.todo});

  @override
  List<Object> get props => [todo];
}

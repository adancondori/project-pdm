import 'package:equatable/equatable.dart';
import 'package:project_pdm/src/ToDoApp/models/to_do_model.dart';

abstract class TodoStates extends Equatable {
  const TodoStates();

  @override
  List<Object> get props => [];
}

class TodoLoading extends TodoStates {}

class TodoLoaded extends TodoStates {
  final List<Todo> todos;

  const TodoLoaded({this.todos = const <Todo>[]});

  @override
  List<Object> get props => [todos];
}

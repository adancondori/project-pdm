import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:project_pdm/src/ToDoApp/blocs/todo_bloc/todo_bloc.dart';
import 'package:project_pdm/src/ToDoApp/models/to_do_filter_model.dart';

import '../../models/to_do_model.dart';
import '../todo_bloc/todo_states.dart';

part 'todo_filter_event.dart';

part 'todo_filter_state.dart';

class TodoFilterBloc extends Bloc<TodoFilterEvent, TodoFilterState> {
  final TodoBloc _todoBloc;
  late StreamSubscription _toDoSubscription;

  TodoFilterBloc({required TodoBloc todoBloc})
      : _todoBloc = todoBloc,
        super(TodoFilterLoadingState()) {
    _toDoSubscription = _todoBloc.stream.listen((state) async {
      if (state is TodoLoaded) {
        print("Todo loaded emitted on check");
        add(
          UpdateFilter(),
        );
      }
    });
    on<UpdateFilter>((event, emit) async {
      add(UpdateToDoFilterEvent(todosFilter: TodoFilter.pending));
    });

    on<UpdateToDoFilterEvent>((event, emit) {
      final state = _todoBloc.state;
      if (state is TodoLoaded) {
        List<Todo> todos = state.todos.where((todo) {
          switch (event.todosFilter) {
            case TodoFilter.all:
              return true;
            case TodoFilter.cancelled:
              return todo.isCancelled!;
            case TodoFilter.pending:
              return !(todo.isCancelled! || todo.isCompleted!);
            case TodoFilter.completed:
              return todo.isCompleted!;
          }
        }).toList();
        emit(TodoFilterLoadedState(
            filteredTodoList: todos, todoFilter: event.todosFilter));
      }
    });
  }
  @override
  Future<void> close() {
    print("Closing stream");
    _toDoSubscription.cancel();
    return super.close();
  }
}

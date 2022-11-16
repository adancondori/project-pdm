import 'package:bloc/bloc.dart';
import 'package:project_pdm/src/ToDoApp/blocs/todo_bloc/todo_events.dart';
import 'package:project_pdm/src/ToDoApp/blocs/todo_bloc/todo_states.dart';
import 'package:project_pdm/src/ToDoApp/models/to_do_model.dart';

class TodoBloc extends Bloc<TodoEvents, TodoStates> {
  TodoBloc() : super(TodoLoading()) {
    on<LoadTodo>((event, emit) {
      emit(TodoLoaded(todos: event.todos));
    });
    on<AddTodo>((AddTodo event, Emitter<TodoStates> emit) {
      final state = this.state;
      if (state is TodoLoaded) {
        emit(TodoLoaded(todos: List.from(state.todos)..add(event.todo)));
      }
    });
    on<UpdateTodo>((UpdateTodo event, Emitter<TodoStates> emit) {
      final state = this.state;
      if (state is TodoLoaded) {
        List<Todo> todos = state.todos.map((todo) {
          //find our selected todo from list and update it with new todo passed through event from ui
          return todo.id == event.todo.id ? event.todo : todo;
        }).toList();
        print("Emitting to do loaded");
        emit(TodoLoaded(todos: todos));
      }
    });
    on<RemoveTodo>((RemoveTodo event, Emitter<TodoStates> emit) {
      final state = this.state;
      if (state is TodoLoaded) {
        List<Todo> todos = state.todos.where((todo) {
          return todo.id != event.todo.id;
        }).toList();
        emit(TodoLoaded(todos: todos));
      }
    });
  }
}

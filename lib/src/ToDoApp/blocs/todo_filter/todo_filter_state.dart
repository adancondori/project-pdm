part of 'todo_filter_bloc.dart';

@immutable
abstract class TodoFilterState extends Equatable{
  @override
  List<Object> get props=>[];
}

class TodoFilterLoadingState extends TodoFilterState {

}
class TodoFilterLoadedState extends TodoFilterState {
  final List<Todo> filteredTodoList;
  final TodoFilter todoFilter;

  TodoFilterLoadedState({required this.filteredTodoList, this.todoFilter = TodoFilter.all});

  @override
  List<Object> get props => [filteredTodoList, todoFilter];
}

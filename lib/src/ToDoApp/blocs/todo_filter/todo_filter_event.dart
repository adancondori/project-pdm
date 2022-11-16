part of 'todo_filter_bloc.dart';

@immutable
abstract class TodoFilterEvent extends Equatable{
  @override
  List<Object> get props=> [];
}
class UpdateFilter extends TodoFilterEvent{
   UpdateFilter();

   @override
   List<Object> get props=> [];
}
class UpdateToDoFilterEvent extends TodoFilterEvent{
  final TodoFilter todosFilter;

  UpdateToDoFilterEvent({this.todosFilter = TodoFilter.all});

  @override
  List<Object> get props=> [todosFilter];
}

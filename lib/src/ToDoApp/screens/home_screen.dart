import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pdm/src/ToDoApp/blocs/todo_bloc/todo_bloc.dart';
import 'package:project_pdm/src/ToDoApp/blocs/todo_bloc/todo_events.dart';
import 'package:project_pdm/src/ToDoApp/blocs/todo_filter/todo_filter_bloc.dart';
import 'package:project_pdm/src/ToDoApp/models/to_do_filter_model.dart';
import 'package:project_pdm/src/ToDoApp/models/to_do_model.dart';
import 'package:project_pdm/src/ToDoApp/screens/add_todo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<TodoBloc>().add(
          LoadTodo(todos: [
            Todo(
                id: '1',
                task: 'Sample todo1',
                description: 'sample to do 1 this is'),
            Todo(
              id: '2',
              task: 'Sample todo2',
              description: 'sample to do 2 this is',
            )
          ]),
        );
    context.read<TodoFilterBloc>().add(
          UpdateToDoFilterEvent(),
        );
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              onTap: (tabIndex) {
                if (tabIndex == 0) {
                  BlocProvider.of<TodoFilterBloc>(context).add(
                    UpdateToDoFilterEvent(
                      todosFilter: TodoFilter.pending,
                    ),
                  );
                } else if (tabIndex == 1) {
                  BlocProvider.of<TodoFilterBloc>(context)
                      .add(UpdateToDoFilterEvent(
                    todosFilter: TodoFilter.completed,
                  ));
                }
              },
              tabs: const [
                Tab(
                  icon: Icon(Icons.pending),
                ),
                Tab(
                  icon: Icon(Icons.add_task),
                ),
              ]),
          title: const Text('Bloc Pattern: To do'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const AddTodoScreen();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: const TabBarView(
          children: [
            HomeScreenBody(title: 'Pending Todo'),
            HomeScreenBody(title: 'Completed Todo')
          ],
        ),
      ),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  final String title;
  const HomeScreenBody({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoFilterBloc, TodoFilterState>(
      builder: (context, state) {
        if (state is TodoFilterLoadingState) {
          return const CircularProgressIndicator();
        } else if (state is TodoFilterLoadedState) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.filteredTodoList.length,
                    itemBuilder: (ctx, index) {
                      return _TodoCard(todo: state.filteredTodoList[index]);
                    }),
              ],
            ),
          );
        } else {
          return const Text("Something Went Wrong");
        }
      },
    );
  }
}

class _TodoCard extends StatelessWidget {
  final Todo todo;

  const _TodoCard({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.only(bottom: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '#${todo.id}: ${todo.task}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      context.read<TodoBloc>().add(
                          UpdateTodo(todo: todo.copyWith(isCompleted: true)));
                    },
                    icon: const Icon(Icons.add_task),
                  ),
                  IconButton(
                    onPressed: () {
                      context.read<TodoBloc>().add(RemoveTodo(todo: todo));
                    },
                    icon: const Icon(Icons.cancel),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

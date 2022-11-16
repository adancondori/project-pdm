import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pdm/src/ToDoApp/blocs/todo_bloc/todo_bloc.dart';
import 'package:project_pdm/src/ToDoApp/blocs/todo_bloc/todo_events.dart';
import 'package:project_pdm/src/ToDoApp/blocs/todo_bloc/todo_states.dart';
import 'package:project_pdm/src/ToDoApp/models/to_do_model.dart';

class AddTodoScreen extends StatelessWidget {
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerId = TextEditingController();
    TextEditingController controllerTask = TextEditingController();
    TextEditingController controllerDescription = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('BloC pattern : Add todo'),
      ),
      body: BlocListener<TodoBloc, TodoStates>(
        listener: (context, state) {
          if (state is TodoLoaded) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("A new Todo has been added"),
              ),
            );
          }
        },
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                _InputField('ID:', controllerId),
                _InputField('Task:', controllerTask),
                _InputField('Description:', controllerDescription),
                ElevatedButton(
                  onPressed: () {
                    var todo = Todo(
                        id: controllerId.value.text,
                        task: controllerTask.value.text,
                        description: controllerDescription.value.text);

                    context.read<TodoBloc>().add(
                          AddTodo(todo: todo),
                        );

                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  child: const Text("Add a To Do"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InputField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const _InputField(this.hint, this.controller);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$hint",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.only(bottom: 10),
          width: double.infinity,
          child: TextFormField(
            controller: controller,
          ),
        )
      ],
    );
  }
}

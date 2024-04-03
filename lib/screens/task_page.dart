import 'package:flutter/material.dart';
import 'package:task_app/widgets/custom_floating_action_button.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {},
      ),
      body: const Text('Task page'),
    );
  }
}

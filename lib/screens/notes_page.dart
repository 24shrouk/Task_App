import 'package:flutter/material.dart';
import 'package:task_app/widgets/no_written_flutter_app.dart';
import 'package:task_app/widgets/custom_floating_action_button.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NoWrittenNote()));
        },
      ),
      body: const Text('Note page'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_app/widgets/custom_text_feild.dart';

class NoWrittenNote extends StatefulWidget {
  const NoWrittenNote({super.key});

  @override
  State<NoWrittenNote> createState() => _NoWrittenNoteState();
}

class _NoWrittenNoteState extends State<NoWrittenNote> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            actions: const [
              Icon(
                Icons.ios_share,
                color: Colors.black,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                FontAwesomeIcons.shirt,
                color: Color.fromARGB(255, 215, 213, 213),
                size: 20,
              ),
            ],
          ),
          body: const Column(
            children: [
              CustomTextFeild(
                hint: 'العنوان',
                keyboardType: TextInputType.text,
              ),
              CustomTextFeild(
                hint: 'ابدا في الكتابة',
                keyboardType: TextInputType.multiline,
              )
            ],
          )),
    );
  }
}

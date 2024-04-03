import 'package:flutter/material.dart';
import 'package:task_app/screens/notes_page.dart';
import 'package:task_app/screens/task_page.dart';
import 'package:task_app/widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(
            pageController: pageController, currentIndex: currentIndex),
        centerTitle: true,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        children: const <Widget>[
          NotesPage(),
          TaskPage(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_app/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.pageController,
    required this.currentIndex,
  });

  final PageController pageController;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                pageController.previousPage(
                    duration: const Duration(microseconds: 100),
                    curve: Curves.bounceIn);
              },
              icon: Icon(
                currentIndex == 0 ? Icons.note_alt : Icons.note_alt_outlined,
                size: 30,
                color: currentIndex == 0 ? kPrimaryColor : Colors.black,
              )),
          IconButton(
            onPressed: () {
              pageController.nextPage(
                  duration: const Duration(microseconds: 100),
                  curve: Curves.bounceIn);
            },
            icon: Icon(
              currentIndex == 1 ? Icons.check_box : Icons.check_box_outlined,
              size: 30,
              color: currentIndex == 1 ? kPrimaryColor : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

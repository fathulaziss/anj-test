import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageDefault extends StatelessWidget {
  const PageDefault({
    Key? key,
    required this.child,
    this.title = 'Back',
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  final String title;
  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: SizedBox(
          width: Get.width,
          child: Text(title, style: const TextStyle(color: Colors.black)),
        ),
        leading: IconButton(
          onPressed: Get.back,
          iconSize: 20,
          constraints: const BoxConstraints(minWidth: 20),
          icon:
              const Icon(Icons.keyboard_double_arrow_left, color: Colors.black),
        ),
      ),
      body: child,
    );
  }
}

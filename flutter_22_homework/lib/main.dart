import 'package:flutter/material.dart';
import 'package:flutter_22_homework/PageThree.dart';
import 'package:flutter_22_homework/PageTwo.dart';
import 'package:flutter_22_homework/TaskTwoPageFour.dart';
import 'package:flutter_22_homework/TaskTwoPageThree.dart';
import 'package:flutter_22_homework/TaskTwoPageTwo.dart';
import 'package:flutter_22_homework/homework_2_page_one.dart';

import 'PageOne.dart';

void main() {
  runApp(const MainFile());
}

class MainFile extends StatelessWidget {
  const MainFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskTwoPageOne(),
    );
  }
}

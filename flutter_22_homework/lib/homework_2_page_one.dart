import 'package:flutter/material.dart';
import 'package:flutter_22_homework/TaskTwoPageFour.dart';
import 'package:flutter_22_homework/TaskTwoPageThree.dart';
import 'package:flutter_22_homework/TaskTwoPageTwo.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskTwoPageOne extends StatefulWidget {
  const TaskTwoPageOne({Key? key}) : super(key: key);

  @override
  State<TaskTwoPageOne> createState() => _TaskTwoPageOneState();
}

class _TaskTwoPageOneState extends State<TaskTwoPageOne> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TaskTwoPageTwo()));
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 170, top: 300),
                child: Image.asset("assets/Group.png"),
              ),
              Container(
                margin: EdgeInsets.only(left: 152, top: 10),
                child: Text(
                  "Omega Pay",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700, fontSize: 24),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 11,
                    height: 11,
                    margin: EdgeInsets.only(left: 195, top: 280),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff494949),
                    ),
                  ),
                  Container(
                    width: 11,
                    height: 11,
                    margin: EdgeInsets.only(left: 10, top: 280),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff494949).withOpacity(0.6),
                    ),
                  ),
                  Container(
                    width: 11,
                    height: 11,
                    margin: EdgeInsets.only(left: 10, top: 280),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff494949).withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              Container(
                height: 60,
                width: 60,
                margin: EdgeInsets.only(left: 190, top: 40),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff29C16E),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 10,
                          offset: Offset(-1, 12))
                    ]),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          TaskTwoPageTwo(),
          TaskTwoPageThree(),
          TaskTwoPageFour(),
        ],
      ),
    );
  }
}

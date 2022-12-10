import 'package:flutter/material.dart';
import 'package:flutter_22_homework/TaskTwoPageFour.dart';
import 'package:flutter_22_homework/TaskTwoPageTwo.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskTwoPageThree extends StatefulWidget {
  const TaskTwoPageThree({Key? key}) : super(key: key);

  @override
  State<TaskTwoPageThree> createState() => _TaskTwoPageThreeState();
}

class _TaskTwoPageThreeState extends State<TaskTwoPageThree> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => TaskTwoPageFour(),
        ),
      );
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 80, top: 200),
            child: Image.asset("assets/Tech Life Remote Life.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: 152, top: 30),
            child: Text(
              "Send money to",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w900, fontSize: 24),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 127, top: 0),
            child: Text(
              "anyone at anytime.!",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w900, fontSize: 24),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 11,
                height: 11,
                margin: EdgeInsets.only(left: 195, top: 230),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff494949).withOpacity(0.6),
                ),
              ),
              Container(
                width: 11,
                height: 11,
                margin: EdgeInsets.only(left: 10, top: 230),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff494949).withOpacity(0.6),
                ),
              ),
              Container(
                width: 11,
                height: 11,
                margin: EdgeInsets.only(left: 10, top: 230),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff494949),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 35,
                width: 35,
                padding: EdgeInsets.only(left: 7),
                margin: EdgeInsets.only(left: 50, top: 50),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffE0E7E3),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 10,
                          offset: Offset(-1, 12)),
                    ]),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff29C16E),
                  size: 15,
                ),
              ),
              Container(
                height: 30,
                width: 82,
                margin: EdgeInsets.only(left: 220, top: 60),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Color(0xff29C16E),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 10,
                          offset: Offset(-1, 8)),
                    ]),
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 22),
                        child: Text(
                          "Next",
                          style: GoogleFonts.roboto(color: Colors.white),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 6),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

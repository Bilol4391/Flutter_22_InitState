import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskTwoPageFour extends StatefulWidget {
  const TaskTwoPageFour({Key? key}) : super(key: key);

  @override
  State<TaskTwoPageFour> createState() => _TaskTwoPageFourState();
}

class _TaskTwoPageFourState extends State<TaskTwoPageFour> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 80, top: 200),
            child: Image.asset("assets/Tech Life Life Management.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: 152, top: 30),
            child: Text(
              "Get discounts",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w900, fontSize: 24),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 110, top: 0),
            child: Text(
              "on every transactions",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w900, fontSize: 24),
            ),
          ),
          Container(
            height: 50,
            width: 439,
            margin: EdgeInsets.only(left: 40, right: 40, top: 300),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xff29C16E),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 10,
                      offset: Offset(-1, 10)),
                ]),
            child: Center(
              child: Text(
                "Get Started",
                style: GoogleFonts.roboto(letterSpacing: 1, color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}

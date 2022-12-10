import 'package:flutter/material.dart';
import 'package:flutter_22_homework/TaskTwoPageThree.dart';
import 'package:flutter_22_homework/TaskTwoPageTwo.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskTwoPageTwo extends StatefulWidget {
  const TaskTwoPageTwo({Key? key}) : super(key: key);

  @override
  State<TaskTwoPageTwo> createState() => _TaskTwoPageTwoState();
}

class _TaskTwoPageTwoState extends State<TaskTwoPageTwo> {
  @override
  // void initState() {
  //   Future.delayed(Duration(seconds: 5), () {
  //     Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TaskTwoPageTwo()));
  //     setState(() {});
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 80, top: 200),
            child: Image.asset("assets/iphone.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: 152, top: 30),
            child: Text(
              "Fast & Secure",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w900, fontSize: 24),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 147, top: 0),
            child: Text(
              "Payments",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w900, fontSize: 36),
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
                  color: Color(0xff494949),
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
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
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
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TaskTwoPageThree()));
                },
                child: Container(
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}

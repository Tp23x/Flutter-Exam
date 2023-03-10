import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class educationCompo extends StatelessWidget {
  const educationCompo(
      {@required this.txtColor,
      @required this.txtDesc,
      @required this.txtIcon});
  //สร้างตัวแปร
  final String? txtDesc;
  final Color? txtColor;
  final IconData? txtIcon;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: <Widget>[
        Container(
          height: 110,
          decoration: BoxDecoration(
              color: Color(0xfff1f1f1),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  topLeft: Radius.circular(12))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: 0.2,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.school_outlined, //changed
                      size: 25.0,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Walailak University', //changed
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(
                        'Bachelor of Enginerring (Computer Engineering)', //changed
                        style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Graduated with second-class honors.', //changed
                        style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 12.0,
                          color: Color(0xff747474),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: 110,
          decoration: BoxDecoration(
              color: Color(0xfff1f1f1),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  topLeft: Radius.circular(12))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: 0.2,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.school_outlined, //changed
                      size: 25.0,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Khunkalong School', //changed
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(
                        'High School in Science and mathematics program.', //changed
                        style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Text(
                        'GPAX: 3.74', //changed
                        style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 12.0,
                          color: Color(0xff747474),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

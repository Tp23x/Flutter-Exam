import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class hilghlightCompo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: <Widget>[
        Container(
          height: 140,
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  topLeft: Radius.circular(12))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SizedBox(
                //   height: 0.2,
                // ),
                Text(
                  "  Hi!,, Diligent software developer of experience in develop application web and QA (Tester). Eager to contribute to the development of technology system to create new solution. Skilled in developing plans, managing project and user documentation",
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

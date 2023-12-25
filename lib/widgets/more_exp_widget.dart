import 'package:flutter/material.dart';
import '../models/experience.dart';

class MoreExpWidget extends StatefulWidget {
  final Exp exp;
  const MoreExpWidget({super.key, required this.exp});

  @override
  State<MoreExpWidget> createState() => _MoreExpWidgetState();
}

class _MoreExpWidgetState extends State<MoreExpWidget> {
  final listValue = ["1","2","3"];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Description:",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              )),
          for(var desc in widget.exp.description) Text('- $desc'),
          Container(
              width: size.width,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const Text(
                    "Industry:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  for (var indus in widget.exp.industry) Text('$indus, '),
                ],
              )),

          Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Responsibilities:",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              )),
          for(var respond in widget.exp.responsibilities) Text('- $respond'),
          Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Technologies:",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              )),
          for(var tech in widget.exp.technologies) Text('- $tech'),
        ],
      ),
    );
  }
}

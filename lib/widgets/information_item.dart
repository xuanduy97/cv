import 'package:flutter/material.dart';

class InformationItem extends StatelessWidget {
  final String inforName;
  final String inforValue;
  InformationItem({super.key, required this.inforName, required this.inforValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5,),
        Center(
          child:Text(
            inforName,
            style: TextStyle(
                fontSize: 8
            ),
          ),
        ),
        SizedBox(height: 5,),
        Center(
          child:Text(
            inforValue,
            style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}

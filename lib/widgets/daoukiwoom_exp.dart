import 'package:flutter/material.dart';

class DaouInnoEXP extends StatelessWidget {
  const DaouInnoEXP({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Text(
                "DaouKiwoom Innovation Co., Ltd.",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Row(

              )
            ],
          ),
        )
    );
  }
}

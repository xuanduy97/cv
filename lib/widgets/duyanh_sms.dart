import 'package:flutter/material.dart';

class DuyAnh_SMS_EXP extends StatelessWidget {
  const DuyAnh_SMS_EXP({super.key});

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
                "Duy Anh System Management Solution",
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

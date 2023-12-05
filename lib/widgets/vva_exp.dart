import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VVA_EXP extends StatelessWidget {
  const VVA_EXP({super.key});

  @override
  Widget build(BuildContext context) {
    final String _companyName = "Vision Automation Technology Corporation";
    final String _jobTitle = "Hardware Engineer";
    final List<String> _description = [""];
    final List<String> _industry = ["Health"];
    final List<String> _responsibilities = [""];
    final List<String> _technologies = [""];
    final DateTime _begintDate = DateTime(1997,1,1);
    final DateTime _endDate = DateTime(2023,12,05);
    final DateFormat formatter = DateFormat('yyyy-MMM');
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  _companyName,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    _jobTitle,
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white
                    ),
                  ),
                  Text(
                    formatter.format(_begintDate)
                        + ' ~ '
                        + (_endDate.year == DateTime.now().year && _endDate.month == DateTime.now().month ? "Present" : formatter.format(_endDate)),
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}

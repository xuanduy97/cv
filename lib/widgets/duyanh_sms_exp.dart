import 'package:flutter/material.dart';
import '../models/experience.dart';
import 'experience_widget.dart';

class DuyAnh_SMS_EXP extends StatelessWidget {
  const DuyAnh_SMS_EXP({super.key});

  @override
  Widget build(BuildContext context) {
    Exp exp = Exp(
        companyName: "Duy Anh System Management Solution",
        jobTitle: "Mobile Developer",
        beginDate: DateTime(2020, 8),
        endDate: DateTime(2022,4)
    );
    return ExperienceWidget(exp: exp);
  }
}

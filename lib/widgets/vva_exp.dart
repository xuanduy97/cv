import '../models/experience.dart';
import '/widgets/experience_widget.dart';
import 'package:flutter/material.dart';

class VvaExp extends StatelessWidget {
  const VvaExp({super.key});

  @override
  Widget build(BuildContext context) {
    Exp exp = Exp(
        companyName: "Vision Automation Technology Corporation",
        jobTitle: "Hardware Engineer",
        beginDate: DateTime(2019, 6),
        endDate: DateTime(2020,8)
    );
    return ExperienceWidget(exp: exp);
  }
}

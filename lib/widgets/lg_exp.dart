import 'package:flutter/material.dart';
import '../models/experience.dart';
import 'experience_widget.dart';

class LG_EXP extends StatelessWidget {
  const LG_EXP({super.key});

  @override
  Widget build(BuildContext context) {
    Exp exp = Exp(
        companyName: "LG Electronics Development Vietnam (LGEDV)",
        jobTitle: "Research Engineer",
        beginDate: DateTime(2020, 8),
        endDate: DateTime(2022,4)
    );
    return ExperienceWidget(exp: exp);
  }
}

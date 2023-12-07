import 'package:flutter/material.dart';
import '../models/experience.dart';
import 'experience_widget.dart';

class DaouInnoEXP extends StatelessWidget {
  const DaouInnoEXP({super.key});

  @override
  Widget build(BuildContext context) {
    Exp exp = Exp(
        companyName: "DaouKiwoom Innovation Co., Ltd.",
        jobTitle: "MTS",
        isCurrent: true,
        beginDate: DateTime(2023, 8)
    );
    return ExperienceWidget(exp: exp);
  }
}

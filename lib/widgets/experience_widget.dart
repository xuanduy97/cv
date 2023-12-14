import 'package:flutter/material.dart';
import '../models/experience.dart';

class ExperienceWidget extends StatefulWidget {

  final Exp exp;
  bool isShowFull = true;
  ExperienceWidget({super.key,required this.exp});

  @override
  State<ExperienceWidget> createState() => _ExperienceWidgetState(exp);
}

class _ExperienceWidgetState extends State<ExperienceWidget> {
  bool isShowFull = false;
  Exp exp;
  _ExperienceWidgetState(this.exp);
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                            image: AssetImage('assets/images/company_name.png'),
                          )
                      ),
                    ),
                  ),
                  Text(
                    exp.companyName,
                    style:const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                            image: AssetImage('assets/images/job_name.png'),
                          )
                      ),
                    ),
                  ),
                  Text(
                    exp.jobTitle,
                    style:const TextStyle(
                        fontSize: 13,
                        color: Colors.white
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                            image: AssetImage('assets/images/calendar.png'),
                          )
                      ),
                    ),
                  ),
                  Text(
                    '${exp.getBeginDate()} ~ ${exp.getEndDate()}',
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Visibility(
                      visible: !isShowFull,
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            isShowFull = true;
                          });
                        },
                        icon: Image.asset('assets/images/avatar.png'),
                      ),
                    ),
                  ),

                ],
              ),
              Visibility(
                visible: isShowFull,
                child: const Text("More Information"),
              ),
            ],
          ),
        )
    );
  }
}

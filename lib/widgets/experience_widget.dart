import 'package:cv/widgets/more_exp_widget.dart';
import 'package:flutter/material.dart';
import '../models/experience.dart';

class ExperienceWidget extends StatefulWidget {

  final Exp exp;
  const ExperienceWidget({super.key,required this.exp});

  @override
  State<ExperienceWidget> createState() => _ExperienceWidgetState();
}

class _ExperienceWidgetState extends State<ExperienceWidget> {
  bool isShowFull = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                  SizedBox(
                    width: size.width - 45,
                    child: Text(
                      widget.exp.companyName,
                      style:const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
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
                    widget.exp.jobTitle,
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
                    '${widget.exp.getBeginDate()} ~ ${widget.exp.getEndDate()}',
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),
                  )
                ],
              ),
              Visibility(
                visible: isShowFull,
                child: MoreExpWidget(exp: widget.exp,),
              ),
              TextButton(
                  onPressed:() {
                    setState(() {
                      isShowFull = !isShowFull;
                    });
                  },
                  child: Text(
                      isShowFull? "Show less" : "Show more"
                  )
              )
            ],
          ),
        )
    );
  }
}

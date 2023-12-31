import 'package:flutter/material.dart';
import 'information_item.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final listInfo = ['Gender','Date of birth', 'Email', 'Address'];
    final listValue = ['Male','Aug 20, 1997', 'maixuanduy97@gmail.com', 'Hồ Chí Minh City, Việt Nam'];
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              const Text(
                "Information",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(150)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ListView(
                        children: [
                          Container(
                            width: 140,
                            height: 140,
                            decoration: const BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/icon_no_image.png'),
                                )
                            ),
                          ),
                          for(int i = 0; i < listInfo.length && i < listValue.length ; ++i )
                            InformationItem(inforName : listInfo[i] , inforValue: listValue[i])
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Container(
                      width: size.width - 175,
                      child: Column(
                        children: [
                          const Text(
                            'MAI XUÂN DUY',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            'Mobile Developer',
                            style: TextStyle(
                                fontSize: 12
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            'Ho Chi Minh City University of Technology',
                            style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            'Major: Electronics - Telecommunications Engineering',
                            style: TextStyle(
                                fontSize: 7
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            'Aug 2015 - Nov 2021',
                            style: TextStyle(
                                fontSize: 7
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            'GPA: 6.52/10',
                            style: TextStyle(
                                fontSize: 7
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                                child: Text(
                                  'Objective',
                                  style: TextStyle(
                                      fontSize: 12
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child:const Padding(
                              padding:  EdgeInsets.all(5),
                              child: Text(
                                'Talented individual with in-depth knowledge of designing and development tools and coding languages.'
                                    'Desirous of the role of Software Developer to apply 3 years of work experience in innovating'
                                    'software designs, testing and coding as well as debugging programs and troubleshooting and'
                                    ' augmenting the company’s reputation.',
                                style: TextStyle(
                                    fontSize: 8
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'Skill: Teamwork, Communication, Task and time management.'
                                '\nLanguage: C, C++,C#, Java, JavaScipt, Dart.'
                                '\nFramework: OData, Google Map API, xzing embedded API, DevExpress API, React Native, Flutter.'
                                '\nDatabase: Microsoft SQL Server, SQLite.'
                                '\nSoftware: Android Studio, Visual Code, Visual Studio Code, Microsoft Office.'
                                '\nMore: Git-flow, Jira, Agile Scrum Process, ASPICE standard, Knowledge about Micro- Processor.',
                                style: TextStyle(
                                    fontSize: 8
                                ),
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
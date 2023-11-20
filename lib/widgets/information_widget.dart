import 'package:flutter/material.dart';

Widget informationWidget(){
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
            Text(
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
                    child: Column(
                      children: [
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/icon_no_image.png'),
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        Center(
                          child:Text(
                            "Gender",
                            style: TextStyle(
                                fontSize: 8
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Center(
                          child:Text(
                            "Male",
                            style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Center(
                          child:Text(
                            "Date of birth",
                            style: TextStyle(
                                fontSize: 8
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Center(
                          child:Text(
                            "Aug 20, 1997",
                            style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Center(
                          child:Text(
                            "Email",
                            style: TextStyle(
                                fontSize: 8
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Center(
                          child:Text(
                            "maixuanduy97@gmail.com",
                            style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Center(
                          child:Text(
                            "Address",
                            style: TextStyle(
                                fontSize: 8
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Center(
                          child:Text(
                            "Hồ Chí Minh City, Việt Nam",
                            style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5,top: 5, bottom: 5),
                  child: Column(
                    children: [
                      Text(
                        'MAI XUÂN DUY',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Mobile Developer',
                        style: TextStyle(
                            fontSize: 12
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Ho Chi Minh City University of Technology',
                        style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Major: Electronics - Telecommunications Engineering',
                        style: TextStyle(
                            fontSize: 8
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Aug 2015 - Nov 2021',
                        style: TextStyle(
                            fontSize: 7
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'GPA: 6.52/10',
                        style: TextStyle(
                            fontSize: 7
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                          child: Text(
                            'Objective',
                            style: TextStyle(
                                fontSize: 12
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Talented individual with in-depth knowledge of designing and'
                                '\ndevelopment tools and coding languages. Desirous of the role of'
                                '\nSoftware Developer to apply 3 years of work experience in innovating'
                                '\nsoftware designs, testing and coding as well as debugging programs'
                                '\nand troubleshooting and augmenting the company’s reputation.',
                            style: TextStyle(
                                fontSize: 6
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Talented individual with in-depth knowledge of designing and'
                                '\ndevelopment tools and coding languages. Desirous of the role of'
                                '\nSoftware Developer to apply 3 years of work experience in innovating'
                                '\nsoftware designs, testing and coding as well as debugging programs'
                                '\nand troubleshooting and augmenting the company’s reputation.',
                            style: TextStyle(
                                fontSize: 6
                            ),
                          ),
                        ),
                      )
                    ],
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
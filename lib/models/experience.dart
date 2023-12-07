import 'package:intl/intl.dart';

class Exp{
  String companyName;
  String jobTitle;
  final List<String> _description = [];
  final List<String> _industry = [];
  final List<String> _responsibilities = [];
  final List<String> _technologies = [];
  DateTime? beginDate;
  DateTime? endDate;
  final DateFormat _formatter = DateFormat('yyyy-MMM');
  bool isCurrent;

  Exp({
    required this.companyName,
    required this.jobTitle,
    this.isCurrent = false,
    this.beginDate,
    this.endDate
  });


  String getBeginDate() => _formatter.format(beginDate!);

  String getEndDate() => isCurrent? "Present" : _formatter.format(endDate!);

  List<String> get technologies => _technologies;

  List<String> get responsibilities => _responsibilities;

  List<String> get industry => _industry;

  List<String> get description => _description;

  void addTech(String value){
    _technologies.add(value);
  }

  void addResponse(String value){
    _responsibilities.add(value);
  }

  void addIndus(String value){
    _industry.add(value);
  }

  void addDes(String value){
    _description.add(value);
  }
}
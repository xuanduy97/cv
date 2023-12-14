import 'package:flutter/material.dart';
import '../widgets/information_widget.dart';
import '../widgets/daoukiwoom_exp.dart';
import '../widgets/lg_exp.dart';
import '../widgets/duyanh_sms_exp.dart';
import '../widgets/vva_exp.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final keyInfo = GlobalKey();
    final keyExp = GlobalKey();
    final keySchool = GlobalKey();
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const  Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Image(
                      image: AssetImage('assets/images/information.png'),
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Text('Information')
                ],
              ),
              onTap: () {
                _scrollToItem(keyInfo);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const  Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Image(
                      image: AssetImage('assets/images/experience.png'),
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Text('Experience')
                ],
              ),
              onTap: () {
                _scrollToItem(keyExp);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const  Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Image(
                      image: AssetImage('assets/images/school.png'),
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Text('School')
                ],
              ),
              onTap: () {
                _scrollToItem(keySchool);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: _buildAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                key: keyInfo,
                child: const InformationWidget()
            ),
            Container(
              key: keyExp,
                child: const Column(
                  children: [
                    DaouInnoEXP(),
                    LG_EXP(),
                    DuyAnh_SMS_EXP(),
                    VvaExp(),
                  ],
                )
            ),
            Container(
                key: keySchool,
                child: Container(
                  height: 100,
                )
            ),
          ],
        ),
      ),
    );
  }

  Future _scrollToItem(GlobalKey key) async{
    final context = key.currentContext!;
    await Scrollable.ensureVisible(context);
  }

  AppBar _buildAppBar() {
    return AppBar(
      // backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/avatar.png'),
            ),
          )
        ],
      ),
    );
  }
}



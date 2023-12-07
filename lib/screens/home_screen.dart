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
              title: const Text('Information'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Experience'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('School'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: _buildAppBar(),
      backgroundColor: Colors.white,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            InformationWidget(),
            DaouInnoEXP(),
            LG_EXP(),
            DuyAnh_SMS_EXP(),
            VvaExp(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      // backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          // Icon(
          //   Icons.menu,
          //   // color: tdBlack,
          //   size: 30,
          // ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/avatar.png'
              ),
            ),
          )
        ],
      ),
    );
  }
}



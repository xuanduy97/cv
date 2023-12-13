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
    final _keyInfo = GlobalKey();
    final _keyExp = GlobalKey();
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
                _scrollToItem(_keyInfo);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Experience'),
              onTap: () {
                _scrollToItem(_keyExp);
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                key: _keyInfo,
                child: InformationWidget()),
            Container(
              key: _keyExp,
                child: const Column(
                  children: [
                    DaouInnoEXP(),
                    LG_EXP(),
                    DuyAnh_SMS_EXP(),
                    VvaExp(),
                  ],
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



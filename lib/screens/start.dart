import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utilities/style.dart';

import './puberty.dart';
import './prod.dart';
import './mens.dart';
import './health.dart';
import '../widgets/item_button.dart';

class Start extends StatelessWidget {
  static const routeName = '/start';

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(
            'Journey',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: black_color,
          actions: [
            IconButton(
                icon: Icon(Icons.info),
                onPressed: () {
                  _specialThanks(context);
                }),
            IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                  exit(0);
                })
          ],
        ),
        backgroundColor: black_color,
        body: SingleChildScrollView(
          child: Container(
            width: _width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                SvgPicture.asset(
                  'assets/images/yoga.svg',
                  width: 180,
                ),
                SizedBox(height: 20),
                ItemButton(
                  left: 60,
                  right: 60,
                  btnColor: Color.fromRGBO(255, 224, 115, 1),
                  btnTitle: 'Puberty',
                  routeName: Puberty.routeName,
                ),
                SizedBox(height: 10),
                ItemButton(
                  left: 40,
                  right: 40,
                  btnColor: Color.fromRGBO(146, 255, 95, 1),
                  btnTitle: 'Menstruation',
                  routeName: Mens.routeName,
                ),
                SizedBox(height: 10),
                ItemButton(
                  left: 45,
                  right: 45,
                  btnColor: Color.fromRGBO(255, 80, 80, 1),
                  btnTitle: 'Health issue',
                  routeName: Health.routeName,
                ),
                SizedBox(height: 10),
                ItemButton(
                  left: 55,
                  right: 55,
                  btnColor: Color.fromRGBO(75, 190, 255, 1),
                  btnTitle: 'Products',
                  routeName: Prod.routeName,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'You are great.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _specialThanks(BuildContext context) async {
  return showAboutDialog(
      context: context,
      applicationName: 'We Adore You',
      applicationLegalese: '',
      applicationVersion: '1.0v',
      children: [
        ListBody(
          children: [
            Text('msdmanuals.com'),
            Text('kidshealth.org'),
            Text('online.regiscollege.edu'),
          ],
        ),
      ]);
}

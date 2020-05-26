import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:flutter/material.dart' as Material;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class HireMeTab extends StatelessWidget {

  Strings _strings = Strings();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    print(_width);
    return Material.Scaffold(
      backgroundColor: CupertinoColors.systemGrey6,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  color: CupertinoColors.white,
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                  child: Material.CircleAvatar(
                    radius: 150,
                    backgroundColor: Material.Colors.transparent,
                    backgroundImage: AssetImage('img/profile.jpg',),
                  ),
                ),
                Material.Divider(
                  color: CupertinoColors.systemGrey3,
                  height: 1,
                  thickness: 1,
                ),
                Container(
                  color: CupertinoColors.white,
                  child: Material.ListTile(
                    leading: Icon(
                      MdiIcons.whatsapp,
                      color: Color.fromARGB(255, 37, 211, 102),
                    ),
                    title: Text(_strings.contacts['phoneLabel']),
                    subtitle: Text(_strings.contacts['phone']),
                    onTap: (){
                      _tryLaunch('tel:${_strings.contacts['phone']}');
                    },
                  ),
                ),
                Material.Divider(
                  color: CupertinoColors.systemGrey3,
                  height: 1,
                  thickness: 1,
                ),
                Container(
                  color: CupertinoColors.white,
                  child: Material.ListTile(
                    leading: Icon(
                      MdiIcons.skype,
                      color: Color.fromARGB(255, 0, 175, 240),
                    ),
                    title: Text('Skype'),
                    subtitle: Text(_strings.contacts['skype']),
                    onTap: (){
                      _tryLaunch('skype:${_strings.contacts['skype']}?add');
                    },
                  ),
                ),
                Material.Divider(
                  color: CupertinoColors.systemGrey3,
                  height: 1,
                  thickness: 1,
                ),
                Container(
                  color: CupertinoColors.white,
                  child: Material.ListTile(
                    leading: Container(
                      child: Icon(
                        CupertinoIcons.mail_solid,
                        color: Color.fromARGB(255, 239, 204, 86),
                      ),
                    ),
                    title: Text('E-mail'),
                    subtitle: Text(_strings.contacts['mail']),
                    onTap: (){
                      _tryLaunch('mailto:${_strings.contacts['mail']}');
                    },
                  ),
                ),
                Material.Divider(
                  color: CupertinoColors.systemGrey3,
                  height: 1,
                  thickness: 1,
                ),
                Container(
                  color: CupertinoColors.white,
                  child: Material.ListTile(
                    leading: Icon(
                      MdiIcons.linkedin,
                      color: Color.fromARGB(255, 14, 118, 168),
                    ),
                    title: Text('LinkedIn'),
                    subtitle: Text(_strings.contacts['linkedin']),
                    onTap: (){
                      _tryLaunch(_strings.contacts['linkedin']);
                    },
                  ),
                ),
                Material.Divider(
                  color: CupertinoColors.systemGrey3,
                  height: 1,
                  thickness: 1,
                ),
                Container(
                  color: CupertinoColors.white,
                  child: Material.ListTile(
                    leading: Icon(
                      MdiIcons.github,
                      color: Color.fromARGB(255, 36, 41, 46),
                    ),
                    title: Text('Github'),
                    subtitle: Text(_strings.contacts['github']),
                    onTap: (){
                      _tryLaunch(_strings.contacts['github']);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _tryLaunch(String url) async {
    if(await canLaunch(url))
      await launch(url);
    else
      print('Could not launch $url');
  }
}

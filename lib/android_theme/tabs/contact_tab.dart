import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactTab extends StatelessWidget {

  Strings _strings = Strings();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              Container(
                constraints: BoxConstraints.tightFor(
                  width: _width/2
                ),
                child: CircleAvatar(
                  minRadius: _width/3,
                  maxRadius: _width/3,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('img/profile.jpg'),
                ),
              ),
              ListTile(
                leading: Icon(MdiIcons.whatsapp),
                title: Text(_strings.contacts['phoneLabel']),
                subtitle: Text(_strings.contacts['phone']),
                onTap: (){
                  _tryLaunch('tel:${_strings.contacts['phone']}');
                },
              ),
              ListTile(
                leading: Icon(MdiIcons.skype),
                title: Text('Skype'),
                subtitle: Text(_strings.contacts['skype']),
                onTap: (){
                  _tryLaunch('skype:${_strings.contacts['skype']}?add');
                },
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text('E-mail'),
                subtitle: Text(_strings.contacts['mail']),
                onTap: (){
                  _tryLaunch('mailto:${_strings.contacts['mail']}');
                },
              ),
              ListTile(
                leading: Icon(MdiIcons.linkedin),
                title: Text('LinkedIn'),
                subtitle: Text(_strings.contacts['linkedin']),
                onTap: (){
                  _tryLaunch(_strings.contacts['linkedin']);
                },
              ),
              ListTile(
                leading: Icon(MdiIcons.github),
                title: Text('Github'),
                subtitle: Text(_strings.contacts['github']),
                onTap: (){
                  _tryLaunch(_strings.contacts['github']);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _tryLaunch(String url) async {
    if(await canLaunch(url))
      await launch(url);
    else
      print('Could not launch $url');
  }
}

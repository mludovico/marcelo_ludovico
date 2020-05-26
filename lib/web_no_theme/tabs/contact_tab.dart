import 'package:flutter/material.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactTab extends StatelessWidget {

  Strings _strings = Strings();

  @override
  Widget build(BuildContext context) {
    final _narrow = MediaQuery.of(context).size.width < 900;
    return Container(
      padding: EdgeInsets.all(50),
      child: _narrow ?
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _getChildren(),
      )
      : Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _getChildren()
      ),
    );
  }

  List<Widget> _getChildren(){
    return [
      Container(
        width: 300,
        child: CircleAvatar(
          radius: 150,
          backgroundImage: AssetImage('img/profile.jpg'),
        ),
      ),
      Container(
        width: 500,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              elevation: 2,
              color: Colors.white,
              child: ListTile(
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
            Card(
              elevation: 2,
              color: Colors.white,
              child: ListTile(
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
            Card(
              elevation: 2,
              color: Colors.white,
              child: ListTile(
                leading: Container(
                  child: Icon(
                    MdiIcons.mail,
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
            Card(
              elevation: 2,
              color: Colors.white,
              child: ListTile(
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
            Card(
              elevation: 2,
              color: Colors.white,
              child: ListTile(
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
      )
    ];
  }

  void _tryLaunch(String url) async {
    if(await canLaunch(url))
      await launch(url);
    else
      print('Could not launch $url');
  }

}

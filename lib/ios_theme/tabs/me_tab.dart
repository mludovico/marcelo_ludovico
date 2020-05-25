import 'package:flutter/cupertino.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:marceloludovico/widgets/info_row.dart';
import 'package:flutter/material.dart' as Material;

class AboutMe extends StatelessWidget {

  Strings _strings = Strings();

  TextStyle _leadStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15,
    color: CupertinoColors.black,
    decoration: TextDecoration.none
  );
  TextStyle _trailingStyle = TextStyle(
    color: CupertinoColors.systemGrey4,
    fontSize: 15,
    decoration: TextDecoration.none
  );

  @override
  Widget build(BuildContext context) {
    return Material.Scaffold(
      body: Container(
        color: CupertinoColors.systemGrey6,
        child: ListView(
          children: [
            Container(
              color: CupertinoColors.white,
              child: Material.ExpansionTile(
                backgroundColor: CupertinoColors.white,
                initiallyExpanded: true,
                title: Text(
                  _strings.aboutPersonal,
                ),
                children: [
                  infoRow(
                    label: _strings.aboutPersonalNameLabel,
                    value: _strings.aboutPersonalNameValue,
                  ),
                  infoRow(
                    label: _strings.aboutPersonalAgeLabel,
                    value: _strings.aboutPersonalAgeValue,
                  ),
                  infoRow(
                    label: _strings.aboutPersonalMissionLabel,
                    value: _strings.aboutPersonalMissionValue,
                  ),
                ],
              ),
            ),
            Material.Divider(
              color: CupertinoColors.systemGrey3,
              height: 1,
              thickness: 1,
            ),
            Container(
              color: CupertinoColors.white,
              child: Material.ExpansionTile(
                backgroundColor: CupertinoColors.white,
                title: Text(_strings.aboutLocation,),
                children: [
                  infoRow(
                    label: _strings.aboutLocationLabel,
                    value: _strings.aboutLocationValue,
                  ),
                ],
              ),
            ),
            Material.Divider(
              color: CupertinoColors.systemGrey3,
              height: 1,
              thickness: 1,
            ),
            Container(
              color: CupertinoColors.white,
              child: Material.ExpansionTile(
                backgroundColor: CupertinoColors.white,
                title: Text(_strings.aboutSkills,),
                children: _strings.aboutSkillsValues.map<Widget>((skill){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          skill,
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

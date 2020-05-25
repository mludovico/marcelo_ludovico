import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:marceloludovico/widgets/info_row.dart';

class AboutMe extends StatelessWidget {

  Strings _strings = Strings();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      children: [
        ExpansionTile(
          initiallyExpanded: true,
          title: Text(_strings.aboutPersonal),
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
              value: _strings.aboutPersonalMissionValue
            ),
          ],
        ),
        ExpansionTile(
          title: Text(_strings.aboutLocation),
          children: [
            infoRow(
              label: _strings.aboutLocationLabel,
              value: _strings.aboutLocationValue,
            ),
          ],
        ),
        ExpansionTile(
          title: Text(_strings.aboutSkills),
          children: _strings.aboutSkillsValues.map((skill){
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  Text(
                    skill,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),
                  ),
                ],
              ),
            );
          }).toList()
        ),
      ],
    );
  }
}

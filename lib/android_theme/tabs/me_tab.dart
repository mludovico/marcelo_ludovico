import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:marceloludovico/internationalization/strings.dart';

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
            _infoRow(
              label: _strings.aboutPersonalNameLabel,
              value: _strings.aboutPersonalNameValue,
            ),

            _infoRow(
              label: _strings.aboutPersonalAgeLabel,
              value: _strings.aboutPersonalAgeValue,
            ),
            _infoRow(
              label: _strings.aboutPersonalMissionLabel,
              value: _strings.aboutPersonalMissionValue
            ),
          ],
        ),
        ExpansionTile(
          title: Text(_strings.aboutLocation),
          children: [
            _infoRow(
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

  Widget _infoRow({String label, String value}){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 8),
            child: Text(
              '${label}:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              softWrap: true,
              style: TextStyle(
                  fontSize: 17
              ),
            ),
          ),
        ],
      ),
    );
  }
}

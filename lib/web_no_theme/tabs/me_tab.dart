import 'package:flutter/material.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:marceloludovico/widgets/card_title.dart';
import 'package:marceloludovico/widgets/info_row.dart';

class AboutMe extends StatelessWidget {

  Strings _strings = Strings();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        children: [
          Card(
            elevation: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                cardTitle(
                  title: _strings.aboutPersonal
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: infoRow(
                    label: _strings.aboutPersonalNameLabel,
                    value: _strings.aboutPersonalNameValue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: infoRow(
                    label: _strings.aboutPersonalAgeLabel,
                    value: _strings.aboutPersonalAgeValue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: infoRow(
                    label: _strings.aboutPersonalMissionLabel,
                    value: _strings.aboutPersonalMissionValue,
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 2,
            child: Column(
              children: [
                cardTitle(
                  title: _strings.aboutLocation
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: infoRow(
                    label: _strings.aboutLocationLabel,
                    value: _strings.aboutLocationValue,
                  ),
                )
              ],
            ),
          ),
          Card(
            elevation: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                cardTitle(
                  title: _strings.aboutSkills
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _strings.aboutSkillsValues.map<Widget>((skill){
                    return Padding(
                      padding: const EdgeInsets.only(left: 38.0, bottom: 8),
                      child: Text(
                        skill,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    );
                  }).toList()
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

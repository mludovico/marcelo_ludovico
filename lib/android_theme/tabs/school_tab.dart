import 'package:flutter/material.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:marceloludovico/widgets/info_row.dart';

class SchoolTab extends StatelessWidget {

  Strings _strings = Strings();

  @override
  Widget build(BuildContext context) {
    final _year = DateTime.now().year;
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      children: _strings.education.map<Widget>(
          (curso){
            return ExpansionTile(
              initiallyExpanded: int.parse(curso['gradYear']) > _year,
              title: Text(
                curso['gradTitle']
              ),
              children: [
                infoRow(
                  label: curso['courseLabel'],
                  value: curso['courseName']
                ),
                infoRow(
                  label: curso['institutionLabel'],
                  value: curso['institution']
                ),
                infoRow(
                  label: curso['yearLabel'],
                  value: curso['gradYear']
                ),
              ],
            );
          }
      ).toList(),
    );
  }
}

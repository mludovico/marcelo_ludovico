import 'package:flutter/cupertino.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:flutter/material.dart' as Material;
import 'package:marceloludovico/widgets/info_row.dart';

class EducationTab extends StatelessWidget {

  Strings _strings = Strings();

  @override
  Widget build(BuildContext context) {
    final _year = DateTime.now().year;
    return Material.Scaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      body: Container(
        color: CupertinoColors.systemGrey6,
        child: ListView(
          children: _strings.education.map<Widget>((curso){
            return Container(
              color: CupertinoColors.white,
              margin: EdgeInsets.only(bottom: 1,),
              child: Material.ExpansionTile(
                backgroundColor: CupertinoColors.white,
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
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

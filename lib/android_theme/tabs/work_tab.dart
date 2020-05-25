import 'package:flutter/material.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:marceloludovico/widgets/info_row.dart';

class WorkExperience extends StatelessWidget {

  Strings _strings = Strings();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      children: _strings.work.map<Widget>((work){
        return ExpansionTile(
          initiallyExpanded: int.tryParse(work['until']) == null,
          title: Text(work['workTitle']),
          children: [
            infoRow(
              label: work['companyLabel'],
              value: work['company'],
            ),
            infoRow(
              label: work['fromLabel'],
              value: work['from'],
            ),
            infoRow(
              label: work['untilLabel'],
              value: work['until'],
            ),
            infoRow(
              label: work['descriptionLabel'],
              value: work['description'],
            ),
          ],
        );
      }).toList()
    );
  }
}

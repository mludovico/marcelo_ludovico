import 'package:flutter/cupertino.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:flutter/material.dart' as Material;
import 'package:marceloludovico/widgets/info_row.dart';
class WorkTab extends StatelessWidget {

  Strings _strings = Strings();

  @override
  Widget build(BuildContext context) {
    return Material.Scaffold(
      backgroundColor: CupertinoColors.systemGrey6,
      body: ListView(
        children: _strings.work.map<Widget>((work){
          return Container(
            margin: EdgeInsets.only(bottom: 1),
            color: CupertinoColors.white,
            child: Material.ExpansionTile(
              backgroundColor: CupertinoColors.white,
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
            ),
          );
        }).toList()
      ),
    );
  }
}

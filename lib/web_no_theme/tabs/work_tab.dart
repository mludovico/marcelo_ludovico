import 'package:flutter/material.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:marceloludovico/widgets/card_title.dart';
import 'package:marceloludovico/widgets/info_row.dart';

class ExperienceTab extends StatelessWidget {

  Strings _strings = Strings();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
          children: _strings.work.map<Widget>((work){
            return Card(
              elevation: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  cardTitle(
                      title: work['workTitle']
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: infoRow(
                      label: work['companyLabel'],
                      value: work['company'],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: infoRow(
                      label: work['fromLabel'],
                      value: work['from'],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: infoRow(
                      label: work['untilLabel'],
                      value: work['until'],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: infoRow(
                      label: work['descriptionLabel'],
                      value: work['description'],
                    ),
                  ),
                ],
              ),
            );
          }).toList()
      ),
    );
  }

}

import 'package:flutter/material.dart';
import 'package:marceloludovico/internationalization/strings.dart';
import 'package:marceloludovico/widgets/card_title.dart';
import 'package:marceloludovico/widgets/info_row.dart';

class EducationTab extends StatelessWidget {

  Strings _strings = Strings();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        children: _strings.education.map<Widget>((grad){
          return Card(
            elevation: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                cardTitle(
                    title: grad['gradTitle']
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: infoRow(
                    label: grad['courseLabel'],
                    value: grad['courseName'],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: infoRow(
                    label: grad['institutionLabel'],
                    value: grad['institution'],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: infoRow(
                    label: grad['yearLabel'],
                    value: grad['gradYear'],
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

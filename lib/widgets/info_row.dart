import 'package:flutter/material.dart';

Widget infoRow({String label, String value}){
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

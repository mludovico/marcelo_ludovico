import 'package:flutter/material.dart';

Widget cardTitle({String title}){
  return Row(
    children: [
      IconButton(
        icon: Icon(Icons.arrow_drop_down),
      ),
      Text(
        title,
        style: TextStyle(
            fontSize: 25
        ),
      ),
    ],
  );
}


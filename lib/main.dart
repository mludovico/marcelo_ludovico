import 'package:flutter/material.dart';
import 'package:marceloludovico/android_theme/android_home.dart';
import 'package:marceloludovico/ios_theme/ios_home.dart';
import 'package:marceloludovico/web_no_theme/web_home.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.grey
          ),
          headline6: TextStyle(
            color: Colors.grey
          )
        )
      ),
      home: MarceloApp()
    )
  );
}

class MarceloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Container(
          width: 600,
          color: Colors.grey[50],
          child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    minRadius: 60,
                    maxRadius: 120,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('img/profile.jpg',),
                  ),
                  Divider(color: Colors.transparent,),
                  Text(
                      'PORTFOLIO',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 25
                      )
                  ),
                  Text(
                    'Marcelo Ludovico',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Divider(
                    color: Colors.grey[100],
                    thickness: 2,
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(MdiIcons.apple, color: Colors.grey,),
                        VerticalDivider(),
                        Text(
                          'iOS',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 20
                          ),
                        )
                      ],
                    ),
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_)=>IosHome())
                      );
                    },
                  ),
                  Divider(color: Colors.grey[100],),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.android, color: Colors.lightGreen,),
                        VerticalDivider(),
                        Text(
                          'Android',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 20
                          ),
                        )
                      ],
                    ),
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_)=>AndroidHome())
                      );
                    },
                  ),
                  Divider(color: Colors.grey[100],),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(MdiIcons.iframeOutline, color: Colors.lightBlue,),
                        VerticalDivider(),
                        Text(
                          'Web',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 20
                          ),
                        )
                      ],
                    ),
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_)=>WebHome())
                      );
                    },
                  ),
                  Divider(color: Colors.grey[100],),
                ],
              )
          ),
        ),
      ),
    );
  }
}

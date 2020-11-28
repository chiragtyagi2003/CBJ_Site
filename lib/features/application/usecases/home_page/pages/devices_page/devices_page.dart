import 'package:cybear_jinni_site/features/application/shared_widgets/bottom_navigation_menu.dart';
import 'package:cybear_jinni_site/features/application/shared_widgets/top_navigation_menu.dart';
import 'package:flutter/material.dart';



/// Devices the company can install for you and you can by online
class DevicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          stops: const <double>[0, 0, 0, 1],
          colors: <Color>[
            Theme
                .of(context)
                .primaryColor,
            Theme
                .of(context)
                .accentColor,
            Theme
                .of(context)
                .accentColor,
            Theme
                .of(context)
                .primaryColor
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 150,),
                    Container(
                      color: Colors.black12,
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              Expanded(
                                child: Column(
                                    children: <Widget>[
                                      Text('Our Devices',
                                          style: TextStyle(fontSize: 50, color:
                                          Theme
                                              .of(context)
                                              .textTheme
                                              .
                                          bodyText1
                                              .color),
                                          textAlign: TextAlign.center),
                                      const SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 100),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: const <Widget>[
                                            Text(
                                              'Images of devices',
                                              style: TextStyle(fontSize: 20,),
                                            ),
                                          ],
                                        ),

                                      ),
                                    ]
                                ),

                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    BottomNavigationMenu(),
                  ],
                ),
                const SizedBox(height: 50,),
              ],
            ),
            TopNavigationMenu(),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'navigator_util.dart';

/// @author longdw
/// 2020-03-19 20:54
/// www.longdw.com

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        children: <Widget>[

          Text(
            'page2',
            style: TextStyle(
                color: Colors.white
            ),
          ),

          FlatButton(
              onPressed: () {
//                NavigatorUtil.push(context, routeName: '/page3', page: Page3());
              },
              child: Text('The End')
          )

        ],
      ),
    );
  }

}
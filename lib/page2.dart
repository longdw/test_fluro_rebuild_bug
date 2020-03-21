import 'package:flutter/material.dart';
import 'package:testrouter/page3.dart';

import 'navigator_util.dart';

/// @author longdw
/// 2020-03-19 20:54
/// www.longdw.com

class Page2 extends StatelessWidget {

  TextEditingController controller = TextEditingController(text: 'hello!!!!!!!!');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Column(
          children: <Widget>[

            Text(
              'page2',
              style: TextStyle(
                  color: Colors.white
              ),
            ),

            TextField(
              controller: controller,
            ),

            FlatButton(
                onPressed: () {
//              NavigatorUtil.push(context, routeName: '/page3', page: Page3());
                },
                child: Text('Go Page3')
            )

          ],
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:testrouter/navigator_util.dart';
import 'package:testrouter/page2.dart';
import 'package:testrouter/routes.dart';

/// @author longdw
/// 2020-03-19 20:54
/// www.longdw.com

class Page1 extends StatelessWidget {

  TextEditingController controller = TextEditingController(text: 'hello');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Column(
          children: <Widget>[

            Text(
              'page1',
              style: TextStyle(
                  color: Colors.white
              ),
            ),

            TextField(
              controller: controller,
            ),

            FlatButton(
                onPressed: () {
                  NavigatorUtil.navigateTo(context, Routers.page2);
                },
                child: Text('Go Page2')
            )

          ],
        ),
      ),
    );
  }

}
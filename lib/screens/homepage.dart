import 'package:flutter/material.dart';

import '../componets/sidebar.dart';
import '../constraints.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxHeight: maxWidth),
          child: Row(
            children: [
              Expanded(flex: 2, child: bodyDrawer()),
              Expanded(
                  flex: 7,
                  child: Container(
                    color: Colors.blue,
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 30,
        width: MediaQuery.of(context).size.width,
        color: bgInfoTop,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Made with ❤️ using Flutter 3',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}

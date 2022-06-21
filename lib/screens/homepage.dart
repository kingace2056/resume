import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_website/widgets/sidebar.dart';

import '../providers/infoprovider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SideBar(),
            ],
          ),
        ),
      ),
    );
  }
}

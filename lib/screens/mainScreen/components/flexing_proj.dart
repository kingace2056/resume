import 'package:flutter/material.dart';

class FlexingProject extends StatelessWidget {
  const FlexingProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.5,
      // color: Colors.white,
    );
  }
}
